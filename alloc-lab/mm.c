/*
 ******************************************************************************
 *                               mm.c                                         *
 *           64-bit struct-based implicit free list memory allocator          *
 *                      without coalesce functionality                        *
 *                 CSE 361: Introduction to Systems Software                  *
 *                                                                            *
 *  ************************************************************************* * 
 *                              Heming Zhang                                  *
 *                            WUSTL ID: 475982                                *
 *                      Email: hemingzhang@wustl.edu                          *
 *                           Date: 09, Dec, 2019                              *
 *                                                                            *
 *  ************************************************************************* *
 * (1) For malloc-lab, this file mimic dynamic memory allocation function     *
 * to implement the function malloc, free, calloc and realloc.                *
 * (2) In several steps from implicit lists coalesce to explicit lists, to    *
 * segregated lists, to lists with no footers for allocated blocks.           *
 *                                                                            *
 *                                                                            *
 *  ************************************************************************  *
 *  ** ADVICE FOR STUDENTS. **                                                *
 *  Step 0: Please read the writeup!                                          *
 *  Step 1: Write your heap checker. Write. Heap. checker.                    *
 *  Step 2: Place your contracts / debugging assert statements.               *
 *  Good luck, and have fun!                                                  *
 *                                                                            *
 ******************************************************************************
 */

/* Do not change the following! */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stddef.h>
#include <assert.h>
#include <stddef.h>

#include "mm.h"
#include "memlib.h"

#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* You can change anything from here onward */

/*
 * If DEBUG is defined, enable printing on dbg_printf and contracts.
 * Debugging macros, with names beginning "dbg_" are allowed.
 * You may not define any other macros having arguments.
 */
// #define DEBUG // uncomment this line to enable debugging

#ifdef DEBUG
/* When debugging is enabled, these form aliases to useful functions */
#define dbg_printf(...) printf(__VA_ARGS__)
#define dbg_requires(...) assert(__VA_ARGS__)
#define dbg_assert(...) assert(__VA_ARGS__)
#define dbg_ensures(...) assert(__VA_ARGS__)
#else
/* When debugging is disnabled, no code gets generated for these */
#define dbg_printf(...)
#define dbg_requires(...)
#define dbg_assert(...)
#define dbg_ensures(...)
#endif


/* Basic constants */
#define SEG_LEN 14  // bins number in segregated lists array
typedef uint64_t word_t;
typedef unsigned long u64;
static const size_t wsize = sizeof(word_t);   // word and header size (bytes)
static const size_t dsize = 2*sizeof(word_t);   // double word size (bytes)
static const size_t min_block_size = 4*sizeof(word_t); // Minimum block size
static const size_t chunksize = (1 << 12);  // requires (chunksize % 16 == 0)  

static const word_t alloc_mask = 0x1; // allocation mask for current block
static const word_t size_mask = ~(word_t)0xF; // size mask to fetch block size
static const word_t prev_alloc_mask = 0x2; // alloc mask for previous block


/* 
* Struct block_t defines the content of each blocks:
*       Allocated Blocks: header, payload
*       Free Blocks: header, prev pointers, next pointers
*/
typedef struct block{
    // Header contains size + allocation flag
    word_t header;
    // We don't know how big the payload will be.  Declaring it as an
    // array of size 0 allows computing its starting address using
    // pointer notation.
    union content{
        // Using union and 16 bytes alignment to store prev, next pointers 
        char payload[0];
        struct linking{
            struct block *prev;
            struct block *next;
        }linking_t;
    }content_t;
    // We can't declare the footer as part of the struct, since its starting
    // position is unknown
} block_t;

/*
* Strcut list_t contains pointers head and tail for each list
*/
typedef struct list{
    block_t *head;
    block_t *tail;
}list_t;


/* Global variables: 8 + 14 * 8 = 120 */
/* Pointer to first block */
static block_t *heap_start = NULL;
/* 
*  The bins range for seg_array:
*  [0:32, 1:48, 2:64, 3:80, 4:96, 5:112-128]
*  [6:144-512, 7:528-1024, 8:1040-2048, 9:2064-4096]
*  [10:4096-8192, 11:8208-16384, 12:16400-32768]
*/
static list_t* seg_array[SEG_LEN]; 


