


program ArbolesBinariosPracticaTaller;
type

	arbol = ^nodo;
	nodo = record
		dato:integer;
		ND:arbol;
		NI:arbol;
	end;



procedure agregar(var a:arbol;num:integer);
begin
	if a = nil then begin
		new(A);
		a^.dato:=num;
		a^.ND:=nil;
		a^.NI:=nil;
	end
	else begin
		if num <= A^.dato then begin
			agregar(a^.NI , num)
		end
		else begin
			agregar(a^.ND,num)
		end;
	end;
end;

function BuscarArbol(a:arbol;num:integer):boolean;
begin
	if a = nil then begin	
		BuscarArbol:=false;
	end
	else if a^.dato = num then begin
		BuscarArbol:=true;
	end
	else if num >= a^.dato then begin
		BuscarArbol:= BuscarArbol(a^.ND , num);
	end
	else begin
		BuscarArbol:= BuscarArbol(a^.NI , num);
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

function AlturaArbol(a: arbol ):integer;
var 
	izquierda,derecha:integer;
begin
	if a=nil then
		AlturaArbol :=0
	else
		begin
			izquierda := AlturaArbol(a^.NI);
			derecha := AlturaArbol(a^.ND);
			
			if izquierda > derecha then
				AlturaArbol := 1 + izquierda
			else
				AlturaArbol := 1 + derecha;
		end;
end;

var
a:arbol;
num:integer;
reco:boolean;
totalN:integer;
altura:integer;
BEGIN
	altura:=0;
	totalN:=0;
	//creando y cargando el arbol
	a:=nil;
	writeln('ingrese  num');
	read(num);
	while (num <> 50) do begin
		agregar(a,num);
		writeln('ingrese  num');
		read(num);
	end;
	// buscando en el arbol 
	writeln('ingresar numero a buscar');
	readln(num);
	reco := BuscarArbol(a , num);
	if reco then begin
		writeln(reco)
	end
	else begin
		writeln(reco)
	end;
	
	NodosTotales(a,totalN);
	writeln('el total de nodos del arbol es  :',totalN);
	
	altura := AlturaArbol(a);
	writeln(altura);
	
END.
