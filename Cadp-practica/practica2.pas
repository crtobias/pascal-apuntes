//5 parte 2
program practica;

function dobleResultado(num1: integer; num2: integer): boolean;
begin
	if( num1*2 = num2) and (num1 <> 0) and  (num1 <> 0)  then dobleResultado := true
	else dobleResultado :=false;
end;

var
num1 , num2 , pares , paresDobleB : integer;
begin

pares,paresDobleB  := 0;

repeat
	writeln('ingrese 2 numeros');
	readln(num1,num2);
	if((num1 mod 2) = 0 )  and (num1 <> 0) and  (num1 <> 0)  then  pares:= pares+1; 	
	if((num2 mod 2) = 0 )  and (num1 <> 0) and  (num1 <> 0)  then  pares:= pares+1;
	if(dobleResultado(num1,num2)) then paresDobleB := paresDobleB + 1;
until (num1 = 0) and (num2 = 0);
	
writeln('pares ingresados : ',pares,'  y casos en que b es el doble de a : ', paresDobleB);
	
end.

// si se lee la siguiente secuencia: (1,2) (3,4) (9,3) (7,14) (0,0) el programa debe informar los
// valores 4 (cantidad de pares leídos) y 2 (cantidad de pares en los que numB es el doble de numA).

// falso devuelve 3 pares y 2 casos de doble



//6 parte 2

program practica;

type
    producto = record
    precio: integer;
    codigo: integer;
    tipo: string;
    end;


procedure leerProducto(var productoRecibido : producto);
begin
	writeln('ingrese precio codigo y tipo del producto');
	readln(productoRecibido.precio , productoRecibido.codigo );
	readln(productoRecibido.tipo);
end;

var
    datos: producto;
    productomuyBarato,productoBarato,pantalonCaro,precioProm,cantProductos,i,memo,codigo1,codigo2: integer ;

begin
	productomuyBarato := 32767;
	productoBarato :=  32767;
	codigo1:=0;
	codigo2:=0;
	
	pantalonCaro := 0; 
	precioProm := 0;    
	cantProductos := 0; 
	memo := 0; 

    for i := 1 to 5 do
		begin
			leerProducto(datos);
			
			if(datos.precio < productomuyBarato)then 
			begin
				memo:=productomuyBarato;
				productomuyBarato := datos.precio;
				productoBarato := memo;
				
				codigo2 := codigo1;
				codigo1 :=datos.codigo;
			end
			else if(datos.precio < productoBarato)then 
			begin
				productoBarato := datos.precio;
				codigo2 := datos.codigo;
			end;
			
			if(datos.tipo = 'pantalon') then 
			begin
				if(datos.precio > pantalonCaro)then pantalonCaro := datos.precio;
			end;
			
			cantProductos := cantProductos+1;
			precioProm := precioProm + datos.precio;
			
		end;
		
	precioProm:= (precioProm div cantProductos);
	
	writeln('el precio promedio es :' , precioProm );
	writeln('el pantalon mas caro vale : ', pantalonCaro);
	writeln('mas barato codigo:  ', codigo1 ,' y precio : ',productomuyBarato);
	writeln('segundo mas barato codigo:  ', codigo2 ,' y precio : ',productoBarato);

end.


// 7 parte 2