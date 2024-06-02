// 4. Una maternidad dispone información sobre sus pacientes. De cada una se conoce: nombre, apellido y peso
// registrado el primer día de cada semana de embarazo (a lo sumo 42). La maternidad necesita un programa
// que analice esta información, determine e informe:
// a. Para cada embarazada, la semana con mayor aumento de peso.
// b. El aumento de peso total de cada embarazada durante el embarazo.


Lpaciente = ^Npaciente;
LPeso = ^Npeso; 

Npaciente = record
    dato:pac;
    sig:Lpaciente;
end;


Npeso = record
    dato:peso;
    sig:LPeso;
end;

pac = record
    nombre:string;
    apellido:string;
    peso:Lpeso;
end;

peso = record
    semana:integer;
    peso:real;
end;

procedure aumentoPesoTotal( P:pac);
var
    pesoinicial :real;
    pesoaumentado:real;
begin
    pesoinicial:= P.peso.dato.peso;
    pesoaumentado:=0;
    while P.peso <> nil do begin
        pesoaumentado := pesoaumentado + ( ^P.peso.sig.dato.peso - pesoinicial)   ;
        pesoinicial:=  ^P.peso.sig.dato.peso;
        P.peso := P.peso.sig ;
    end;
    writeln ('peso total del ',P.nombre 'es de : ',pesoaumentado);
end

procedure mayorAumento( P:pac);
var
    pesoinicial :real;
    pesoaumentado:real;
    contadorSemana:integer;
begin
    pesoinicial:= P.peso.dato.peso;
    pesoaumentado:=0;
    contadorSemana:=0;

    while P.peso <> nil do begin

        if ( ^P.peso.sig.dato.peso - pesoinicial) > pesoaumentado then
            begin
                pesoaumentado := ( ^P.peso.sig.dato.peso - pesoinicial)
                contadorSemana := ^P.peso.sig.dato.semana ;
            end
        
        P.peso := P.peso.sig ;
    end;

    writeln ('peso mayor de : ',P.nombre 'es de : ',pesoaumentado ,' en la semana : ',contadorSemana);

end



procedure recorrerLista(L)
begin
    while L <> nil de begin
        aumentoPesoTotal(L.dato)
        mayorAumento(L.dato)
        L := ^L.sig
    end;
end


procedure cargarLista(Var L:Lpaciente); //se dispone

var
    L:Lpaciente;
begin
    L:=nil;
    cargarLista(L); //se dispone
    recorrerLista(L);
end.
