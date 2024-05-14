program Lejemplo;
type 
//creo tipo lista que es un  puntero de nodo
lista = ^nodo;
//tipo jugador
jugador = record
    nivel:integer; 
    tag:string;
    edad:integer;
    end;
// nodo registto de jugadores y lista(nodos)
nodo = record
    dato:jugador;
    sig: lista;
    end;
procedure agregarAdelante(var L:lista; J:jugador);
    var
        nue:lista;
    begin
        new(nue); //creo nod;
        nue^.dato := J; //cargo daor
        nue^.sig := L; //realizo enlace con sig
        L:=nue; //actualizo el primero
end;
procedure cargarLista(var L:lista);
    var
        j:jugador;
    begin
        writeln('ingrese nivel');
        readln(j.nivel);
        writeln('ingrese tag');
        readln(j.tag);
        writeln('ingrese edad');
        readln(j.edad);
        agregarAdelante(L,j)//agrego el nodo con jugador
end;




var //principal
L:lista;
begin
L:=nil;
writeln('hola');
cargarLista(L);
cargarLista(L);
cargarLista(L);



writeln('es :',L^.dato.nivel);

end.
