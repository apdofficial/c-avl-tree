#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "main.h"
#include "tree.h"

#define ERROR 1
// You are allowed to change anything about this function to fix it

char* s_gets(char* st, int n) {
    char * string;
    string = fgets(st, n, stdin);
    if (string != NULL){
        char* find = strchr(st, '\n');//check whether it has '\n' or not
        if (find == NULL) {
            string[n - 1] = '\n';
            int ch;
            while (((ch = getchar()) != EOF) && (ch != '\n')) continue;
        }
    }
    return string;
}

int main() {
    char* commandBuffer = (char*)malloc(sizeof(char) * 20);
    if (commandBuffer == NULL) {
        fprintf(stderr, "Could not allocate memory for command\n");
        return ERROR;
    }

    Tree *tree = tree_create();

    for(;;) {
        //fgets(commandBuffer, 20, stdin);
        //scanf("%*[^\n]%*c");// clear the buffer after insertion to prevent injection
        commandBuffer = s_gets(commandBuffer, 20);
        // Quit on EOF or 'q'
        if (feof(stdin) || commandBuffer[0] == 'q'){
            break;
        }

        tree = handleString(commandBuffer, tree);
    }

    tree_delete(tree);
    free(commandBuffer);
    return 0;
}

/**
 * Handle a command entered into the program
 *
 * You are allowed to change anything about this function to fix it
 * @param command The command string to handle
 */
Tree* handleString(char command[], Tree *tree){
    if (command == NULL){
        fprintf(stderr, "Invalid command; null pointer\n");
        return tree;
    }

    switch(command[0]){
        case 'i':
            insert(command, tree);
            break;
        case 'e':
            erase(command, tree);
            break;
        case 'c':
            check(command, tree);
            break;
        case 'p':
            tree_print(tree, 1);
            break;
        case 'x':
            tree_delete(tree);
            tree = tree_create();
            break;
        default:
            fprintf(stderr, "Invalid command string: %s\n", command);
            break;
    }

    return tree;
}

// You are allowed to change anything about this function to tix it
Tree* insert(char* command, Tree* tree) {
    int age;

    char* name = (char*)malloc(sizeof(char) * 20);
    if (name == NULL) {
        fprintf(stderr, "Could not allocate memory for name\n");
        return tree;
    }

    if (2 != sscanf(command, "i %d %20s", &age, name)){
        fprintf(stderr, "Failed to parse insert command: not enough parameters filled\n");
        free(name);
        return tree;
    }

    if (tree == NULL){
        tree = tree_create();
    }

    if (tree_find(tree, age, name) != NULL){
        fprintf(stderr, "Failed to parse insert command: this person has existed\n");
        free(name);
        return tree;
    }

    tree_insert(tree, age, name);
    free(name);
    return tree;
}

// You are allowed to change anything about this function to fix it
void erase(char* command, Tree* tree) {
    if(tree->root == NULL)
        return;
    int age;
    char* name = (char*)malloc(sizeof(char) * 20);

    if (2 != sscanf(command, "e %d %20s", &age, name)){
        free(name);
        fprintf(stderr, "Failed to parse erase command: not enough parameters filled\n");
        return;
    }
    tree_erase(tree, age, name);
    free(name);
}

// You are allowed to change anything about this function to fix it
void check(char* command, Tree* tree) {
    int age;
    char* name = malloc(sizeof(char) * 20);

    if (2 != sscanf(command, "c %d %20s", &age, name)){
        free(name);
        fprintf(stderr, "Failed to parse check command\n");
        return;
    }

    Node* result = tree_find(tree, age, name);
    if (result){
        printf("y\n");
    } else {
        printf("n\n");
    }
    free(name);
}
