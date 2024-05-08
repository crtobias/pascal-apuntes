program Hello;
const 
Tam= 4;

type
  alum = record
         ins: integer;
         dni: integer;
         ape: string;
         nom: string;
         anon: integer;
end;

alumnos = array [1..Tam] of alum;


procedure leerr (var a: alum);
begin
    readln (a.ins);
    readln (a.dni);
    readln (a.ape);
    readln (a.nom);
    readln (a.anon);
end;

    procedure cargarv (var al: alumnos; var a: alum);
var
    I: integer;
begin

for I:= 1 to Tam do begin
    writeln ('ingrese los datos del alumno');
    leerr (a);
    al[I]:= a;
    end;
end;

function espar (al: alumnos; I: integer) : boolean;
var
aux: integer; flag: boolean;
begin
    while (al[I].dni > 0) do begin
        aux:= Al[I].dni MOD 10;
        Al[I].dni:= Al[I].dni DIV 10;
        if (aux MOD 2 = 0) then
          flag:= true
        else 
          flag:= false;
    end;
    espar:= flag;
end;


procedure mayor(al: alumnos; Tam: integer; var nom1: string; var nom2: string; var ape1: string; var ape2: string);
var
    i: integer;
    max1, max2: integer;
begin
    max1 := 0; 
    max2 := 0;
    for i := 1 to Tam do
    begin
        if al[i].anon > max1 then
        begin
            nom2 := nom1;
            ape2 := ape1;
            max2 := max1;

            nom1 := al[i].nom;
            ape1 := al[i].ape;
            max1 := al[i].anon;
        end
        else if al[i].anon > max2 then
        begin
            nom2 := al[i].nom;
            ape2 := al[i].ape;
            max2 := al[i].anon;
        end;
    end;
end;

 
var
a: alum; al: alumnos;
nom1: string; nom2: string;
ape1: string; ape2:string;
cantp: integer;
I: integer;
porcentaje: real;
begin

    cantp:=0;
    porcentaje:= 0; 
    
    cargarv (al, a);
    
for I:= 1 to Tam do begin
     If (espar(al,I)) then
           cantp:= cantp + 1;
end;

mayor(al,I, nom1,nom2,ape1, ape2);


porcentaje:= (cantp/Tam)*100;

writeln('el porcentaje de alumnos con dni digitos par es de:', porcentaje:0:2 ,'%');
writeln('los dos alumnos de mayor edad son:', nom1,' ', ape1, ' y ', nom2,' ', ape2);

end.