/* Function prototypes for internal helper routines */
static block_t *extend_heap(size_t size);
static void place(block_t *block, size_t asize);
static block_t *find_fit(size_t asize);
static block_t *coalesce(block_t *block);

static size_t max(size_t x, size_t y);
static size_t round_up(size_t size, size_t n);
static word_t pack(size_t size, bool alloc);

static size_t extract_size(word_t header);
static size_t get_size(block_t *block);
static size_t get_payload_size(block_t *block);

static bool extract_alloc(word_t header);
static bool get_alloc(block_t *block);

static void write_header(block_t *block, size_t size, bool alloc);
static void write_footer(block_t *block, size_t size, bool alloc);

static block_t *payload_to_header(void *bp);
static void *header_to_payload(block_t *block);
static word_t *header_to_footer(block_t *block);

static block_t *find_next(block_t *block);
static word_t *find_prev_footer(block_t *block);
static block_t *find_prev(block_t *block);

/* function added later */
bool mm_checkheap(int lineno);
static size_t malloc_round(size_t size);
static bool get_prev_alloc(block_t *block);
static word_t prev_pack(word_t header, bool pre_alloc);
static word_t prev_footer_pack(block_t *block, bool pre_alloc);
static void append(list_t *list, block_t *block);
static int list_init(list_t* list);
static void list_delete(list_t *list, block_t *block);
static int compute_index(size_t asize);
static int to_index(size_t size);

/*
 * mm_init: initialize the seg_array to contain explicit lists
 *      and extend heap to allocate chunksize(4K) space, then write
 *      prelogue and epilogue for heap space, finally return true
 *      if initialization is successful.
 */
bool mm_init(void) {
    // allocate space for seg_array with size of SEG_LEN*sizeof(list_t)
    void *segstart = mem_sbrk(SEG_LEN * sizeof(list_t));
    int i;
    for (i = 0; i < SEG_LEN; ++i){
        seg_array[i] = (list_t*)((u64)segstart + i * sizeof(list_t));
    }
    int flag; // flag show status for list initialization, i:fail, 0:success
    for(i = 0; i < SEG_LEN; i++){
        flag = list_init(seg_array[i]);
        if(flag){
            return false;
        }
    }

    // Create the initial empty heap 
    word_t *start = (word_t *)(mem_sbrk(2 * wsize));
    if (start == (void *)-1) {
        return false;
    }

    start[0] = pack(0, true); // Prologue header
    start[0] = prev_pack(start[0], true);   // Prologue header with prev_alloc

    start[1] = pack(0, true); // Epilogue header
    // Heap starts with first "block header", currently the epilogue footer
    // It will be overwritten by extend_heap
    heap_start = (block_t *) &(start[1]);
    // Extend the empty heap with a free block of chunksize bytes
    block_t *block = extend_heap(chunksize);
    if (block == NULL){
        return false;
    }
    return true;
}


/*
 * malloc: If heap is not be initialized, do mm_init(), 
 *      then use malloc_round() to round up size need to 
 *      allocate in heap blocks; afterwards, use find_fit()
 *      to check spare space in free block. Finally, we may 
 *      need to split block with place() and return pointer
 *      referencing to payload. 
 */
void *malloc(size_t size) {
    size_t asize;      // Adjusted block size
    size_t extendsize; // Amount to extend heap if no fit is found
    block_t *block;
    void *bp = NULL;

     // Initialize heap if it isn't initialized
    if (heap_start == NULL){
        mm_init();
    }

    // Ignore spurious request
    if (size == 0) {
        return bp;
    }

    // Adjust block size to include overhead and to meet alignment
    asize = malloc_round(size);

    // Search the free list for a fit
    block = find_fit(asize);

    // If no fit is found, request more memory, and then and place the block
    if (block == NULL){  
        extendsize = max(asize, chunksize);
        block = extend_heap(extendsize);
        if (block == NULL){
            // extend_heap returns an error
            return bp;
        }
    }

    // Use place function to judge whether the block need to be splitted
    place(block, asize);
    bp = header_to_payload(block);
    return bp;
} 


/*
 * free: Free the space pointing to address of bp
 */
