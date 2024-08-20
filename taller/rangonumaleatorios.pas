
program NumAleatorio;
var ale: integer; i:integer; a:integer; b:integer; rango:integer;
begin



   writeln('ingrese el min');
   readln(a);
   writeln('ingrese el Max');
   readln(b);

   ale:= a;

   randomize;
   for i:= 1 to 10 do
   begin
      
   rango := b-a+1;
   
   ale := a + random(rango)  ;
   writeln ('El número aleatorio generado es: ', ale);
   end; 

end.
