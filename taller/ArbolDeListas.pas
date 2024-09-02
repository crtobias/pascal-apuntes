program ArbolDeListas;
uses crt;
type

dia = 1..31;
m = 1..12;
ye = 2000..2050;

Lista = ^NodoLista;

D = record
	day:dia;
	month:m;
	year:ye;
	cantidad:integer;
	codigo:integer;
end;

NodoLista = record
	dato:D;
	sig:Lista;
end;



Arbol = ^NodoArbol;

NodoArbol = record
	dato: lista;
	ND:Arbol;
	NI:Arbol;
end;

{con estos tipos crear un arbol con venta y el codigo de las ventas
y lista de las ventas con ese codigo}

procedure cargarD(var dato :D);
begin
writeln('dato car');
	dato.day := 1 + random(29);
	dato.month := 1 + random(1);
	dato.year := 2000 + random(30);
	dato.cantidad := random(3000);
	dato.codigo  := random(10);
end;

procedure AgregarLista(var L:lista;da:D);
var
nue:lista;
begin
	writeln('agregar lista');
	new(nue);
	nue^.sig:=L;
	nue^.dato:=da;
	writeln('agregar lista2');
	L:=nue;
end;

procedure AgregarArbol(var A:arbol;L:lista);
begin
	writeln('WEL ARBOL');
	if a = nil then begin
		new(a);
		a^.dato:= L;
		a^.ND:=nil;
		a^.NI:=nil;
		writeln('arbol en nil');
	end
	else if (L^.dato.codigo = a^.dato^.dato.codigo) then begin
		AgregarLista(l,a^.dato^.dato);
		writeln('arbol igualado');
	end
	else if (L^.dato.codigo > a^.dato^.dato.codigo) then begin
		AgregarArbol(a^.ND,L);
		writeln('arbol >');
	end
	else 	
		AgregarArbol(a^.NI,L);
		writeln('arbol izq');
	
end;   
          
procedure CrearArbol(var A:arbol);
var
da:D;
L:Lista;
begin
	L:=nil;
	cargarD(da);
	while da.codigo <> 0 do begin
		AgregarLista(L,da);
		AgregarArbol(A,L);
		L:=nil;
		cargarD(da);
	end;
end;

procedure NodosTotales(a:arbol;var totalN:integer);
begin
	if a <> nil then begin
		totalN := totalN + 1;
		NodosTotales(a^.ND,totalN);
		NodosTotales(a^.NI,totalN);
	end;
end;

var
a:arbol;
total:integer;
BEGIN
Randomize;
a:=nil;
total:=0;

CrearArbol(a);

NodosTotales(a,total);
writeln('el total es : ',total);
END.

