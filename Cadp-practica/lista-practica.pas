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

procedure DeleteDato(L:lista ; tag:string);
    var
    ant,act,dsp:lista;
    begin
    act:=L;
    while act^.dato.tag <> tag do begin
        ant:= act;
        act:= act^.sig;
        dsp:=act^.sig;
    end;

    if act^.dato.tag = tag then
      begin
        ant^.sig := dsp;
        dispose(act);
        act := nil;
        writeln('dato eliminado');
      end
    else
    begin
        writeln('no se encontro el dato');
    end;

end;

procedure ReadList(L:lista);
    var
        act :lista;
    begin   
        act := L;
        while act <> nil do begin
            writeln('niv :', act^.dato.nivel);
            writeln('edad :', act^.dato.edad);
            writeln('tag :', act^.dato.tag);
            act := act^.sig
        end
    end;


var //principal
L:lista;
begin

L:=nil; //inicio mi lista en nil

writeln('hola');

cargarLista(L); //
cargarLista(L);   //cargo tres datos en la lista
cargarLista(L); //



ReadList(L); //read de lista

DeleteDato(L, 'pepe'); //busca el dato pepe y elimina

end.




