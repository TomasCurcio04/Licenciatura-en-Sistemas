program ejercicio6;
procedure leerNumeros;
var
    num, max: integer;
begin
    writeln('Ingrese un numero entero');
    readln(num);
    max:= maxint*-1;
    while(num > 0) do begin
		if(num>max) and(num mod 2=0) then 
			max:= num;
        writeln('Ingrese un numero entero');
        readln(num);
    end;
    writeln('El numero par mas alto fue el: ', max);
end;
begin
    leerNumeros;
end.
