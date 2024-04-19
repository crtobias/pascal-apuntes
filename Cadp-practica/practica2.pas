//5 parte 2////////////////////////////////////////////////////////////////////////////////////////////////
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



//6 parte 2////////////////////////////////////////////////////////////////////////////////////////////////

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


// 7 parte 2 ////////////////////////////////////////////////////////////////////////////////////////////////
//A)////////////////////////////////////////////////////////////////////////////////////////////////
program practica;

procedure Digitos(var numEntero: integer;var sumaDig:integer;var cantDig:integer);
var
    digito: integer;
begin
    sumaDig := 0; 
    cantDig:=0;

    while numEntero <> 0 do
    begin
    digito := numEntero mod 10; 
    sumaDig := sumaDig + digito;      
    numEntero := numEntero div 10;
    cantDig:=cantDig+1;
    end;
    writeln('La suma de los digitos es: ', sumaDig);
end;


var
numEntero:integer;
cantDig:integer;
sumaDig:integer;

begin
numEntero:=0;
cantDig:=0;
sumaDig:=0;

writeln('ingrese numero entero');
readln(numEntero);
Digitos(numEntero , SumaDig , CantDig);
writeln('cantidad de digitos ',cantDig,' y suma de digitos ',sumaDig,'')

end.


//B)////////////////////////////////////////////////////////////////////////////////////////////////


program practica;

procedure Digitos(var numEntero: integer;var sumaDig:integer;var cantDig:integer);
var
digito: integer;
begin

while numEntero <> 0 do
begin
    digito := numEntero mod 10; 
    sumaDig := sumaDig + digito;      
    numEntero := numEntero div 10;
    cantDig:=cantDig+1;
end;
writeln('La suma de los digitos es: ', sumaDig);
end;


var
numEntero:integer;
cantDig:integer;
sumaDig:integer;
i:integer;

begin
numEntero:=0;
cantDig:=0;
sumaDig:=0;

for i := 1 to 3 do
begin
    writeln('ingrese numero entero');
	readln(numEntero);
	Digitos(numEntero , SumaDig , CantDig);
end;

writeln('cantidad de digitos ',cantDig,' y suma de digitos ',sumaDig,'')
end.

//8 parte 2////////////////////////////////////////////////////////////////////////////////////////////////

program practica_modularizado;

procedure SumaYCantidadDigitos(numEntero: integer; var sumaDig: integer; var cantImpares: integer);
var
  digito: integer;
begin
  sumaDig := 0;
  cantImpares := 0;
  
  while numEntero <> 0 do
  begin
    digito := numEntero mod 10; 
    if digito mod 2 <> 0 then
      cantImpares := cantImpares + 1
    else
      sumaDig := sumaDig + digito;
      
    numEntero := numEntero div 10;
  end;
end;

var
  numEntero: integer;
  sumaDig: integer;
  cantImpares: integer;

begin
  repeat
    Write('Ingrese un numero entero (1234 para terminar) y el rango puede estar entre -32768 a 32767: ');
    Readln(numEntero);
    
    if numEntero <> 1234 then
    begin
      SumaYCantidadDigitos(numEntero, sumaDig, cantImpares);
      Writeln('Suma de digitos pares: ', sumaDig);
      Writeln('Cantidad de digitos impares: ', cantImpares);
    end;
  until numEntero = 1234;
  
end.

//9 parte 2 //////////////////////////////////////////////////////////////////


