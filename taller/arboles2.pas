
program untitled;
uses
  SysUtils;
type

	d = 1..30;
	h = 0..12;
	m = 1..12;
	
	fecha = record
		dia:d;
		hora:h;
		mes:m;
	end;
	
	
	venta = record
		fecha:fecha;
		cant:integer;
		codigo:integer;
	end;
	
	venta2 = record
		cant:integer;
		codigo:integer;
	end;
	
	
	arbol2 = ^nodo2;
	
	nodo2 = record 
		dato:venta2;
		ND:arbol2;
		NI:arbol2;
	end;
	
	arbol1 = ^nodo1;
	
	nodo1 = record
		dato:venta;
		ND:arbol1;
		NI:arbol1;
	end;
	
procedure GenerarFecha(var fecha:fecha);
begin
	fecha.dia:= random(29) + 1;
	fecha.hora:= random(12);
	fecha.mes:= random(11) + 1;
end;
	
procedure GenerarVenta(var venta:venta);
begin
	GenerarFecha(venta.fecha);
	venta.cant :=  random(32767) ;
	venta.codigo :=   random(32767) ; //el maximo numero permitido por enteros
end;

procedure GenerarVenta2(var venta:venta2);
begin
	venta.cant :=  random(32767) ;
	venta.codigo :=   random(32767) ; //el maximo numero permitido por enteros
end;


procedure InsertarArbol(var a:arbol1;v:venta); 
begin	
	if a = nil then begin
		new(a);
		a^.dato := v;
		a^.ND:=nil;
		a^.NI:=nil;
	end
	else begin
		if v.codigo >= a^.dato.codigo then begin
			InsertarArbol(a^.ND,v);
		end
		else begin
			InsertarArbol(a^.NI,v);
		end;
	end;
end;

procedure InsertarArbol2(var a:arbol2;v:venta2); 
begin	
	if a = nil then begin
		new(a);
		a^.dato := v;
		a^.ND:=nil;
		a^.NI:=nil;
	end
	else begin
		if v.codigo =  a^.dato.codigo then begin
			a^.dato.cant := a^.dato.cant + v.cant;
		end
		else if v.codigo > a^.dato.codigo then begin
			InsertarArbol2(a^.ND,v);
		end
		else begin
			InsertarArbol2(a^.NI,v);
		end;
	end;
end;



procedure GenerarArbol2(var a:arbol2);
var
v:venta2;
begin
	GenerarVenta2(v);
	while v.codigo <> 0 do begin
		InsertarArbol2(a,v);
		GenerarVenta2(v);
	end;
	writeln('el arbol2 se termino de generar');
end;

procedure GenerarArbol1(var a:arbol1);
var
v:venta;
begin
	GenerarVenta(v);
	while v.codigo <> 0 do begin
		InsertarArbol(a,v);
		GenerarVenta(v);
	end;
	writeln('el arbol se termino de generar');
end;

procedure NodosTotales(a:arbol1;var totalN:integer);
begin
	if a <> nil then begin
		totalN := totalN + 1;
		NodosTotales(a^.ND,totalN);
		NodosTotales(a^.NI,totalN);
	end;
end;
procedure NodosTotales2(a:arbol2;var totalN:integer);
begin
	if a <> nil then begin
		totalN := totalN + 1;
		NodosTotales2(a^.ND,totalN);
		NodosTotales2(a^.NI,totalN);
	end;
end;


var
a1:arbol1;
a2:arbol2;
total1:integer;
total2:integer;
BEGIN

	Randomize;
	GenerarArbol1(a1);
	GenerarArbol2(a2);
	
	
	
	
	
	NodosTotales(a1,total1);
	writeln('total de nodos de arbol 1  :',total1);
	NodosTotales2(a2,total2);
	writeln('total de nodos de arbol 2  :',total2);
END.

