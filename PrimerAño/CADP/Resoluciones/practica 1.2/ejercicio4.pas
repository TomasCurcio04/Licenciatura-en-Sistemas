var
	i,num,min1,min2:integer;
begin
	min1:=maxint;
	min2:=maxint;
	writeln('Ejercicio 4: ');
	for i:=1 to 1000 do begin
		writeln('ingrese un numero');
		readln(num);
		if(num < min1) then
                begin
                    min2:= min1;
                    min1:= num;
                end
            else
                if(num < min2) then
                    min2:= num;
	end;
	writeln('los dos numeros minimos leidos son: ',min1,' y ',min2);
	//////////////////////////
	writeln('Ejercicio 4a: ');
	min1:=maxint;
	min2:=maxint;
	repeat
		writeln('ingrese un numero');
		readln(num);
		if(num < min1) then
                begin
                    min2:= min1;
                    min1:= num;
                end
            else
                if(num < min2) then
                    min2:= num;
	until (num=0);
	writeln('los dos numeros minimos leidos son: ',min1,' y ',min2);
	/////////////////////////
	writeln('Ejercicio 4b: ');
	min1:=maxint;
	min2:=maxint;
	writeln('ingrese un numero');
	readln(num);
	while(num<>0) do begin
		if(num < min1) then
                begin
                    min2:= min1;
                    min1:= num;
                end
            else
                if(num < min2) then
                    min2:= num;
		writeln('ingrese un numero');
		readln(num);
	end;
	writeln('los dos numeros minimos leidos son: ',min1,' y ',min2);
end.
