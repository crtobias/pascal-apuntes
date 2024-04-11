//practica 1 parte 1

// 1)
program untitled;
var
	num1,num2:integer;

BEGIN
		writeln('ingrese numero 1');
		readln(num1);
		writeln('ingrese numero 2');
		readln(num2);
		if(num1>num2) then
		begin
			writeln('el numero ',num1,' es el mayor' );
        end
		else
		begin
			writeln('el numero ',num2,' es el mayor' );
		end;
		
END.

//2)

program untitled;
var
	num1:integer;

BEGIN
		writeln('ingrese numero 1');
		readln(num1);
		if(num1 > -1) then
		begin
			writeln(num1);
        end
		else
		begin
			writeln('-',num1 );
		end;
		
END.

//3)

program untitled;
var
	primero,segundo,tercero,memo:integer;

BEGIN
		writeln('ingrese 3 numero');
		readln(primero,segundo,tercero);
		
		
		
		if(segundo > primero) then
		begin
			memo := primero;
			primero := segundo;
			segundo := memo;
        end;
        
        if(tercero > segundo)then
        begin
			memo := segundo;
			segundo := tercero;
			tercero := memo;
			if(segundo > primero) then
			begin
				memo := primero;
				primero := segundo;
				segundo := memo;
			end;
        end;
        writeln(primero, ' ', segundo, ' ', tercero);  
END.

//4)



program untitled;
var
	numreal,doblereal:integer;

BEGIN

		writeln('ingrese un numero real');
		readln(numreal);
		
		writeln('ingrese el doble del numero real anterior');
		readln(doblereal);
		
		
		
		
		while numreal*2 <> doblereal do
		begin
			readln(doblereal)
		end;
		
		writeln('bien el doble de ',numreal,' es ',doblereal);
		
END.

//5)

program untitled;
var
	numreal,doblereal,cont:integer;

BEGIN
		cont := 0;
		writeln('ingrese un numero real');
		readln(numreal);
		
		writeln('ingrese el doble del numero real anterior');
		readln(doblereal);
		
		
		
		
		while cont < 10 do
		begin
		
			writeln('ingrese el doble de ', numreal);
			readln(doblereal);
			
			if (numreal*2 = doblereal ) then
			begin
				writeln('correcto ',doblereal,'es el doble de ',numreal);
				cont := 10;
			end;
			cont := cont+1;
		end;
		
		writeln('fallaste los 10 intentos para sacar el doble de ',numreal);
END.


//6)
program untitled;
var
Lnum,Alumnos,promAlto,promDestacado:integer;
Pnum:real;
BEGIN
	Lnum:=0;
	Pnum:=0;
	Alumnos:=0;
	promAlto:=0;
	promDestacado:=0;
	
	while Lnum <> -1 do
	begin
		writeln('ingrese numero de lejago y promedio del alumno');
		readln(Lnum,Pnum);
		if (Lnum <> -1) then
			begin
				Alumnos := Alumnos+1;
			
				if(Pnum >= 6.5)then
					begin
						promAlto := promAlto+1;
					end;
			
				if(Pnum>=8.5)and(Lnum < 2500)then
					begin
						promDestacado:= promDestacado+1;
					end;
			end;
		
		writeln('cantidad de alumnos leidos:',Alumnos,'.');
		writeln('cantidad de alumnos con promedio supero 6.5 : ', promAlto);
		writeln('alumnos destacados : ',promDestacado);
	end;
	
END.

//7)

program Ejercicio7;

var
  codigo, precioActual, nuevoPrecio: integer;

begin
  writeln('Ingrese el codigo, precio actual y nuevo precio del producto (finalice con código 32767):');

  readln(codigo, precioActual, nuevoPrecio);

  while codigo <> 32767 do
  begin
    if (nuevoPrecio > precioActual * 1.1) then
      writeln('El aumento de precio del producto ', codigo, ' es superior al 10%')
    else
      writeln('El aumento de precio del producto ', codigo, ' no supera el 10%');

    writeln('Ingrese el codigo, precio actual y nuevo precio del producto (finalice con código 32767):');
    readln(codigo, precioActual, nuevoPrecio);
  end;
