program test;

type

//2000 productos con name , marca ,rubos(1..15)

prod = record
    nombre:string;
    marca:string
    rubro: 1..15;
end;

productos : array[1..2000] of prod;


fec = record
    dia: 1..31;
    mes: 1..13;
end;

lista : ^nodo;  //lista de productos
listaPedidos : ^nodoPedidos; // lista de pedidos

nodo = record 
    dato: pedido;
    sig: listaPedidos;
end;

productoPedir = record
    cant:integer;
    pr:prod;
end;

nodo = record
    dato: productoPedir;
    sig: lista;
end;

pedido = record
    fecha: fec;
    num: integer;
    productos: lista;
end;

