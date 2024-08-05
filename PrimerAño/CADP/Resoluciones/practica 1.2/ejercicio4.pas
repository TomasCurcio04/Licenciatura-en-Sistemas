var
	i,num,min1,min2:integer;
begin
	min1:=maxint;
	min2:=maxint;
	writeln('Ejercicio 4: ');
	for i:=1 to 1000 do begin
		writeln('ingrese un numero');
		readln(num);
		if(min2>num) then begin
			min2:=min1;
			min1:=num;
		end;
	end;
	writeln('los dos numeros minimos leidos son: ',min1,' y ',min2);
	//////////////////////////
	writeln('Ejercicio 4a: ');
	min1:=maxint;
	min2:=maxint;
	repeat
		writeln('ingrese un numero');
		readln(num);
		if(min2>num) then begin
			min2:=min1;
			min1:=num;
		end;
	until (num=0);
	writeln('los dos numeros minimos leidos son: ',min1,' y ',min2);
	/////////////////////////
	writeln('Ejercicio 4b: ');
	min1:=maxint;
	min2:=maxint;
	writeln('ingrese un numero');
	readln(num);
	while(num<>0) do begin
		if(min2>num) then begin
			min2:=min1;
			min1:=num;
		end;
		writeln('ingrese un numero');
		readln(num);
	end;
	writeln('los dos numeros minimos leidos son: ',min1,' y ',min2);
end.
