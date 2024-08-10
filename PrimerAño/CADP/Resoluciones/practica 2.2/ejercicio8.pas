function esPar(num:integer):boolean;
begin
	esPar:=(num mod 2=0);
end;

procedure digitos(var cant,suma:integer;num:integer);
begin
	while(num<>0) do begin
		if(esPar(num)) then 
			suma:=suma + (num mod 10)
		else
			cant+=1;
		num:=num div 10;
	end;
end;

var
	num,cant,suma:integer;
begin
	writeln('ingrese un numero');
	readln(num);
	while(num<>123456) do begin// aparece error porque en pascal el numero maximo es el 32767
		suma:=0;
		cant:=0;
		digitos(cant,suma,num);
		writeln('la suma de los digitos pares del numero es de: ',suma,' y la cantidad de digitos impares que posee el numero es de: ',cant);
		writeln('ingrese un numero');
		readln(num);
	end;
end.

