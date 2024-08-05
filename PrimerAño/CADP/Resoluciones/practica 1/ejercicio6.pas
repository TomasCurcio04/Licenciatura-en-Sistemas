var
	legajo,cantLeidos,cantMayor,legajoMen:integer;
	promedio:real;
begin
	writeln('ingrese un numero de legajo');
	readln(legajo);
	cantLeidos:=0;
	cantMayor:=0;
	legajoMen:=0;
	while(legajo<>-1) do begin
		cantLeidos:=cantLeidos+1;
		writeln('ingrese el promedio del alumno con ese numero de legajo');
		readln(promedio);
		if(promedio>6.5)then begin
			cantMayor:=cantMayor+1;
			if(promedio>8.5) and(legajo<2500) then
				legajoMen:=legajoMen+1;
		end;
		writeln('ingrese un numero de legajo');
		readln(legajo);
	end;
	writeln('La cantidad de alumnos leida es de :',cantLeidos);
	writeln('La cantidad de alumnos con promedio mayor a 6.5 es de :',cantMayor);
	writeln('La cantidad de alumnos con promedio mayor a 8.5 y con legajo menor a 2500 es de :',legajoMen / cantLeidos*100:2:2,'%');
end.

