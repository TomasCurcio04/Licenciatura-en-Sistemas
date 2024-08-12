program Registros;
type
	str20 = string[20];
	alumno = record
		codigo : integer;
		nombre : str20;
		promedio : real;
	end;
  
procedure leer(var alu : alumno);
begin
	writeln('Ingrese el código del alumno');
	readln(alu.codigo);
	if (alu.codigo <> 0) then begin
		writeln('Ingrese el nombre del alumno'); 
		readln(alu.nombre);
		writeln('Ingrese el promedio del alumno');
		readln(alu.promedio);
	end;
end;

procedure mejor(alu:alumno;var max1:real;var promMax:string);
begin
	if (alu.promedio>max1) then begin
		max1:=alu.promedio;
		promMax:=alu.nombre;
    end;
end;

var
	a:alumno;
	total:integer;
	max:real;
	aluMax:string;
begin
	max:=-1;
	total:=0;
	leer(a);
	while (a.codigo<>0) do begin
		mejor(a,max,aluMax);
		total+=1;
		leer(a);
	end;
	writeln('el total de alumnos ledios es de: ',total);
	write('el nombre del alumno con mejor promedio es: ',alumax);
end.
