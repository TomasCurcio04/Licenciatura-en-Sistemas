var
	num1,num2:integer;
begin
	writeln('ingrese dos numeros enteros');
	readln(num1);
	readln(num2);
	if(num1=num2) then
		writeln('Los numeros leidos son iguales')
	else if(num1>num2) then
			writeln('El mayor de los dos numeros es ',num1)
		else
			writeln('El mayor de los dos numeros es ',num2);
end.
