% Representación de un nodo de árbol binario
nodo(Valor, Izquierdo, Derecho).

% Crear un árbol vacío
crear_arbol(nil).

% Crear un árbol binario interactivo
crear_arbol(nodo(Valor, Izquierdo, Derecho)) :-
    write('Ingrese el valor para el nodo: '),
    read(Valor),
    write('¿Crear subárbol izquierdo? (s/n): '),
    read(Respuesta),
    (Respuesta = 's' -> crear_arbol(Izquierdo); Izquierdo = nil),
    write('¿Crear subárbol derecho? (s/n): '),
    read(Respuesta),
    (Respuesta = 's' -> crear_arbol(Derecho); Derecho = nil).

% Buscar un valor en el árbol
buscar(Valor, nodo(Valor, _, _)). % Encontrado en la raíz
buscar(Valor, nodo(_, Izquierdo, _)) :- buscar(Valor, Izquierdo). % Buscar en el subárbol izquierdo
buscar(Valor, nodo(_, _, Derecho)) :- buscar(Valor, Derecho). % Buscar en el subárbol derecho

% Recorrido preorden
preorden(nil).
preorden(nodo(Valor, Izquierdo, Derecho)) :-
    write(Valor), write(' '),
    preorden(Izquierdo),
    preorden(Derecho).

% Recorrido inorden
inorden(nil).
inorden(nodo(Valor, Izquierdo, Derecho)) :-
    inorden(Izquierdo),
    write(Valor), write(' '),
    inorden(Derecho).

% Recorrido postorden
postorden(nil).
postorden(nodo(Valor, Izquierdo, Derecho)) :-
    postorden(Izquierdo),
    postorden(Derecho),
    write(Valor), write(' ').
