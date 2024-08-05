var
	x,y:integer;
begin
	writeln('ingrese la cantidad de caramelos del koisquero por teclado');
	readln(x);
	writeln('ingrese la cantidad de clientes por teclado');
	readln(y);
	writeln('A cada cliente le corresponde: ',x div y,' caramelos y al kiosquero ',x mod y);
	writeln('El kiosquero tiene que cobrar a cada cliente $',(x div y)*1.60:2:2,' y en total $',y*(x div y)*1.60:2:2);
end.
