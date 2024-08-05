var
	cod:integer;
	precioAct,precioNue:real;
begin
	writeln('ingrese el codigo del producto');
	readln(cod);
	writeln('ingrese el precio actual del producto');
	readln(precioAct);
	writeln('ingrese el precio nuevo del producto');
	readln(precioNue);
	if(precioNue>precioAct*1.1)then
		writeln('el aumento de precio del producto: ',cod, ' supera el 10%')
	else
		writeln('el aumento de precio del producto: ',cod, ' no supera el 10%');
	while(cod<>32767) do begin
		writeln('ingrese el codigo del producto');
		readln(cod);
		writeln('ingrese el precio actual del producto');
		readln(precioAct);
		writeln('ingrese el precio nuevo del producto');
		readln(precioNue);
		if(precioNue>precioAct*1.1)then
			writeln('el aumento de precio del producto: ',cod, ' supera el 10%')
		else
			writeln('el aumento de precio del producto: ',cod, ' no supera el 10%');
	end;
end.
