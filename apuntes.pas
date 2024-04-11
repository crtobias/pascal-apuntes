//para todos estos apuntes pueden usar consola de linux
//o si estan en windows pueden usar tabby
//algo a tener en cuenta para ejecutar tu codigo a la hora de ejecutarlo en la consola

//   fpc "nombre del archivo.pas para crear el .exe"  ==> esto es para crear el .exe
//   ./test.exe  ==> para ejecutar el .exe 



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

// al decir bloque de codigo nos referimos a

begin
  // Bloque de código si la condición es verdadera
end;



if (condición) then //si o no
  // Bloque de código si la condición es verdadera
else
  // Bloque de código si la condición es falsa


while (condición) do  //mientras
  // Bloque de código que se ejecuta mientras se cumple la condición

repeat
  // Bloque de código que se ejecuta al menos una vez
until (condición);//por ejemplo var = 10 hasta que la variable no valga 10 se va a repetir



for variable := valor_inicial to valor_final do     //1 to 10 do y se repeti del 1 al 10
  // Bloque de código que se ejecuta en cada iteración

