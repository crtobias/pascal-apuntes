*Respuestas a preguntas y codigos frecuentes en CADP*

#### preguntas teoricas :

* no es posible la utilizacion de las variables glovales para la comunicacion entre los modulos del programa **RESPUESTA :** si es posible ya que podes comunicar el programa entero y todos los modulos mediante una variable global , no es recomendable pero si se puede.
* siempre es posible realizar la eliminacion de un elemento en un vector **RESPUESTA:**  no , ya que no se puede reducir el tamano de un vector porque en pascal tienen tamano definido en tiempo de compilacion , lo que se puede hacer es pisar con otro elemento o otro dato por ejemplo para simular la eliminacion de un numero lo podemos pisar con un 0 pero no estariamos eliminando y ese slot en el array seguiria teniendo un dato.
* un programa modularizado puede no ser correcto **RESPUESTA:** si , un programa modularizado puede no ser correcto ya que si modularizamos un programa tiene que ser util no sirve modulzarizar de mas , tiene que modularizarse de manera logica cada proceso o funcion que se vaya a hacer , ya que no sirve de nada modularizar 1 linea de codigo , tiene que tener un proposito en especifico util y ser reutilizable,
* el acceso de un elemento de una estructura de datos lineales solo es posible atravez de un recorrido secuencial **RESPUESTA:** falso porque por ejemplo a los arrays se puede acceder a una posicion especifica array[2] y a las linked list podes acceder a la primera lista o al ultimo nodo de la lista , en caso de queres buscar un dato en especifico si es necesario hacer un recorrido secuencial.
* siempre es posible declarar un subrango donde su tipo base se cualquier tipo simple visto en la teoris **RESPUESTA:** de los reales y los punteros no es posible escribir un subrango por lo tanto no es verdad no siempre es posible
* incluir modulos en un programa indica que es mas eficiente que un programa que haga lo mismo sin modulos **RESPUESTA:** falso , puede ser mas comodo de manejar o mas util de enteder y mas reutilizable pero no necesariamente mas eficiente en terminos de rendimiento.
#### Preguntas codigo

**(1)** la facultad de informatica organizara el congreso WICC , en donde se expodran trabajos de investigacion , realizar un programa que lea la informacion de cada publicacion : titulo , nombre del autor , dni del autor y tipo de publicacion (1..12). la lectura de la publicacion finaliza al ingresar un dni de auto con valor 0 (el cual no debe procesarse). la informacion se lee orndenada por dni del auto y un auto puede tener variuas publicaciones . se pide escribir un programa que :
a: informe el tipo de publicacion con mayor cantidad de publocaciones.
b: informar para cada autor la cantidad de publicaciones presentadas.



**RESPUESTA**:
```pas

program untitled;
type

lista = ^nodo;

tipoNumero = 1..12;

arrayTipo = array[1..12] of Integer;

publicacion = record
	titulo:string;
	nombre:string;
	dni:integer;
	tipo: tipoNumero ;
end;

nodo = record
	dato:publicacion;
	sig:lista;
end;

procedure cargarNodoLista(var L:lista;D:publicacion);
var
	nue:lista;
begin
	new(nue);
	nue^.dato:=D;
	nue^.sig:=L;
	L:=nue;
end;


procedure generarLista(var L:lista;var A:arrayTipo);
var
	D:publicacion;
begin
	writeln('ingrese TItulo');
	readln(D.titulo);
	writeln('ingrese Nombre');
	readln(D.nombre);
	writeln('ingrese tipo');
	readln(D.tipo);
	writeln('ingrese DNI');
	readln(D.dni);

	
	while D.dni <> 0  do begin
		cargarNodoLista(L,D);
		
		A[D.tipo] := A[D.tipo] + 1;
		
		writeln('es :',A[D.tipo]);
		
		writeln('ingrese titulo');
		readln(D.titulo);
		writeln('ingrese nombre');
		readln(D.nombre);
		writeln('ingrese tipo 1..12');
		readln(D.tipo);
		writeln('ingrese dni o 0 para terminar');
		readln(D.dni);
		
	end;
end;




procedure recorrerInformando(L:lista);
var
	actual:integer;
	dniActual:integer;
begin
	actual:=1;
	dniActual:=0;
	
	dniActual:= L^.dato.dni;
	actual := actual + 1;
	
	while L <> nil do begin
		
		if L^.dato.dni <> dniActual then begin 
		
			writeln('Cantidad de publicaciones es: ', actual, ' y DNI: ', dniActual);

			dniActual:= L^.dato.dni;
			actual := 1;
			
		end else begin
			actual:= actual + 1;
		end;
		
		L:=L^.sig;
	end;
	
	writeln('finalizo la lectura')
end;


procedure informarTipoMayor(cont : ArrayTipo);
var
i:integer;
max: integer;
arrayMax:integer;
begin

max:=0;
arrayMax:=0;

    for i:=1 to 12 do begin
        if cont[i] > max then begin
            max:= cont[i];
            arrayMax := i;
        end;
    end;
    
    writeln('el array maximo es :',arrayMax,' con : ',max);
end;


var
L:lista;
Cont : ArrayTipo;

BEGIN
l:=nil;

generarLista(L,Cont);
recorrerInformando(L);
informarTipoMayor(Cont);
	
END.

```


