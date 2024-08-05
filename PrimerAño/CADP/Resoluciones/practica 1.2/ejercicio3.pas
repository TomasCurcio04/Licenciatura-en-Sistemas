type
	subrango=1..10;
var
	nombre:string;
	nota:subrango;
	cant8,cant7:integer;
begin
	cant7:=0;
	cant8:=0;
	repeat
		writeln('ingrese el nombre del alumno');
		readln(nombre);
		writeln('ingrese la nota del alumno');
		readln(nota);
		if(nota>=8) then
			cant8+=1
		else if(nota=7) then
			cant7+=1;
	until(nombre='Zidane Zinedine');
	writeln('la cantidad de alumnos con nota igual a 7 es de: ',cant7,' y la cantidad con nota igual a 8 o superior es de: ',cant8);
end.
