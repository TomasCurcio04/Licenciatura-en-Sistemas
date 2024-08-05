var
	i,num,suma,may:integer;
begin
	suma:=0;
	may:=0;
	writeln('suma de 10 numeros leidos por teclado');
	for i:=1 to 10 do begin
		writeln('ingrese un numero pera sumar');
		readln(num);
		suma:=suma+num;
		if(num>5)then
			may+=1;
	end;
	writeln('la suma total de todos los numeros leidos es de :',suma);
	writeln('los numeros mayores a 5 fueron un totoal de: ',may);
end.
