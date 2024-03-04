//tipos de datos de pascal ---------------------------------------------------------



program InicializarTiposDeDatos;

var
    entero: integer; //entero  4 10 13 etc etc

    realNum: real; //num real 3.14

    caracter: char;// 'S'

    booleano: boolean;// TRUE OR FALSE

    cadena: string;// 'Hola etc etc'

    arreglo: array[1..3] of integer;  // [[1],[4],[16]]

    registro: record  //guarda diferentes datos en uno solo
        Nombre: string;
        Edad: integer;
    end;//fin de la definicion de registro


    numero: integer; // Declara una variable entera llamada "numero"



    puntero: ^integer; // Declara un puntero a un entero llamado "puntero"

begin
    // como darle valores a las variables de diferentes tipos
    entero := 10;

    realNum := 3.14;

    caracter := 'A';

    booleano := true;

    cadena := 'Hola';

    arreglo[1] := 100; // asigna 100 a la primera posicion del array 
    arreglo[2] := 200; // asigna 200 a la segunda posicion del array  "el nombre del array es arreglo"
    arreglo[3] := 5; // asigna 5 a la terceera posicion  del array

    registro.Nombre := 'Juan';
    registro.Edad := 30;

    numero := 42; // Asigna el valor 42 a la variable entera "numero"

    puntero := @numero; // Asigna la dirección de memoria de "numero" al puntero "puntero"
    
end.





// estructura basica de un programa----------------------------------------------------




program Calculadora; // Nombre del programa
uses
    SysUtils; // Se utiliza la biblioteca SysUtils


var
    num1, num2: integer; // Variables declaradas como numero entero


// Función para sumar dos números   function=proceso 
function Sumar(a, b: integer): integer;
begin //comienzo del proceso
    Sumar := a + b;
end;// fin cel proceso


begin // comienzo 
    // Solicitar al usuario dos números
    write('Ingrese el primer número: ');
    readln(num1);
    write('Ingrese el segundo número: ');
    readln(num2);
    // Calcular la suma utilizando la función Sumar
    writeln('La suma de ', num1, ' y ', num2, ' es: ', Sumar(num1, num2));
    // Esperar a que el usuario presione Enter para salir
    readln;
end. //fin



//Estructuras de control de pascal------------------------------------------------------------------------