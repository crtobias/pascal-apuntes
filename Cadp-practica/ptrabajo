program Ejercicio10;
const
Tam= 5;
type
sueldos = array [1..Tam] of real;

procedure CargarV(var s: sueldos; var dl: integer);
var
  aux: integer;
begin
  dl := 0;
  repeat
    writeln('Ingrese el salario del empleado (ingrese 0 para salir):');
    read(aux);
    if (aux <> 0) and (dl < Tam) then
    begin
      dl := dl + 1;
      s[dl] := aux;
    end;
  until (aux = 0) or (dl = Tam);
end;


procedure quincep (var s:sueldos; var dl: integer; var stotal: real);
var
    i: integer;
begin
    stotal:=0;
    for i:= 1 to dl do
    begin
      s[i]:= (s[i] + (s[i]* 0.15));
      stotal:= stotal + s[i];
    end;
end;


function promedio (dl: integer; stotal:real ): real;
begin
    promedio:= stotal/ dl;
end;

var
    s: sueldos;
    dl: integer;
    stotal: real;
begin
    CargarV(s,dl);
    quincep (s,dl, stotal);
    writeln('',dl);
    writeln ('el promedio total de los sueldos de todos los empleados es de', promedio (dl, stotal):0:2);
end.
