procedure barato(codigo:integer;precio:real;var masBarato1,masBarato2:integer;var min1,min2:real);
begin
	if(precio <= min1) then begin
		min2:= min1;
        min1:= precio;
        masBarato2:= masBarato1;
        masBarato1:= codigo;
    end
    else 
		if(precio <= min2) then begin
			min2:= precio;
            masBarato2:= codigo;
        end;
end;

procedure caro(codigo:integer;var pantalon:integer;precio:real;var max:real);
begin
	if(precio>=max) then begin
		max:=precio;
		pantalon:=codigo;
	end;
end;

var
	tipo:string;
	precio,min1,min2,max,total:real;
	i,codigo,masBarato1,masBarato2,pantalon:integer;
begin
	min1:=maxint;
	min2:=maxint;
	max:=maxint*-1;
	total:=0;
	for i:=1 to 100 do begin
		writeln('ingrese el precio del producto');
		readln(precio);
		writeln('ingrese el codigo del producto');
		readln(codigo);
		writeln('ingrese el tipo de producto');
		readln(tipo);
		barato(codigo,precio,masBarato1,masBarato2,min1,min2);
		if(tipo='pantalon') then
			caro(codigo,pantalon,precio,max);
		total+=precio;
	end;
	writeln('los codigos de los dos productos mas baratos son: ',masBarato1,' y ',masBarato2);
	writeln('el codigo del producto de tipo pantalon mas caro es: ',pantalon);
	writeln('el precio promedio de los productos es de: ',total/100:2:2);
end.
