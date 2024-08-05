var
	monto:integer;
	dolar,comision,aux:real;
begin
	writeln('ingrese la cantidad de dolares a usar para la transaccion por teclado');
	readln(monto);
	writeln('ingrese el valor del dolar al dia de hoy');
	readln(dolar);
	writeln('ingrese la comision del banco por transaccion');
	readln(comision);
	aux:=(monto*dolar);
	writeln('La transaccion sera de: $',aux +(aux*comision/100):2:2,' pesos');
end.