void free(void *bp){
    // If pointer bp is NULL, means no need to free
    if (bp == NULL){
        return;
    }

    // Following actions involve freeing the block and write header, footer
    block_t *block = payload_to_header(bp);
    size_t size = get_size(block);

    // Judge block prev status, alloc with value of true
    bool prev_status = get_prev_alloc(block);
    if(prev_status){
        // prev_alloc is true, update prev_alloc bit to 1
        write_header(block, size, false);
        block->header = prev_pack(block->header, true);
        write_footer(block, size, false);
        word_t *footerp = (word_t *)((block->content_t.payload) 
                        + get_size(block) - dsize);
        *footerp = prev_footer_pack(block, true);
        
    }else if(!prev_status){
        write_header(block, size, false);
        write_footer(block, size, false);
    }

    // Add this free block to corresponding seg_array
    int aindex = to_index(size);
    append(seg_array[aindex], block);
    // May involve coalescing block with three conditions
    block = coalesce(block);

    // Need to modify next allocated block header bit
    block_t *next_block = find_next(block);
    if(next_block !=NULL){
        next_block->header = prev_pack(next_block->header, false);
    }
}



/*
 * realloc: copy the content in original block
 *          to new malloced block within size of "size",
 *          and return with newptr
 */
void *realloc(void *ptr, size_t size){
    block_t *block = payload_to_header(ptr);
    size_t copysize;
    void *newptr;

    // If size == 0, then free block and return NULL
    if (size == 0){
        free(ptr);
        return NULL;
    }

    // If ptr is NULL, then equivalent to malloc
    if (ptr == NULL){
        return malloc(size);
    }

    // Otherwise, proceed with reallocation
    newptr = malloc(size);
    // If malloc fails, the original block is left untouched
    if (newptr == NULL){
        return NULL;
    }

    // Copy the old data
    copysize = get_payload_size(block); // gets size of old payload
    if(size < copysize){
        copysize = size;
    }
    memcpy(newptr, ptr, copysize);

    // Free the old block
    free(ptr);

    return newptr;
}


/*
 * calloc: malloc space but initializing with zero for all bits
 */
void *calloc(size_t elements, size_t size){
    void *bp;
    size_t asize = elements * size;

    if (asize/elements != size){    
        // Multiplication overflowed
        return NULL;
    }
    
    bp = malloc(asize);
    if (bp == NULL){
        return NULL;
    }
    // Initialize all bits to 0
    memset(bp, 0, asize);

    return bp;
}

/******** The remaining content below are helper and debug routines ********/

/*
* compute_index: find suitable index for given asize
*               to corresponding seg_array
*/
static int compute_index(size_t asize){
    int index = to_index(asize);
    for (; index < SEG_LEN; index++){
        if(seg_array[index]->head!=NULL){
            return index;
        }
    }
    return -1;
}


/*
* to_index: calculate which index to seg_array
*/
static int to_index(size_t size){
    int index;
    if(size == 32){
        index = 0;
    }else if(size == 48){
        index = 1;
    }else if(size == 64){
        index = 2;
    }else if(size == 80){
        index = 3;
    }else if(size == 96){
        index = 4;
    }else if(size > 96 && size <= 128){
        index = 5;
    }else if(size > 128 && size <= 512){
        index = 6;
    }else if(size > 512 && size <= 1024){
        index = 7;
    }else if(size > 1024 && size <= 2048){
        index = 8;
    }else if(size > 2048 && size <= 4096){
        index = 9;
    }else if(size > 4096 && size <= 8192){
        index = 10;
    }else if(size > 8192 && size <= 16384){
        index = 11;
    }else if(size > 16384 && size <= 32768){
        index = 12;
    }else{
        index = 13;
    }
    return index;
}


/*
* list_init: initialization of list
*/
static int list_init(list_t *list) {
    if(!list) { return 1; }
    list->head = NULL;
    list->tail = NULL;
    return 0;
}


/* 
* append: append free block to the tail of the list
*/
static void append(list_t *list, block_t *block){
    if(list->tail==NULL){
        block->content_t.linking_t.next = NULL;
        block->content_t.linking_t.prev = NULL;
        list->head = block;
        list->tail = block;
    }else{
        // append function
        block->content_t.linking_t.next = NULL;
        block->content_t.linking_t.prev = list->tail;
        list->tail->content_t.linking_t.next = block;
        list->tail = block;
    }
}


/* 
 * list_delete: Searches the list to find the given block pointer.
 *              If the block is found, delete this block.
 */ 
