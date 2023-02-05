#include "tree.h"


/**
 * Please correct the contents of this file to make sure all functions here do what they are supposed to do if you find
 * that they do not work as expected.
 */


int height(Node* node){
    if (node == NULL)
        return 0;
    return node->height;
}

void update_height(Node* node){
    if (node == NULL)
        return;
    int max = height(node->left) > height(node->right) ? height(node->left) : height(node->right);
    node->height = 1 + max;
}

int get_balance(Node* node){
    if (node == NULL)
        return 0;
    return height(node->left) - height(node->right);
}

Node* find_successor(Node* node){
    if (node == NULL)
        return NULL;

    // find its right node's leftmost leaf
    Node* tmp = node -> right;

    while (tmp->left != NULL)
        tmp = tmp->left;

    return tmp;
}

Node* new_node(int age, char* name){
    Node* node =  malloc(sizeof (Node));
    if (node == NULL){
        fprintf(stderr, "Could not allocate memory for new node\n");
        exit(1);
    }
    node->left = NULL;
    node->right = NULL;
    node->height = 1;
    node->age = age;
    node->name = name;
    return node;
}

/*
         (y)           (x)
         / \           / \
       (x)  c   ==>   a  (y)
       / \               / \
      a   b             b   c
*/
Node* rotate_right(Node* y){
    Node* x = y->left;
    Node* b = x->right;

    x->right = y;
    y->left = b;

    update_height(y);
    update_height(x);

    return x;
}

/*
        (x)            (y)
        / \            / \
       a  (y)   ==>  (x)  c
          / \        / \
         b   c      a   b
*/
Node* rotate_left(Node* x){
    Node* y = x->right;
    Node* b = y->left;

    y->left = x;
    x->right = b;

    update_height(y);
    update_height(x);

    return y;
}

Node* balance(struct Node* node){
    int balance_factor = get_balance(node);

    if (balance_factor > 1){
        if (get_balance(node->left) >= 0){
            node =  rotate_right(node);
        }else{
            node->left = rotate_left(node->left);
            node =  rotate_right(node);
        }
    } else if (balance_factor < -1){
        if (get_balance(node->right) <= 0){
            node =  rotate_left(node);
        }else{
            node->right = rotate_right(node->right);
            node =  rotate_left(node);
        }
    }
    return node;
}

// Tree function: you are allowed to change the contents, but not the method signature
Tree* tree_create(){
    Tree *tree = malloc(sizeof(Tree));
    if (tree == NULL){
        fprintf(stderr, "Could not allocate memory for the tree\n");
        exit(1);
    }

    tree->root = NULL;
    return tree;
}

// Helper function: you are allowed to change this to your preferences
Node* tree_node_delete(Node* node, int age, char* name) {
    if (node == NULL)
        return node;

    // if node to be deleted has smaller age than the root's name
    // then it is in the left subtree
    if (age < node->age){
        node->left = tree_node_delete(node->left, age, name);
    }
        // if node to be deleted has bigger age than the root's name
        // then it is in the right subtree
    else if (age > node->age){
        node->right = tree_node_delete(node->right, age, name);
    }
        // if node to be deleted has equal age but different name
        // then it is in the left subtree
    else if (strcmp(node->name, name)  != 0) {
        node->left = tree_node_delete(node->left, age, name);
    }
        // if node to be deleted has bigger age than the root's name
        // then it is in the right subtree
    else{
        // no children
        if (node->right == NULL && node->left == NULL){
            free(node->name);
            free(node);
            node = NULL;
        }
            // only left children
        else if(node->left != NULL && node->right== NULL){
            Node* temp = node;
            node = node->left;
            free(temp->name);
            free(temp);
        }
            // only right children
        else if(node->right != NULL && node->left == NULL){
            Node* temp = node;
            node = node->right;
            free(temp->name);
            free(temp);
        }
        else{
            Node* successor = find_successor(node);
            node->age = successor->age;
            strcpy(node->name, successor->name);
            node->right = tree_node_delete(node->right, successor->age, successor->name);
        }
    }

    // If the tree had only one node then no need for height/ balance update
    if (node == NULL)
        return node;

    update_height(node);
    node = balance(node);

    return node;
}

// Helper function: you are allowed to change this to your preferences
Node* node_insert(Node* node, int age, char* name) {
    if (node == NULL)
        return new_node(age, name);

    if (age < node->age){
        node->left = node_insert(node->left, age, name);
    } else if (age > node->age){
        node->right = node_insert(node->right, age, name);
    } else{
        if (strcmp(node->name, name)  == 0) {
            return node;
        }else{
            node->left = node_insert(node->left, age, name);
        }
    }

    update_height(node);
    node = balance(node);

    return node;
}

// helper function to delete all nodes of the subtree including the given node
Node* post_order_tree_delete(Node *root){
    if (root == NULL)
        return NULL;

    if (root->left != NULL)
        root->left = post_order_tree_delete(root->left);

    if (root->right != NULL)
        root->right = post_order_tree_delete(root->right);

    free(root->name);
    free(root);

    return NULL;
}

// Tree function: you are allowed to change the contents, but not the method signature
void tree_delete(Tree* tree) {
    if (tree == NULL)
        return;
    tree->root = post_order_tree_delete(tree->root);
    free(tree);
}

// Tree function: you are allowed to change the contents, but not the method signature
void tree_insert(Tree* tree, int age, char* name) {

    //double check to avoid the test case in test_tree file directly using this func and inserting two same people.
    if (tree_find(tree, age, name) != NULL){
        return;
    }
    char* nameNew = (char*)malloc(sizeof(char) * 20);
    strcpy(nameNew, name);
    tree->root = node_insert(tree->root, age, nameNew);
}
// Tree function: you are allowed to change the contents, but not the method signature
void tree_erase(Tree* tree, int age, char* name) {
    if(tree->root == NULL)
        return;
    tree->root = tree_node_delete(tree->root, age, name);
}

// Helper function: you are allowed to change this to your preferences
Node* node_find(Node* node, int age, char* name) {
    if (node == NULL) return NULL;

    if (node->age == age && strcmp(node->name, name)  == 0) {
        return node;
    }

    if (age <= node->age) {
        return node_find(node->left, age, name);
    } else {
        return node_find(node->right, age, name);
    }
}

// Tree function: you are allowed to change the contents, but not the method signature
Node* tree_find(Tree* tree, int age, char* name) {
    if (tree == NULL) return NULL;

    return node_find(tree->root, age, name);
}

// Helper function: you are allowed to change this to your preferences
void tree_print_node(Node* node){
    if (node == NULL) {
        printf("null");
        return;
    }

    printf("[");
    printf("{\"%d\":\"%s\"},", node->age, node->name);
    tree_print_node(node->left);
    printf(",");
    tree_print_node(node->right);
    printf("]");
}

// Tree function: you are allowed to change the contents, but not the method signature
void tree_print(Tree* tree, int printNewline){
    if (tree == NULL) {
        printf("null\n");
        return;
    }
    tree_print_node(tree->root);

    if (printNewline)
        printf("\n");

}