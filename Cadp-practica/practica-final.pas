
program RepasoParcial;
type

cadena = string[20];

LJugador= ^nodoJugador;

jugador = record
    xp:integer;
    nivel:integer;
    nombre:cadena;
    dni:integer;
end;

nodoJugador = record
    dato:jugador;
    sig:LJugador;
end;


procedure generarJugador(var J:jugador);
begin
    writeln('ingrese xp');
    readln(J.xp);
    writeln('ingrese lvl');
    readln(J.nivel);
    writeln('ingrese nombre');
    readln(J.nombre);
    writeln('ingrese dni');
    readln(J.dni);
end;


procedure AgregarAdelanteJugadores(var L:LJugador; J:jugador ; var ult:LJugador);
var
    nue : LJugador;
begin
    new(nue);
    nue^.dato := J;
    nue^.sig := L;
    L:=nue;
    if L^.sig = nil then
        ult:=L;
end;

procedure AgregarAtrasJugadores(var L:LJugador; j:jugador ;var ult:LJugador);
var
    nue:LJugador;
begin
    new(nue);
    nue^.dato:=J;
    nue^.sig:=nil;

    if L=nil then
        begin
            L:=nue;
        end
    else
        begin
            ult^.sig := nue;
        end;
    ult:=nue;
end;


procedure CargarListaAtras(var L:LJugador;var ult:LJugador);
var
    tam:integer;
    J:jugador;
    i:integer;
begin
    tam:=1;
    
    for i:=1 to tam do begin
        generarJugador(J);
        AgregarAtrasJugadores(L,J,ult);
    end;
    
end;


procedure CargarListaAdelante(var L:LJugador;var ult:LJugador);
var
    tam:integer;
    J:jugador;
    i:integer;
begin
    tam:=2;
    
    for i:=1 to tam do begin
        generarJugador(J);
        AgregarAdelanteJugadores(L,J,ult);
    end;
    
end;



procedure paresEimpares(J:jugador);
var
    Dpares:integer;
    Dimpares:integer;
    dni:integer;
begin
    dni:= J.dni;
    Dpares:=0;
    Dimpares:=0;
    
    while dni > 0 do begin
        if ((dni mod 2) = 0) then
            begin
            Dpares := Dpares+1;
            end
        else
            begin
            Dimpares := Dimpares+1;
            end;    
        dni := dni div 10;
    end; 

    writeln('el ',j.nombre,' tiene impares : ',Dimpares,' y pares tiene : ',Dpares);

end;

procedure leerLista(L:LJugador);
begin

    while L <> nil do begin
        //writeln('el nombre del jugador es : ', L^.dato.nombre );
        //writeln('el DNI del jugador es : ', L^.dato.dni );
        paresEimpares(L^.dato);
        L := L^.sig;
    end;
    
end;


procedure InsertarOrdenado(var L:LJugador ; j:jugador);
var 
    ant:LJugador;
    act:LJugador;
    nue:LJugador;
begin
    new(nue);
    nue^.dato := j;
    ant:=L;
    act:=L;

    while (act <> nil) and (J.dni > act^.dato.dni) do begin
        ant:= act;
        act:= act^.sig;
    end;

    if (act = ant) then
        begin
            L:= nue;
        end
    else
        begin
            ant^.sig := nue;
        end;
    nue^.sig := act;
end;


procedure agregarOrdenado(var l:LJugador);
var
    J:jugador;
begin
        generarJugador(J);
        InsertarOrdenado(L,J);
end;



var
    L:LJugador;
    ult:LJugador;
begin
    L:=nil;
    ult:=nil;
    writeln('1');
    CargarListaAdelante(L,ult);
    leerLista(L);
    agregarOrdenado(L);
    leerLista(L);

end.
