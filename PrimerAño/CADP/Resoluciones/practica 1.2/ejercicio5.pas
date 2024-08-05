var
	num,max,min,tot:integer;
begin
	max:=maxint*-1;
	min:=maxint;
	tot:=0;
	repeat
		writeln('ingrese un numero');
		readln(num);
		if(num>max) then
			max:=num;
		if(num<min) then
			min:=num;
		tot+=num;
	until(num=100);
	writeln('el mayor numero leido fue el: ',max,' el minimo fue el: ',min,' y el total es de: ',tot);
end.
