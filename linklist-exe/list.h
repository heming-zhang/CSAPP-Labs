#ifndef __LIST_HEADER__
#define __LIST_HEADER__

/* type definition of the list_t struct */
typedef struct {
    struct node_t *head;
    struct node_t *tail;
    int    size;
} list_t;

/* A function that checks whether the list invariant is maintained properly */ 
void check_list(list_t *list); 

/**
 * Input: an allocated but uninitialized list
 * This function initializes the list.
 **/ 
int list_init(list_t *list); 

/**
 * Input: a list
 * This function clears the list (including deallocating memory used).
 * Return value: 1 if any error is encountered, 0 otherwise.
 **/ 
int list_clear(list_t *list);

/**
 * Input: a list and a value to append to the list. 
 * This function appends the new value onto the list.
 * Return value: 1 if any error occur (such as if the list is not properly
 *    initialized); 0 otherwise. 
 **/ 
int list_prepend(list_t *list, int val);

/**
 * Input: a list and a value to append to the list. 
 * This function appends the new value onto the list.
 * Return value: 1 if any error occur (such as if the list is not properly
 *    initialized); 0 otherwise. 
 **/ 
int list_append(list_t *list, int val);

/**
 * Input: a list and a value to delete 
 * This function searches the list to find the given value.
 * If the value is found, delete the value.
 * Return value: 1 if any error occur (such as value not found or if the 
 *    list is not properly initialized); 0 otherwise. 
 **/ 
int list_delete(list_t *list, int val);

/**
 * Input: a list and a size_ptr (pointer to an int)
 * This function stores the size of the list in size_ptr. 
 * Return value: 1 if any error occur (if the list is not properly 
 *    initialized); 0 otherwise. 
 **/ 
int list_size(list_t *list, int *size_ptr);

/**
 * Input: a list
 * This function prints the content of the list 
 * Return value: 1 if any error occur (if the list is not properly 
 *    initialized); 0 otherwise. 
 **/ 
void list_print(list_t *list);

#endif  // __LIST_HEADER__