end.

//8)

program Ejercicio8;

var
  caracter1, caracter2, caracter3: char;

begin
  writeln('Ingrese tres caracteres:');

  readln(caracter1, caracter2, caracter3);

  while (not (caracter1 in ['a', 'e', 'i', 'o', 'u'])) or
        (not (caracter2 in ['a', 'e', 'i', 'o', 'u'])) or
        (not (caracter3 in ['a', 'e', 'i', 'o', 'u'])) do
  begin
    writeln('Al menos un caracter no es una vocal');
    writeln('Ingrese tres caracteres:');
    readln(caracter1, caracter2, caracter3);
  end;

  writeln('Los tres son vocales');
end.

//9)


program Ejercicio9;

var
  operador: char;
  numero, resultado: integer;

begin
  writeln('Ingrese el operador (+ o -) y la secuencia de números enteros (finalice con 0):');

  readln(operador);

  if (operador = '+') or (operador = '-') then
  begin
    resultado := 0;
    readln(numero);

    while numero <> 0 do
    begin
      if operador = '+' then
        resultado := resultado + numero
      else
        resultado := resultado - numero;
      
      readln(numero);
    end;

    writeln('El resultado de la operación es: ', resultado);
  end
  else
  begin
    writeln('Error: Operador no válido.');
  end;
end.




//practica 1 parte 2

//1)
program untitled;
var
MayCinco,num,i:integer;

BEGIN

	MayCinco:= 0;
	
	
	for i := 0 to 10 do
		begin
			writeln('ingrese un numero');
			readln(num);
			if(num > 5)then
			begin
				MayCinco := MayCinco +1;
			end;
		end;
	
	writeln('la cantidad de numero mayores a cinco son : ',MayCinco);
END.

//2)
program untitled;
var
May,num,i,posicion,posicionFinal:integer;

BEGIN
	posicion:=0;

	May:= 0;
	posicionFinal:=0;
	
	
	for i := 0 to 10 do
		begin
			writeln('ingrese un numero');
			readln(num);
			posicion := posicion+1;
			if(num > May)then
			begin
				May := num;
				posicionFinal := posicion;
			end;
		end;
		
	writeln('el numero mayor es: ',May,' y su posicion es :',posicionFinal);
		
END.
//3)
program untitled;

var
    nombre: string;
    nota: integer;
    aprobados, siete: integer;

begin
    aprobados := 0;
    siete := 0;

    writeln('Ingrese el nombre y la nota del alumno (o "Zidane Zinedine" para finalizar):');

    repeat
    readln(nombre);
    if nombre <> 'Zidane Zinedine' then
		begin
			readln(nota);
			if nota >= 8 then
			aprobados := aprobados + 1
			else if nota = 7 then
			siete := siete + 1;
			writeln('Cantidad de alumnos aprobados (nota 8 o mayor): ', aprobados);
			writeln('Cantidad de alumnos que obtuvieron un 7 como nota: ', siete);
		end;
		
    until nombre = 'Zidane Zinedine';

    writeln('Cantidad de alumnos aprobados (nota 8 o mayor): ', aprobados);
    writeln('Cantidad de alumnos que obtuvieron un 7 como nota: ', siete);
end.

//4)

program untitled;


var
  numero, min1, min2: integer;

begin
  writeln('Ingrese numeros enteros (el proceso finaliza al ingresar 0):');
  readln(numero);
  
  min1 := numero;
  min2 := MaxInt;

  while numero <> 0 do
  begin
    if numero < min1 then
    begin
      min2 := min1;
      min1 := numero;
    end
    else if (numero < min2) and (numero <> min1) then
    begin
      min2 := numero;
    end;
    
    readln(numero);
  end;

  writeln('Los dos numeros minimos son: ', min1, ' y ', min2);
end.


//5)
program Ejercicio5;

var
  numero, maximo, minimo, suma: integer;