static void list_delete(list_t *list, block_t *block) {
    if(list->head == block && list->tail == block){
        // if this block is the only block in this list
        list->head = NULL;
        list->tail = NULL;
    }else{
        if(block->content_t.linking_t.prev != NULL){
            block->content_t.linking_t.prev->content_t.linking_t.next
                = block->content_t.linking_t.next;
        }
        if(block->content_t.linking_t.next != NULL){
            block->content_t.linking_t.next->content_t.linking_t.prev
                = block->content_t.linking_t.prev;
        }
        if(list->head == block){
            list->head = block->content_t.linking_t.next;
        }
        if(list->tail == block){
            list->tail = block->content_t.linking_t.prev;
        }
    }
}


/*
 * extend_heap: to allocate space with size on heap,
 *          after initializing the whole big free block on 
 *          heap, need to write new epilogue header
 */
static block_t *extend_heap(size_t size) {
    void *bp;

    // Allocate an even number of words to maintain alignment
    size = round_up(size, dsize);
    if ((bp = mem_sbrk(size)) == (void *)-1){
        return NULL;
    }
    
    // Initialize free block header/footer 
    block_t *block = payload_to_header(bp);
    write_header(block, size, false);
    write_footer(block, size, false);

    // Create new epilogue header
    block_t *block_next = find_next(block);
    // Do not need to update this header with 0|0|1
    write_header(block_next, 0, true);

    // Coalesce in case the previous block was free
    int eindex = to_index(size);
    append(seg_array[eindex], block);
    block = coalesce(block);

    return block;
}


/*
 * coalesce: combine previous and next free blocks 
 *          and update block pointer, header and footer.
 */
static block_t *coalesce(block_t * block) {
    size_t prev_size;
    size_t next_size;
    size_t current_size = get_size(block);
    size_t coalesce_size;

    bool prev_status = get_prev_alloc(block);
    block_t *next_block = find_next(block);
    bool next_status = get_alloc(next_block);

    int pindex, cindex, nindex, coindex;

    // Three conditions to coalesce: 
    // both have not been allocated, prev free and next free
    if(prev_status && next_status){
        return block;

    }else if(!prev_status && !next_status){
        // If previous and next blocks are free
        word_t *prev_footer = find_prev_footer(block);
        prev_size = extract_size(*prev_footer);
        next_size = get_size(next_block);
        coalesce_size = current_size + prev_size + next_size;
        block_t *prev_block = find_prev(block);
        write_header(prev_block, coalesce_size, false);
        write_footer(prev_block, coalesce_size, false);
        // deletion
        pindex = to_index(prev_size);
        cindex = to_index(current_size);
        nindex = to_index(next_size);
        list_delete(seg_array[pindex], prev_block);
        list_delete(seg_array[cindex], block);
        list_delete(seg_array[nindex], next_block);
        // append
        coindex = to_index(coalesce_size);
        append(seg_array[coindex], prev_block);
        return prev_block;

    }else if(!prev_status && next_status){
        // If only previous block is free
        word_t *prev_footer = find_prev_footer(block);
        prev_size = extract_size(*prev_footer);
        coalesce_size = current_size + prev_size;
        block_t *prev_block = find_prev(block);
        write_header(prev_block, coalesce_size, false);
        write_footer(prev_block, coalesce_size, false);
        // deletion
        pindex = to_index(prev_size);
        cindex = to_index(current_size);
        list_delete(seg_array[pindex], prev_block);
        list_delete(seg_array[cindex], block);
        // append
        coindex = to_index(coalesce_size);
        append(seg_array[coindex], prev_block);
        return prev_block;

    }else{
        // If only next block is free
        next_size = get_size(next_block);
        coalesce_size = current_size + next_size;
        write_header(block, coalesce_size, false);
        write_footer(block, coalesce_size, false);
        // deletion
        cindex = to_index(current_size);
        nindex = to_index(next_size);
        list_delete(seg_array[nindex], next_block);
        list_delete(seg_array[cindex], block);
        // append
        coindex = to_index(coalesce_size);
        append(seg_array[coindex], block);
        return block;
    }
    return block;
}


/*
 * place: try to allocate block of asize at address of pointer block
 *      and judge if there are enough space to split this block 
 *      to two blocks (allocated, free)
 */
