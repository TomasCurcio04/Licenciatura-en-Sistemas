type
	subrango=1..200;
var
	codigo:subrango;
	precio,barato1,barato2:real;
	i,cant,codigo1,codigo2:integer;
begin
	barato1:=maxint;
	barato2:=maxint;
	cant:=0;
	codigo1:=0;
	codigo2:=0;
	for i:=1 to 200 do begin
		writeln('ingrese el codigo del producto');
		readln(codigo);
		writeln('ingrese el precio del producto');
		readln(precio);
		if(precio>16) and(codigo mod 2=0) then
			cant+=1;
		if(precio<barato1) then begin
			barato1:=barato2;
			barato2:=precio;
			codigo1:=codigo2;
			codigo2:=codigo;
		end;
	end;
	writeln('los dos codigo con el precio mas barato son: ',codigo1,' y ',codigo2);
	writeln('la cantidad de productos con codigo par y con precio mayor a $16 es de: ',cant);
end.
