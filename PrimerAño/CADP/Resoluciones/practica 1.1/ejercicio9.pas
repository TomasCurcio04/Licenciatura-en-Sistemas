var
	car:char;
	num,suma:integer;
begin
	writeln('ingrese el caracter de suma o el de resta');
	readln(car);
	if(car='+')or(car='-') then begin
		writeln('ingrese un numero para hacer la operacion');
		readln(num);
		suma:=num;
		while(num<>0) and(car='+') do begin
			writeln('ingrese otro');
			readln(num);
			suma+=num;
		end;
		while(num<>0) and(car='-') do begin
			writeln('ingrese otro');
			readln(num);
			suma-=num;
		end;
		writeln('el resultado de la operacion es: ',suma);
	end
	else
		writeln('Error al ingresar el caracter + o -');
end.
