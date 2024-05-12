program ejercicio;

const
  Tam = 5;
type
  arrayAlumnos = array[1..tam] of string;


procedure ReadAlumnos(var a:arrayAlumnos;var dl:integer);
  var
    flag:boolean;
    Lmemo:string;
  begin
    flag:=true;
    while (flag=true) and (dl < tam) do
    begin
      writeln('Ingrese nombre de alumno o ZZZ para terminar');
      readln(Lmemo);

      if Lmemo = 'ZZZ' then
        begin
          flag:=false;
        end
      else
        begin
          dl := dl+1;
          a[dl]:=Lmemo;
        end;
    end;
  end;

procedure Delete(var a:arrayAlumnos;var dl:integer);
  var
  Dname:string;
  pos,i,j:integer;
  flag:boolean;
  cont:integer;
  begin
    writeln('que nombre quiere eliminar?');
    readln(Dname);
    flag:=true;
    cont:=1;
    pos:=0;

      while (flag=true) and (cont <= dl) do
      begin
        if a[cont] = Dname then
          begin
            flag := false;
            pos := cont;
          end;
        cont := cont+1;
      end;

      if pos <> 0 then
        begin
          for j:=pos to dl do
            begin
              a[j] := a[j+1]
            end;
          dl := dl-1;
        end
      else
        begin
          writeln('no se encontro ', Dname);
        end;
      
  end;

procedure PosCuatro(var a:arrayAlumnos;dl:integer);
  var
    Cname:string;
  begin
    writeln('que nombre quiere colocar en pos 4?');
    readln(Cname);
    if dl >= 4 then
      begin
        a[4] := Cname;
        writeln('nombre colocado en pos 4');
      end
    else
      begin
        writeln('lo siento el array no tiene pos 4');
      end;
  end;
procedure Agregar(var a:arrayAlumnos;var dl:integer);
  var
    Aname:string;
  begin 
    writeln('que nombre quieres agregar al vector?');
    readln(Aname);
    if dl = tam then
      begin
        writeln('lo siento no hay espacio en el vector');
      end
    else
      begin
        a[dl + 1] := Aname;
        dl := dl+1;
        writeln('nombre agregado al vector :');
      end;
  end;



var
dl:integer;
Alumnos:arrayAlumnos;
j:integer;
begin
dl:=0;

ReadAlumnos(Alumnos,dl);

Delete(Alumnos,dl);

PosCuatro(Alumnos,dl);

Agregar(Alumnos,dl);

for j := 0 to dl do
  begin
    writeln(Alumnos[j]);
  end;
writeln('dimensio logica = ',dl)
end.

