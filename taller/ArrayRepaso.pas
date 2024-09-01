
program testeo;
const
tam = 300;
type

oficina = record
	dni:integer;
	codigo:integer;
	valor:integer;
end;

vector = array[1..tam] of oficina;

// cargar a los sumo 300 oficinas y si el codigo es 0 cortar
procedure leerOficina (var dni:integer;var valor:integer;var codigo:integer);
begin
	writeln('dni i');
	readln(dni);
	writeln('valor');
	readln(valor);
	writeln('codigo');
	readln(codigo);
end;

procedure CargarVector(var V:vector; var DimL:integer);
var
dni,valor,codigo:integer;
begin
	leerOficina(dni,valor,codigo);
		if (codigo <> 0) and (DimL <= tam)then  begin
			DimL:=DimL+1;
			V[DimL].dni := dni;
			V[DimL].valor:= valor;
			V[DimL].codigo := codigo;
			CargarVector(v,Diml);
		end;
end;

// ordenar el vector por codigo
procedure OrdenarVector(var V:vector;DimL:integer);
var
memo:oficina;
i,k,pos:integer;
begin
	for i:= 1 to DimL-1 do begin
		pos:=i;
		for k:=i+1 to DimL do
			if V[k].codigo < V[pos].codigo then pos :=k;
			
		memo:= V[pos];
		V[pos] := V[i];
		V[i] := memo;
	end;
end;

procedure WriteVector(V:vector;DimL:integer);
var
 i:integer;
begin
	for i:=1 to DimL do begin
		writeln(V[i].codigo);
	end;
end;

Function TotalMonto(V:vector;DimL:integer):integer;
begin
	If DimL > 0 then begin
		TotalMonto:= V[DimL].valor;
		DimL := DimL - 1;
	end
	else
		TotalMonto := 0
end;


var
V:vector;
DimL:integer;
MontoTotal:integer;
begin
	Diml:=0;
	CargarVector(V,DimL);
	OrdenarVector(V,DimL);
	WriteVector(V,DimL);
	MontoTotal :=	TotalMonto(V,DimL);
	writeln('el monto total es :',MontoTotal);
END.
