/**
 * Source name     : test-list.c
 * Executable name : test-list 
 * Version         : 1.0
 * Created date    : 02/09/2017
 * Author          : I-Ting Angelina Lee and <Your name>
 * Description     : A program that allows the user to test the 
 *                   construction of a doubly-linked list 
 **/

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include "list.h"

#define TRUE 1
#define FALSE 0

#define BUFSIZE 128 

enum choice_t { CLEAR = 1, PREPEND, APPEND, DELETE, SIZE, PRINT, 
                QUIT, NUM_CHOICES };
char *choice_string[NUM_CHOICES] = 
      {"", "clear", "prepend", "append", "delete", "size", "print", "quit"};

/** 
 * Input: a string (an array of chars that is '\0' terminated).
 *
 * This function takes the string and converts it into an int
 *  using strtol library function.  It reports an error and 
 *  exits the program if an error is encountered.
 **/
static int parse_input(char *input) {
    errno = 0;
    int ret = strtol(input, NULL, 10); 
    if(errno != 0) {
        perror("Failed to parse input: ");
        exit(0);
    }
    if(ret == 0) {
        fprintf(stderr, "%s is not a valid input.\n", input);
        exit(0);
    }
    return ret;
}

/** 
 * This menu prompt to user specifying possible options.
 **/
static void print_prompt() {
    printf("Please choose the options from the list below.\n");
    printf("%d. Clear the list.\n", CLEAR);
    printf("%d. Prepend an element into the list.\n", PREPEND);
    printf("%d. Append an element into the list.\n", APPEND);
    printf("%d. Delete an element with a particular value from the list.\n", DELETE);
    printf("%d. Return number of elements in the list.\n", SIZE);
    printf("%d. Print content of the list.\n", PRINT);
    printf("%d. Quit the program.\n", QUIT);
    printf("Enter your choice: ");
}

/** 
 * Parse user input string as an interger and return the resulting int. 
 **/
static int get_input() {
    char buf[BUFSIZE];
    if(fgets(buf, BUFSIZE, stdin) == NULL) {
        fprintf(stderr, "fgets failed to read input; quit.\n");
        exit(1);
    }
    int ret = parse_input(buf);
    return ret;
}

int main(int argc, char *argv[]) {
    
    list_t list;
    if(list_init(&list)) {
        fprintf(stderr, "Failed to init list; quit.\n");
        exit(1);
    }

    int cmd = 0;

    do {
        print_prompt();  
        cmd = get_input();
        int err = 0;
        int value;

        switch(cmd) {
        case CLEAR:
            err = list_clear(&list);
            break;
            
        case PREPEND:
            printf("Enter value to prepend: ");
            value = get_input(); 
            err = list_prepend(&list, value);
            break;

        case APPEND:
            printf("Enter value to append: ");
            value = get_input(); 
            err = list_append(&list, value);
            break;

        case DELETE:
            printf("Enter value to delete: ");
            value = get_input(); 
            err = list_delete(&list, value);
            break;

        case SIZE:
            err = list_size(&list, &value);
            printf("List size is: %d.\n", value);
            break;

        case PRINT:
        case QUIT:
            break; /* we will print once we break */
  
        default:
            printf("Not a valid choice; try again.\n");
            break;
        }

        if(err) {
            fprintf(stderr, "Operation %s failed.\n", choice_string[cmd]);
        } else if(cmd != QUIT) {
            list_print(&list);
        }
        printf("--------------------------------------------------------\n");
    } while(cmd != QUIT);

    /* clean up and deallocate memory used for list now that we are done */
    list_clear(&list);
  
    return 0;
}

