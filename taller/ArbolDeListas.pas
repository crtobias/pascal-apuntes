program ArbolDeListas;
type
Lista = ^NodoLista;

NodoLista = record
	codigo:integer;
	cantidad:integer;
	sig:Lista;
end;


venta = record
	codigo:integer;
	L:lista;
end;

Arbol = ^NodoArbol;

NodoArbol = record
	dato: venta;
	ND:Arbol;
	NI:Arbol;
end;

{con estos tipos crear un arbol con venta y el codigo de las ventas
y lista de las ventas con ese codigo}


BEGIN

END.

