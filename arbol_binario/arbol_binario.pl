% Representation of a binary tree node
node(Value, Left, Right).


create_tree(nil). % Empty tree
create_tree(node(Value, Left, Right)) :-
    write('Enter value for node: '),
    read(Value),
    write('Create left subtree? (y/n): '),
    read(Answer),
    (Answer = 'y' -> create_tree(Left); Left = nil),
    write('Create right subtree? (y/n): '),
    read(Answer),
    (Answer = 'y' -> create_tree(Right); Right = nil).


search(Value, node(Value, _, _)). % Found at the root
search(Value, node(_, Left, _)) :- search(Value, Left). % Search in the left subtree
search(Value, node(_, _, Right)) :- search(Value, Right). % Search in the right subtree


preorder(nil).
preorder(node(Value, Left, Right)) :-
    write(Value), write(' '),
    preorder(Left),
    preorder(Right).

inorder(nil).
inorder(node(Value, Left, Right)) :-
    inorder(Left),
    write(Value), write(' '),
    inorder(Right).

postorder(nil).
postorder(node(Value, Left, Right)) :-
    postorder(Left),
    postorder(Right),
    write(Value), write(' ').