**(2)** una empresa dispone de una estructura de datos con las ventas de su comercio, de cada venta se conoce numero de venta cantidad de profuctos y tipo de pago efectivo o tarjeta , Se pide implementar un programa que genere una segunda estructura con las ventas cuya cantidad de productos tenga al menos dos digitos pares . en la estrectura generada deben queda almacenada las ventas de tipo pago tarjeta antes que las de tipo  efectivo.

```
program untitled;
type

tipoPago = (efectivo, tarjeta);

lista:^nodo;

venta = record
cant: integer
numeroVenta:integer;
tipo:tipoPago;
end;

nodo = record
dato:venta;
sig:lista;
end;


procedure agregarAdelante(var L:lista;D:venta ;var lUltima:lista);
var
nue:lista;
begin
new(nue);
nue^.dato:=D;

if l=nil then begin
	L:=nue;
	lUltima:=nue;
end else begin
	nue^.sig:=L;
	L:=nue;
end;

end

procedure agregarAtras(var lUltima:lista;D:venta ;var lNueva:lista);
var
nue:lista;
begin
new(nue);
nue^.dato:=D;

if lUltimo=nil then begin
	lUltimo:=nue;
	lNueva:=nue;
end else begin
	lUltimo^.sig:=nue;
	lUltimo:=nue;
end;

end


function dosDigPares(num:integer):boolean;
var
	cont:integer;
	dig:integer;
begin
	cont:=0;
	while num<>0 do begin
		dig:= num mod 10;
		if (dig mod 2) = 0 then
			cont:=cont+1;
		num := num div 10;
	end
	
	dosDigPares := cont > 1;
end;

procedure generarListaNueva(L:lista; var lNue:lista;var lUlt:lista);
begin

	while L <> nil do begin
		
		if dosDigPares(L^.dato.cant) then begin
			if(L^.dato.tipo = 'tarjeta') then begin
				agregarAdelante(lNue,L^.dato,lUlt);
			end else begin 
				agregarAtras(lUlt,L^.dato,lNue);
			end;
		end;
		
		L:L^.sig
	end
end;


var
lOriginal:lista;
lNueva:lista;
lUltimo:lista;
BEGIN
lNueva:=nil;
lUltimo:=nil;

generarListaNueva(lOriginal,lNueva,lUltimo);

END.
```

**(3)** una fabrica de autos nesecita un programa que adminioste las piezad de los diferentes modelos de autos que fabrica . de cada pieza se conoce: codigo de pieza , descripcion , cantidad de stock , costo , codifo del modelo 1..10, stock minimo. la lectura finaliza al leer el codigo de la pieza 9999 el cual debe procesarse.
a) leer y lmacenar la informacion en una estructura adedecuaca de forma que queda almacenada en el orden que fue leida
b) a partir de la estructura genera calcular
* los 2 ciodigos de modelo de autis mas baratos de fabricar
* el promedio de piezad de codifo de modelo 3 cuyo codigo empieza en 9