static void place(block_t *block, size_t asize){
    size_t csize = get_size(block);
    int dindex;
    int aindex;
    dindex = to_index(csize);

    if ((csize - asize) >= min_block_size){
        // If have enough space to split block
        block_t *block_next;
        write_header(block, asize, true);
        // write header with size | 11
        block->header = prev_pack(block->header, true);
        // write_footer(block, asize, true); //remove footer

        block_next = find_next(block);
        write_header(block_next, csize-asize, false);
        block->header = prev_pack(block->header, true);
        write_footer(block_next, csize-asize, false);
        word_t *footerp = (word_t *)((block->content_t.payload) 
                        + get_size(block) - dsize);
        *footerp = prev_footer_pack(block, true);

        aindex = to_index(csize-asize);
        append(seg_array[aindex], block_next);
        list_delete(seg_array[dindex], block);

    }else{
        write_header(block, csize, true);
        // write header with size| 11
        block->header = prev_pack(block->header, true); 

        // If prev block is allocated, 
        // then change prev_alloc bit in next block
        block_t *next_block = find_next(block);
        next_block->header = prev_pack(next_block->header, true);
        list_delete(seg_array[dindex], block);
    }
}

/*
 * find_fit: search through seg_array lists to find
 *      suitable blocks to allocate
 */
static block_t *find_fit(size_t asize){
    block_t *block;
    block_t *minblock = NULL;
    // block_t *findblock = NULL;
    u64 minsize = 0;
    int count = 0;
    int index = compute_index(asize);

    if(index == -1){
        return NULL; // seg lists not initialized yet

    }else{
        // if current index is not suitable, search next index
        for(; index < SEG_LEN; index ++){
            list_t *list = seg_array[index]; 
            block = list->head;
            while(block != NULL){
                if (asize <= get_size(block) && count < 40){
                    if (minblock == NULL){
                        minblock = block;
                        minsize = get_size(block);

                    }else if (get_size(block) < minsize){
                        minblock = block;
                        minsize = get_size(block);
                    }
                    count++;
                }
                if(minblock != NULL){
                    return minblock;
                }
                if(asize <= get_size(block)){
                    return block;
                }
                block = block->content_t.linking_t.next;
            }
        }
        return NULL; // not found
    }
}

/* 
 * mm_checkheap: And it will check the free blocks on the 
 *          segregated lists; can also check the heap 
 *          consistency for blocks;
 */
bool mm_checkheap(int line)  
{ 
    #ifdef DEBUG
    block_t *block;
    dbg_printf("Checkheap: %d\n", line);
    int index;
    dbg_printf("SEG ARRAY:\n");
    for(index = 0; index < SEG_LEN; index ++){
        dbg_printf("SEG_ARRAY[%d]:\n", index);
        // check current block address,size;  next block address, size
        for(block = seg_array[index]->head; 
            block!=NULL; block = block->content_t.linking_t.next){
            dbg_printf("%lx <- %lx [%d|%lx] -> %lx\n", 
                (u64)block->content_t.linking_t.prev,
                (u64)block, get_alloc(block), get_size(block), 
                (u64)block->content_t.linking_t.next);
            //  make an assertion on blocks in segregated lists are free
            dbg_assert(!get_alloc(block));
        }
    }
    dbg_printf("HEAP BLOCKS: \n");
    for (block = heap_start; get_size(block) > 0; block = find_next(block)){
        dbg_printf("%lx %lx [%d] | %lx %lx\n",
            (u64)block, get_size(block), get_alloc(block),
            (u64)find_next(block), get_size(find_next(block)));
    }
    #endif
    return true;
}

/*
 * max: returns x if x > y, and y otherwise.
 */
static size_t max(size_t x, size_t y){
    return (x > y) ? x : y;
}

/*
 * round_up: Rounds size up to next multiple of n
 */
static size_t round_up(size_t size, size_t n){
    return (n * ((size + (n-1)) / n));
}

/*
* malloc_round: Rounds size to suitable size to allocate
*/
static size_t malloc_round(size_t size){
    if(size >= 1 && size <= 24){
        return 2 * dsize;
    }else{
        return (dsize * ((((size - 1) - wsize) / dsize) + 2));
    }
}


/*
 * pack: returns a header reflecting a specified size and its 
 *      alloc status. If the block is allocated, the lowest bit
 *      is set to 1, and 0 otherwise.
 */
