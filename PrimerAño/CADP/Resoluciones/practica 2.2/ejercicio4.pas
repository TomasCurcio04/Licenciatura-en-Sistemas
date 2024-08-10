program programadores;
procedure leerDatos(var legajo: integer; salario : real); //el procedimiento recibe en legajo el salario y en salario recibe el legajo. Error de tipos.Ademas salario esta pasado como parametro por valor y al terminar el procedimiento no retorna el valor que quedo en la variable
begin
    writeln('Ingrese el nro de legajo y el salario');
    read(legajo);
    read(salario);
end;
procedure actualizarMaximo(nuevoLegajo:integer; nuevoSalario:real; var maxLegajo:integer); //Deberia agregarse un parametro por referencia maxSalario
var
    maxSalario : real;
begin
    if (nuevoLegajo > maxLegajo) then begin //Intenta comparar un legajo con basura
        maxLegajo:= nuevoLegajo;
        maxSalario := nuevoSalario //el procedimiento no retorna el maxSalario porque no tiene un parametro por referencia para que se devuleva el valor
    end;
end;
var
    legajo, maxLegajo, i : integer;
    salario, maxSalario : real;
begin
    sumaSalarios := 0; //sumaSalarios no esta declarado como variable
    for i := 1 to 130 do begin
        leerDatos(salario, legajo);
        actualizarMaximo(legajo, salario, maxLegajo); //maxLegajo no esta inicializado y falta mandar por parametro la variable maxSalario
        sumaSalarios := sumaSalarios + salario;
    end;
    writeln('En todo el mes se gastan ', sumaSalarios, ' pesos');
    writeln('El salario del empleado mas nuevo es ',maxSalario); //maxSalario nunca se actualizo e imprime cualquier cosa.
end.
