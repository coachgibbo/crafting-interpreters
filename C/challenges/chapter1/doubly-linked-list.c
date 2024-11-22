#include "doubly-linked-list.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Main function for testing
int main() {
    DoublyLinkedList* list = createDoublyLinkedList();

    append(list, "Value1");
    append(list, "Value2");

    prepend(list, "Value3");

    print_list(list);

    find_element(list, "Value3");
    find_element(list, "Value2");
    find_element(list, "Value1");
    find_element(list, "Value5");

    remove_element(list, "Value1");

    print_list(list);
    find_element(list, "Value3");
    find_element(list, "Value2");
    find_element(list, "Value1");

    remove_element(list, "Value1");

    destroy_list(list);
}

// Doubly linked list constructor
DoublyLinkedList* createDoublyLinkedList() {
    DoublyLinkedList* list = malloc(sizeof(DoublyLinkedList));

    if (!list) {
        perror("Failed to create list");
        exit(EXIT_FAILURE);
    }

    list->head = NULL;
    list->tail = NULL;
    list->size = 0;

    return list;
}

// Append elements to doubly linked list
void append(DoublyLinkedList* list, char* data) {
    Node* node = malloc(sizeof(Node));

    if (!node) {
        perror("Failed to allocate memory for node");
        exit(EXIT_FAILURE);
    }

    node->data = strdup(data);

    if (!node->data) {
        perror("Failed to allocate memory for string");
        free(node);
        exit(EXIT_FAILURE);
    }

    node->next = NULL;
    node->prev = list->tail;

    if (list->tail) {
        list->tail->next = node;
    } else {
        list->head = node;
    }

    list->tail = node;
    list->size++;
}

// Prepend elements to doubly linked list
void prepend(DoublyLinkedList* list, char* data) {
    Node* node = malloc(sizeof(Node));

    if (!node) {
        perror("Failed to allocate memory for node");
        exit(EXIT_FAILURE);
    }

    node->data = strdup(data);

    if (!node->data) {
        perror("Failed to allocate memory for string");
        free(node);
        exit(EXIT_FAILURE);
    }

    node->next = list->head;
    node->prev = NULL;

    if (list->head) {
        list->head->prev = node;
    } else {
        list->tail = node;
    }

    list->head = node;
    list->size++;
}

// Find if element exists and it's position in doubly linked list
void find_element(DoublyLinkedList* list, char* data) {
    Node* node = list->head;
    int counter = 0;

    while (node) {
        if (strcmp(data, node->data) == 0) {
            printf("Found element: %s at index %d\n", data, counter);
            return;
        }
        node = node->next;
        counter++;
    }

    printf("Element not found\n");
}

// Remove an element from the doubly linked list if it exists
void remove_element(DoublyLinkedList* list, char* data) {
    Node* node = list->head;
    int counter = 0;

    while (node) {
        if (strcmp(data, node->data) == 0) {
            Node* next = node->next;
            Node* prev = node->prev;

            if (prev) {
                prev->next = next;
            }

            if (next) {
                next->prev = prev;
            }

            if (list->tail == node) {
                list->tail = prev;
            }

            if (list->head == node) {
                list->head = next;
            }

            free(node->data);
            free(node);
            list->size--;
            printf("Element removed at index %d\n", counter);

            return;
        }
        node = node->next;
    }

    printf("Element not found\n");
}

// Print doubly linked list
void print_list(DoublyLinkedList* list) {
    const Node* node = list->head;

    while (node) {
        printf("%s", node->data);
        if (node->next) {
            printf(" -> ");
        }
        node = node->next;
    }
    printf("\n");
}

// Destroy doubly linked list and free memory
void destroy_list(DoublyLinkedList* list) {
    Node* node = list->head;

    while (node) {
        Node* next = node->next;
        free(node->data);
        free(node);
        node = next;
    }

    free(list);
}