```pas

```

**(4)** una escuela primatia nesecita un programa para administrar la informacion de preincripcione sal ciclo lectivo 2025. de cada preinscripcion se lee : DNI de alumno , apellid y nombre , fecha de nacimiento de alimno (dia,mes,ano), telefono de contacto , horario de preferencia 1..4 . la lectura finaliza cuando se lee el dni -1 (que no debe procesarse)
* leer y almacena la informacion de la preincipociones en una estructura de datos adecuada , la informacion debe queda almacenada en el mismo orden en que fue leida.
* a partir de su estructura de datos calcular lo sig:
* los dos horarios ma requeridos por alumnos nacidos entre enero y junio
* apellido nombre y telefeno de quello alumnos con dni compuesto solamente por digitos impares
* procetaje de preinciciones  al horario de jornada completa 4
```pas

```

**(5)** codigo libre ejercicio libre para practicar diferentes modulos 
```pas
program practica;

type
tipoArray = array[1..5] of integer;
tipoEdad = 17..80;
tipoFacultad = 0..5 ;

lista = ^nodo;

estudiante = record
	id:integer;
	nombre:string;
	notas:tipoArray;
	edad:tipoEdad;
	facultad:tipoFacultad;
end;


nodo = record
	dato:estudiante;
	sig:lista;
end;

procedure cargarListaOrdenada(var L:lista;D:estudiante);
var
	nue,act,ant:lista;
begin
	new(nue);
	nue^.dato:=D;
	
	act:=L;
	ant:=L;
	
	while  (act<>nil) and (act^.dato.edad < D.edad) do begin 
		ant:=act;
		act:=act^.sig;
	end;
	
	if act=ant then begin
		L:=nue;
	end else begin
		ant^.sig:=nue;
	end;
	
	nue^.sig:=act;
end;

procedure cargarEstudiante(var e:estudiante);
begin
	writeln('ingrese id');
	readln(e.id);
	writeln('nombre');
	readln(e.nombre);
	writeln('edad mayo a 17');
	readln(e.edad);
	writeln('facultad 1-5 o 0 para terminar');
	readln(e.facultad);
end;

procedure generarLista(var L:lista);
var
	D:estudiante;
begin
	
	cargarEstudiante(D);
	while D.facultad <> 0 do begin
		cargarListaOrdenada(L,D);
		cargarEstudiante(D);
	end;
	writeln('terminaste de cargar los estudiantes');
end;

procedure recorrerArray(a:tipoArray);
var
	i:integer;
begin
	for i:=1 to 5 do begin
		writeln('nota ',i,' es :', a[i]);
	end;
end;

procedure recorrerLista(L:lista);
begin
	while L<>Nil do begin
		writeln(' nombre: ',L^.dato.nombre ,' edad: ' ,L^.dato.edad,' id : ',L^.dato.id);
		recorrerArray(l^.dato.notas);
		L:=L^.sig;
	end;
end;

procedure cargarArray(var A:tipoArray);
var
	i:integer;
begin
	for i:=1 to 5 do begin
		writeln('ingrese nota :', i);
		readln(A[i]);
	end;
end;

procedure cargarNotas(L:lista);
var
	id:integer;
begin
	writeln('ingrese id para buscar');
	readln(id);
	
	while (l<>nil) and (l^.dato.id<>id) do begin
		l:=l^.sig;
	end;
	
	if l^.dato.id = id then begin 
		writeln('id encontrado');
		cargarArray(l^.dato.notas)
	end else begin
		writeln('no se encontro el id');
	end;
	
	
end;

var
	L:lista;
BEGIN
	L:=nil;
	generarLista(L);
	recorrerLista(L);
	cargarNotas(L);
	cargarNotas(L);
	recorrerLista(L);
END.


```
