
//leer sondas hasta que ingrese una llamada
//GAIA y debe procesarce

// A) sonda mas costosa (costo+(mantxduracion))

// B) cant de sondas en cada rango 1...7

// C) cantidad de sondas que su duracion supera el 
// promedio de duracion

// D) name de sondas que superan el promedio de
// costo 

program SeisListas;

type

lista = ^nodo;

rangos = record
    num:integer;
// tipo:string;//agrego el tipo o elijo del 1 al 7
end;

sonda = record
    nombre:string;
    duracion:real;
    costo:real;
    mant:real;
    rango: rangos;
end;

nodo = record
    dato:sonda;
    sig:lista;
    end;


procedure agregarAdelante(var L:lista; S:sonda);
    var
        nue:lista;
    begin
        new(nue); //creo nod;
        nue^.dato := S; //cargo daor
        nue^.sig := L; //realizo enlace con sig
        L:=nue; //actualizo el primero
end;

procedure cargarLista(var L:lista);
    var
        s:sonda;
    begin
    s.nombre := '';
        while s.nombre  <> 'GAIA' do begin
            writeln('nombre');
            readln(s.nombre);
            writeln('duracion');
            readln(s.duracion);
            writeln('costo');
            readln(s.costo);
            writeln('mant');
            readln(s.mant);
            writeln('rango del 1 al 7');
            readln(s.rango.num);
            agregarAdelante(L,s);
        end;

        writeln('Lectura Finalizada con GAIA');
end;


// A)
procedure obtenermayor(L:lista ;var Max:real;var MaxName:string);
begin
    if Max < (L^.dato.costo + (L^.dato.mant * L^.dato.duracion)) then
        begin
            Max := (L^.dato.costo + (L^.dato.mant * L^.dato.duracion));
            maxName := l^.dato.nombre;
        end;
end;

// b) 
procedure obtenerRangos(L: lista; var rango1, rango2, rango3, rango4, rango5, rango6, rango7: integer);
begin
    case L^.dato.rango.num of
        1: rango1 := rango1 + 1;
        2: rango2 := rango2 + 1;
        3: rango3 := rango3 + 1;
        4: rango4 := rango4 + 1; //nose si se puede usar case
        5: rango5 := rango5 + 1; //pero sino usar muchos if
        6: rango6 := rango6 + 1;
        7: rango7 := rango7 + 1;
    end;
end;

procedure RecorrerLista(L:lista);
    var
        Max:real;
        MaxName:string;
        rango1,rango2,rango3,rango4,rango5,rango6,rango7:integer;
    begin
    Max:=0;
    MaxName:='';
    rango1 := 0;
    rango2 := 0;
    rango3 := 0;
    rango4 := 0;
    rango5 := 0;
    rango6 := 0;
    rango7 := 0;

    writeln('Comienza el recorrido');
    while L <> nil do begin
        obtenermayor(L,Max,MaxName);
        obtenerRangos(l,rango1, rango2, rango3, rango4, rango5, rango6, rango7);
        L := L^.sig;
    end;


    writeln('Cantidad de sondas en el rango 1: ', rango1);
    writeln('Cantidad de sondas en el rango 2: ', rango2);
    writeln('Cantidad de sondas en el rango 3: ', rango3);
    writeln('Cantidad de sondas en el rango 4: ', rango4);
    writeln('Cantidad de sondas en el rango 5: ', rango5);
    writeln('Cantidad de sondas en el rango 6: ', rango6);
    writeln('Cantidad de sondas en el rango 7: ', rango7);
    writeln('el mayor es ' ,MaxName,' con :', Max );


end;





var
L:lista;
begin
L:=nil;

cargarLista(L);
RecorrerLista(L);

end.
