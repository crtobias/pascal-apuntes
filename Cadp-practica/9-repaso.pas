// Un cine posee la lista de películas que proyectará durante el mes de Febrero. De cada película se tiene:
// código de película, título de la película, código de género (1: acción, 2: aventura, 3: drama, 4: suspenso, 5:
// comedia, 6: bélica, 7: documental y 8: terror) y puntaje promedio otorgado por las críticas. Dicha estructura
// no posee orden alguno.
// Se pide:
// a) Actualizar (en la lista que se dispone) el puntaje promedio otorgado por las críticas. Para ello se debe
// leer desde teclado las críticas que han realizado críticos de cine, de cada crítica se lee: DNI del crítico,
// apellido y nombre del crítico, código de película y el puntaje otorgado. La lectura finaliza cuando se lee
// el código de película -1 y la información viene ordenada por código de película.
// b) Informar el código de género que más puntaje obtuvo entre todas las críticas.
// c) Informar el apellido y nombre de aquellos críticos que posean la misma cantidad de dígitos pares que
// impares en su DNI.
// d) Realizar un módulo que elimine de la lista que se dispone una película cuyo código se recibe como
// parámetro (el mismo puede no existir).

program nueverepaso;
type

listaP: ^nodoP;

nodoP = record
    dato:pelicula;
    sig:listaP;
end;

punt = record
    cantidad: integer;
    puntajetotal: real;
end;

pelicula = record
    codigo:integer;
    titulo:string;
    genero:integer; //1..8
    puntaje:punt;
end;

listaC:  ^nodoC;

nodoC = record
    dato:critico;
    sig:listaC;
end;

critico = record
    dni: integer;
    apellido: string;
    nombre: string;
    codigoP:string; //1..8
    puntaje:real;
end;

procedure readCriticos(var nue:critico);
begin
    readln(nue.dni);
    readln(nue.apellido);
    readln(nue.nombre);
    readln(nue.codigoP);
    readln(nue.puntaje);
end

procedure AddCriticos(var L:listaC;var C:critico);
var
    nue:=listaC
begin
    new(nueNodo);
    nue^.dato := C;
    nue^.sig := L;      
end

procedure ActualizarRating (var L:listaP ; C:critico);
var
    memo:nodoP;
begin
    memo:=L;

    while (L^.dato.codigo <> C.codigo) and (L <> nil) do begin
        L:= L^.sig;
    end;

    if L^.dato.codigo = C.codigo then 
    begin
        L^.dato.puntaje.cantidad := L^.dato.puntaje.cantidad + 1;
        L^.dato.puntaje.total := L^.dato.puntaje.total + C.puntaje;
    end

    L:=memo;

end;

procedure CargarListaC (var L:listaC ; var P:listaP);
var
    C:critico;
begin
    readCriticos(C);
    while C.codigoP <> -1 do begin
        AddCriticos(L);
        ActualizarRating(P,C)
        readCriticos(C);
    end;
end;

var
ListaP:ListaP;
listaC:listaC;
begin
listaP:=nil; //se dispone cargada
listaC:=nil;

CargarListaC(listaC,listaP); //lectura mientras el  critico sea -1


end.
