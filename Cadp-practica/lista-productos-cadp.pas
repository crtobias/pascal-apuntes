program test;

type

prod = record
    nombre:string;
    marca:string
    rubro: 1..15;
end;
//array principal con productos
productos : array[1..2000] of prod;

fec = record //fecha tipo
    dia: 1..31;
    mes: 1..13;
end;

lista : ^nodo;  //lista de productos
listaPedidos : ^nodoPedidos; // lista de pedidos

nodoPedidos = record  //nodo de pedidos
    dato: pedido;
    sig: listaPedidos;
end;

productoPedir = record
    cant:integer; //cantidad de compra
    pr:integer; //int del prducto productos[2]
end;

nodo = record //nodo de productos del pedido
    dato: productoPedir;
    sig: lista;
end;

pedido = record //pedido
    fecha: fec;
    num: integer;
    productos: lista;
end;

conteoArray : array[1..15] of integer;


//lpedidos lista de pedidos cargadas //nodo pedido
//cArray para contar 1..15
//Aproductos lista de productos iniciales 1..2000

procedure consginaA(Lpedidos:listaPedidos;var cArray:conteoArray; Aproductos:productos);
begin

    while (Lpedidos <> nil) do begin
        while (Lpedidos^.pedido.productos <> nil) do begin
            //posicion del producto actual
            //Aproductos[Lpedidos^.pedido.productos^.dato.pr].rubro

            //cantidad de producto actual
            // Lpedidos^.pedido.productos^.dato.cant 
            
            //en el array en el que cuento los 15 rubros sumo la cantidad de productos 
            // que hay en cada rubro

            cArray[Aproductos[Lpedidos^.pedido.productos^.dato.pr].rubro] :=  cArray[Aproductos[Lpedidos^.pedido.productos^.dato.pr].rubro] + Lpedidos^.pedido.productos^.dato.cant 
            //cArray[posiciondel producto.rubro] := cArray[posiciondel producto.rubro] + cantidad de pedidos
            

            Lpedidos^.pedido.productos := Lpedidos^.pedido.productos^.sig;            
        end;
        Lpedidos := Lpedidos^.sig;
    end;

    //imprimo el array
    for i:=1 to 15 do begin
        writeln('cantidad de producto en el rubro ', i ,'  son  ', cArray[i])
    end;

end;
