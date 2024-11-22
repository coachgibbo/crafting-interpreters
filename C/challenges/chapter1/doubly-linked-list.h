#ifndef DOUBLY_LINKED_LIST_H
#define DOUBLY_LINKED_LIST_H

#include <stddef.h>

// Type definition for my linked list nodes
typedef struct Node {
    char* data;
    struct Node* next;
    struct Node* prev;
} Node;

// Type definition for the doubly linked list
typedef struct DoublyLinkedList {
    Node* head;
    Node* tail;
    size_t size;
} DoublyLinkedList;

// Declare doubly linked list constructor
DoublyLinkedList* createDoublyLinkedList();

// Declare functions to interact with doubly linked list
void append(DoublyLinkedList* list, char* data);
void prepend(DoublyLinkedList* list, char* data);
void find_element(DoublyLinkedList* list, char* data);
void remove_element(DoublyLinkedList* list, char* data);
void print_list(DoublyLinkedList* list);
void destroy_list(DoublyLinkedList* list);

#endif //DOUBLY_LINKED_LIST_H