begin
  maximo := -MaxInt;
  minimo := MaxInt;
  suma := 0;

  writeln('Ingrese numeros enteros (el proceso finaliza al ingresar el numero 100):');

  repeat
    readln(numero);
    if numero <> 100 then
    begin
      if numero > maximo then
        maximo := numero;
      if numero < minimo then
        minimo := numero;
      suma := suma + numero;
    end;
  until numero = 100;

  writeln('El numero máximo leído es: ', maximo);
  writeln('El numero mínimo leído es: ', minimo);
  writeln('La suma total de los números leidos es: ', suma);
end.

//6)


program Ejercicio6;

var
  codigo, precio, cont, codigo1, codigo2: integer;
  precio1, precio2: real;
  mas16conPar: integer;

begin
  codigo1 := 0;
  codigo2 := 0;
  precio1 := MaxInt;
  precio2 := MaxInt;
  mas16conPar := 0;

  for cont := 1 to 200 do
  begin
    writeln('Ingrese codigo y precio del producto ', cont, ':');
    readln(codigo, precio);

    if precio < precio1 then
    begin
      precio2 := precio1;
      codigo2 := codigo1;
      precio1 := precio;
      codigo1 := codigo;
    end
    else if precio < precio2 then
    begin
      precio2 := precio;
      codigo2 := codigo;
    end;

    if (precio > 16) and (codigo mod 2 = 0) then
      mas16conPar := mas16conPar + 1;
  end;

  writeln('Los codigos de los dos productos mas baratos son: ', codigo1, ' y ', codigo2);
  writeln('La cantidad de productos de mas de 16 pesos con codigo par es: ', mas16conPar);
end.
//7)


program Ejercicio7;

var
  nombre, primero, segundo, ultimo1, ultimo2: string;
  tiempo, tiempo1, tiempo2, tiempoUltimo1, tiempoUltimo2: real;
  cont: integer;

begin
  primero := '';
  segundo := '';
  ultimo1 := '';
  ultimo2 := '';
  tiempo1 := MaxInt;
  tiempo2 := MaxInt;
  tiempoUltimo1 := -MaxInt;
  tiempoUltimo2 := -MaxInt;

  for cont := 1 to 100 do
  begin
    writeln('Ingrese nombre del piloto y tiempo total que le tomo finalizar la carrera del auto ', cont, ':');
    readln(nombre, tiempo);

    if tiempo < tiempo1 then
    begin
      tiempo2 := tiempo1;
      segundo := primero;
      tiempo1 := tiempo;
      primero := nombre;
    end
    else if tiempo < tiempo2 then
    begin
      tiempo2 := tiempo;
      segundo := nombre;
    end;

    if tiempo > tiempoUltimo1 then
    begin
      tiempoUltimo2 := tiempoUltimo1;
      ultimo2 := ultimo1;
      tiempoUltimo1 := tiempo;
      ultimo1 := nombre;
    end
    else if tiempo > tiempoUltimo2 then
    begin
      tiempoUltimo2 := tiempo;
      ultimo2 := nombre;
    end;
  end;

  writeln('Los nombres de los dos pilotos que finalizaron en los dos primeros puestos son: ', primero, ' y ', segundo);
  writeln('Los nombres de los dos pilotos que finalizaron en los dos últimos puestos son: ', ultimo1, ' y ', ultimo2);
end.
//8)


program Ejercicio8;

var
  monto, dia, mayorVentas, totalVentas, maximoVentas: integer;

begin
  totalVentas := 0;
  mayorVentas := 0;
  maximoVentas := 0;

  writeln('Ingrese los montos de las ventas realizadas por día (finalice con 0):');


  dia := 1;
  repeat
    write('Día ', dia, ': ');
    readln(monto);
    if monto <> 0 then
    begin
      totalVentas := totalVentas + monto;
      if monto > mayorVentas then
      begin
        mayorVentas := monto;
        maximoVentas := dia;
      end;
      dia := dia + 1;
    end;
  until monto = 0;


  writeln('Monto total acumulado en ventas: ', totalVentas);


  writeln('El día con mayores ventas fue el día ', maximoVentas, ' con un monto de ', mayorVentas);
end.
