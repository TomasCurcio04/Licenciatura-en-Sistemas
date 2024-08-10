procedure digitos(var cant,suma:integer;num:integer);//ejercicio 7a
begin
	while(num<>0) do begin
		suma:=suma + (num mod 10);
		cant+=1;
		num:=num div 10;
	end;
end;

var
	num,cant,suma,sumaTotal:integer;
begin
	//ejercicio 7b
	sumaTotal:=0;
	repeat
		writeln('ingrese un numero');
		readln(num);
		suma:=0;
		cant:=0;
		digitos(cant,suma,num);
		sumaTotal+=cant;
	until(suma=10);
	writeln('la cantidad total de digitos leidos es de : ',sumaTotal);
end.
