// Una empresa desarrolladora de juegos para teléfonos celulares con Android dispone de información de
// todos los dispositivos que poseen sus juegos instalados. De cada dispositivo se conoce la versión de
// Android instalada, el tamaño de la pantalla (en pulgadas) y la cantidad de memoria RAM que posee
// (medida en GB). La información disponible se encuentra ordenada por versión de Android. Realizar un
// programa que procese la información disponible de todos los dispositivos e informe:
// a. La cantidad de dispositivos para cada versión de Android.
// b. La cantidad de dispositivos con más de 3 GB de memoria y pantallas de a lo sumo a 5 pulgadas.
// c. El tamaño promedio de las pantallas de todos los dispositivos

program doce;
type

lista = ^nodo;
nodo = record 
    dato:dispo;
    sig:lista;
end;
dispo = record
    pulgadas: real;
    versionAnd:real;
    ram:real;
end;

procedure Cpunto(dato:dispo ;pant:integer; pulgadas:real);
begin
    pant := pant+1;
    pulgadas := pulgadas + dato.pulgadas
end

procedure Bpunto(dato:dispo;var contador:integer);
begin
    if (dato.pulgada >= 5 and dato.ram > 3) then
        contador:=contador+1;
end;

procedure porcentajeCpunto(pant:integer;pulgadas:real)
var
    re:real;
begin
    re:= (pulgadas / pant);
    writeln('el porcentaje es de pulgadas es de  :' ,re:0:2 );
end

procedure recorrer(L:lista);
var
    contador:integer;
    pant:integer;
    pulgadas:real
    contadorVersiones:integer;
    versionActual:real;
begin
    contador:=0;
    contadorversiones:=0;

    while L <> nil do begin
        Bpunto(L.dato , contador);
        Cpunto(L.dato , pant, pulgadas);

    L:= ^L.sig
    end;

    porcentajeCpunto(pant,pulgadas);
    writeln('dispositivos del punto b son  :',contador);

end;


var 
    L:lista;
begin
    L:cargada; // suponemos que esta cargada por el enunciado
   
    recorrer(L);
end.