static word_t pack(size_t size, bool alloc){
    return alloc ? (size | alloc_mask) : size;
}


/*
* prev_pack: returns a header to reflect the size, prev_status, 
*            current_status. If pre_alloc is true, update 2nd 
*            last bit to 1, if not update 2nd last bit to 0.
*/
static word_t prev_pack(word_t header, bool pre_alloc){
    return pre_alloc ? (header | prev_alloc_mask) : (header & ~0x2);
}

/*
* prev_footer_pack: returns a footer to reflect the size, prev_status, 
*            current_status. If pre_alloc is true, update 2nd 
*            last bit to 1, if not update 2nd last bit to 0.
*/
static word_t prev_footer_pack(block_t *block, bool pre_alloc){
    word_t *footerp = (word_t *)((block->content_t.payload) 
                        + get_size(block) - dsize);
    word_t footer = *footerp;
    return pre_alloc ? (footer | prev_alloc_mask) : (footer & ~0x2);
}




/*
 * extract_size: returns the size of a given header value based 
 *               on the header specification above.
 */
static size_t extract_size(word_t word){
    return (word & size_mask);
}


/*
 * get_size: returns the size of a given block by clearing the lowest 4 bits
 *           (as the heap is 16-byte aligned).
 */
static size_t get_size(block_t *block){
    return extract_size(block->header);
}


/*
 * get_payload_size: returns the payload size of a given block, equal to
 *                   the entire block size minus the header and footer sizes.
 */
static word_t get_payload_size(block_t *block){
    size_t asize = get_size(block);
    return asize - wsize;
}


/*
 * extract_alloc: returns the allocation status of a given header value based
 *                on the header specification above.
 */
static bool extract_alloc(word_t word){
    return (bool)(word & alloc_mask);
}


/*
 * get_alloc: returns true when the block is allocated based on the
 *            block header's lowest bit, and false otherwise.
 */
static bool get_alloc(block_t *block){
    return extract_alloc(block->header);
}


/*
* get_prev_alloc: returns true when the prev block is allocated
*/
static bool get_prev_alloc(block_t *block){
    word_t header = block->header;
    return (bool)(header && prev_alloc_mask);
}


/*
 * write_header: given a block and its size and allocation status,
 *               writes an appropriate value to the block header.
 */
static void write_header(block_t *block, size_t size, bool alloc){
    block->header = pack(size, alloc);
}


/*
 * write_footer: given a block and its size and allocation status,
 *               writes an appropriate value to the block footer by first
 *               computing the position of the footer.
 */
static void write_footer(block_t *block, size_t size, bool alloc){
    word_t *footerp = (word_t *)((block->content_t.payload) 
                        + get_size(block) - dsize);
    *footerp = pack(size, alloc);
}


/*
 * find_next: returns the next consecutive block on the heap by adding the
 *            size of the block.
 */
static block_t *find_next(block_t *block){
    dbg_requires(block != NULL);
    block_t *block_next = (block_t *)(((char *)block) + get_size(block));
    return block_next;
}

/*
 * find_prev_footer: returns the footer of the previous block.
 */
static word_t *find_prev_footer(block_t *block){
    // Compute previous footer position as one word before the header
    return (&(block->header)) - 1;
}

/*
 * find_prev: returns the previous block position by checking the previous
 *            block's footer and calculating the start of the previous block
 *            based on its size.
 */
static block_t *find_prev(block_t *block){
    word_t *footerp = find_prev_footer(block);
    size_t size = extract_size(*footerp);
    return (block_t *)((char *)block - size);
}

/*
 * payload_to_header: given a payload pointer, returns a pointer to the
 *                    corresponding block.
 */
static block_t *payload_to_header(void *bp){
    // offsetof(block_t, payload)
    return (block_t *)(((char *)bp) - 8);
}

/*
 * header_to_payload: given a block pointer, returns a pointer to the
 *                    corresponding payload.
 */
static void *header_to_payload(block_t *block){
    return (void *)(block->content_t.payload);
}


/*
* header_to_footer: given a block pointer, returns a pointer to the
*                   current block's footer
*/
static word_t *header_to_footer(block_t *block){
    size_t asize = get_size(block);
    return (word_t *) (block->content_t.payload + asize -dsize);
}