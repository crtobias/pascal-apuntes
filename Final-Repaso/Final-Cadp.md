*Este es un resumen de CADP el cual contiene la mayoria de contenidos vistos en la materia . solo para uso de repaso ya que hay muchos temas mas que toca a profundidad la materia que aca no estan porque son conceptos o muy simples o cosas muy teoricas como la modularizacion o conceptos basicos de que es un algoritmo y sus diferentes tipos*

Recomendale usar ctrl + f para buscar una palabra o tema en especifico que estes intentenado estudiar.
##### arrays
mas alla de saber leer o escribir datos de un vector con read write accediendo en una posicion array[5] , tenemos que tener en cuenta , la **DF**(dimesion del array que tiene en total ) y **DL**(dimension del array que tienen datos) por ejemplo:
[0,4,6,2,null,null,null] este array tiene DF :7 y DL: 4
##### parametros de valor o referencia
los parametros son una forma de pasar valores a las funciones/procedures y existen dos formas de usar params , es estos ejemplos en una modificamos el nombre que recibimos en en otro no , entonces al salir del procedure por valor (el que no tiene var) el nombre va a seguir igual que cuando entro.
* valor solo pasamos el valor de la variable por lo que **no vamos a modificar** la variables original ej : `procedure prueba(nombre:string);`
* referencia es cuando pasamos la variable entera por lo que **si la vamos a modificar** ej: `procedure prueba(var nombre:string);`

##### Variables Globales ejemplo
si estan detro de una funcion o un procedure alcanzan solo a ese sector y si estan en el programa alcanzan solo al programa pero las globales abarcan todo , ej de donde van:
```js
program alcance;
var a,b:integer;
```
#### tipos de datos
* Compuestos : array , records , string.
* Simples : Todos los demas , integer , real , bool , chars , enumerados o subrangos.
##### tipos de datos estructurados
* Homogeneos: Array ya que contiene el mismo tipo de datos siempre.
* Heterogeneos: Record ya que puede contener muchos tipos de datos.

##### Tipos de Datos Estáticos vs. Dinámicos
- Estáticos: Se define su tamaño en tiempo de compilación (Ejemplo: `array[1..10] of integer`)

- Dinámicos: Su tamaño puede cambiar en tiempo de ejecución (Ejemplo: listas enlazadas, punteros)

![[Pasted image 20250207110815.png]]
##### Estructura de datos lineales y no
* estructuras lineales : array , linked lists , (stack y queues tambien pero no se ven en cadp)
* estructura no lineales: arboles, grafos, hash tables (cosas que no se ven en CADP)
 **importante** hay muchos ejercicios que son como sacar el numero para sacar el impar etc etc
✅ `div` devuelve la **parte entera** de la división.  
✅ `mod` devuelve el **resto** de la división.

digito = num mod 10
digito mod 2 = 0 => par
-digito = num div 10
### Guia
Temas Principales a tener en cuenta a la hora de rendir :
* Uso adecuado de estructuras de Datos (Muy importante)
* estructuras de control adecuadas (Muy importante)
* optimizacion de recursos
* uso adecuado de recorridos
* Inertar atras adelante y ordenado en una lista

##### Estructuras de Datos
al leer las consignas o el problema a resolver hay que tener muy en cuenta lo que nos piden , por ejemplo si sabemos que vamos a tener un listado de 50 estudiantes vamos a tener que usar un array porque ya nos estan diciendo que vamos a tener como maximo 50 estudiantes , pero si el enunciado dice guardar un listado de estudiantes , no sabemos cuantos estudiantes vamos a tener por lo que vamos a tener que usar una lista para que puedan entrar todos los estudiantes disponible
#### sintaxis
``` js
program PascalExample;

{ Tipos personalizados }
type
  TColor = (Red, Green, Blue);          { Tipo enumerado }
  TDays = (Monday, Tuesday, Wednesday); { Otro enumerado }
  TArray10 = array[1..10] of Integer;   { Arreglo }
  TPerson = record                     { Registro o struct }
    Name: String[50];
    Age: Integer;
    Gender: Char;
  end;

var
  { Variables de tipos básicos }
  num: Integer;           { Entero }
  decimal: Real;          { Real }
  letra: Char;            { Carácter }
  texto: String;          { Cadena }
  esVerdad: Boolean;      { Booleano }

  { Variables de tipos personalizados }
  favoriteColor: TColor;
  today: TDays;
  numbers: TArray10;
  person: TPerson;

begin
  { Asignaciones }
  num := 42;
  decimal := 3.14;
  letra := 'A';
  texto := 'Hola, mundo';
  esVerdad := True;

  { Asignación de tipos personalizados }
  favoriteColor := Green;
  today := Monday;
  numbers[1] := 100;
  person.Name := 'Carlos';
  person.Age := 25;
  person.Gender := 'M';

  { Estructuras de control }

  { Condicional IF }
  if esVerdad then
    WriteLn('Es verdadero.')
  else
    WriteLn('Es falso.');

  { Bucle FOR }
  for num := 1 to 5 do
    WriteLn('Número: ', num);

  { Bucle WHILE }
  num := 1;
  while num <= 3 do
  begin
    WriteLn('WHILE número: ', num);
    num := num + 1;
  end;

  { Bucle REPEAT UNTIL }
  num := 1;
  repeat
    WriteLn('REPEAT número: ', num);
    num := num + 1;
  until num > 3;

  { CASE (Switch) }
  case favoriteColor of
    Red: WriteLn('Color favorito es Rojo.');
    Green: WriteLn('Color favorito es Verde.');
    Blue: WriteLn('Color favorito es Azul.');
  else
    WriteLn('Color desconocido.');
  end;
end.

```

## memoria 

*en cadp tocan el tema de la memoria al usar punteros como la mayoria de lenguajes de bajo nivel. recordemos que la memoria esta formada de dos partes stack(memoria estatica: limite del tam y se organiza automaticamente) y heap(memoria dinamica) .*

##### formas de usar memoria dinamica(heap)
* hola := ^string (transformamos a hola en un puntero a un string que se va a encontrar en el heap)
* new(hola) se reserva memoria para hola en el heap 
* hola^ := 'SALUDO O STRING' se usa para asignar valor a hola 
* writeln(hola^) se usa para llamar a hola
* Para liberar esa memoria dispose(hola)
* y con nil podemos liberar la conexion osea seguira ecistiendo pero no podras acceder a ella porque no tendras ninguna variable que apunte a esa posicion.

#### array
DL(espacio usado) Y DF(tamano total) dimesion fisica y logica ya sea de arrays o listas

### Function / Procedure
Function(var dato:integer) => lo que estamo diciendo aca es que lo estamos pasando por referencia por lo que si cambiamos algo de dato se va a modificar el original y todo gracias al VAR antes de la variable

cuando usar cada uno?
* function : siempre va a responder algo 
* procedure : cuando no nesecitamos ninguna respuesta solo queremos cambiar cosas o calcular algo
```js
procedure Saludar(nombre: String);
begin
	WriteLn('Hola, ', nombre, '!');
end;

function Sumar(a, b: Integer):Integer;
begin
	Sumar := a + b;
end;
```


#### Listas
ejemplo de una lista de personas :

En este caso tenemos lista que es de tipo nodo en la memoria dinamica(heap) , y dentro del nodo decimos que va a esta conectado a otra lista con sig y que va a guardar el dato de tipo persona.

``` js
  lista = ^tipoNodo;

  tipoPersona = record                
    name: String[50];
    age: Integer;
    gender: Char;
  end;

  tipoNodo = record
    dato:tipoPersona;
    sig:lista;
  end;
```

Hay que tener en cuenta que una lista es un nodo anidado a otros y por lo tanto podemos agregar atras o adelante del nodo , eso va a afectar donde va a quedar nuestro puntero inicial del nodo , por lo que es muy **IMPORTANTE** aprender a manera el agregado de nodo y el recorrido de las listas misma

![[Pasted image 20250127121812.png]]

### Ejemplos Listas agregados
##### agregar atras 
```js


procedure AgregarAtrasJugadores(var L:LJugador; j:jugador ;var ult:LJugador);
var
    nue:LJugador;
begin
    new(nue);
    nue^.dato:=J;
    nue^.sig:=nil;

    if L=nil then
        begin
            L:=nue;
        end
    else
        begin
            ult^.sig := nue;
        end;
    ult:=nue;
end;

procedure CargarListaAtras(var L:LJugador;var ult:LJugador);
var
    tam:integer;
    J:jugador;
    i:integer;
begin
    tam:=1;
    
    for i:=1 to tam do begin
        generarJugador(J);
        AgregarAtrasJugadores(L,J,ult);
    end;
    
end;

```
##### agregar adelante
``` js
procedure AgregarAdelanteJugadores(var L:LJugador; J:jugador ; var ult:LJugador);
var
    nue : LJugador;
begin
    new(nue);
    nue^.dato := J;
    nue^.sig := L;
    L:=nue;
    if L^.sig = nil then
        ult:=L;
end;

procedure CargarListaAdelante(var L:LJugador;var ult:LJugador);
var
    tam:integer;
    J:jugador;
    i:integer;
begin
    tam:=2;
    
    for i:=1 to tam do begin
        generarJugador(J);
        AgregarAdelanteJugadores(L,J,ult);
    end;
    
end;


```
##### agregar ordenado
```js

procedure InsertarOrdenado(var L:LJugador ; j:jugador);
var 
    ant:LJugador;
    act:LJugador;
    nue:LJugador;
begin
    new(nue);
    nue^.dato := j;
    ant:=L;
    act:=L;

    while (act <> nil) and (J.dni > act^.dato.dni) do begin
        ant:= act;
        act:= act^.sig;
    end;

    if (act = ant) then
        begin
            L:= nue;
        end
    else
        begin
            ant^.sig := nue;
        end;
    nue^.sig := act;
end;


procedure agregarOrdenado(var l:LJugador);
var
    J:jugador;
begin
        generarJugador(J);
        InsertarOrdenado(L,J);
end;
```
### calculo de memoria
![[Pasted image 20250207110601.png]]
![[Pasted image 20250207110623.png]]
#### Tiempo de ejecuccion
![[Pasted image 20250207110522.png]]

