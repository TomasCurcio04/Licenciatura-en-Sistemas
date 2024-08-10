procedure alumin(insc:integer; apellido1:string; var alumin1,alumin2:string; var min1,min2:integer);
begin
   if(insc <= min1) then begin
		min2:= min1;
		min1:= insc;
		alumin2:= alumin1; 
		alumin1:= apellido1;
	end
    else if(insc <= min2) then begin
		min2:= insc;
		alumin2:= apellido1;
	end;
end;

procedure alumax(insc:integer; nombre1:string; var alumax1,alumax2:string ; var max1,max2:integer); 
begin
	if(insc <= max1) then begin
		max2:= max1;
		max1:= insc;
		alumax2:= alumax1; 
		alumax1:= nombre1;
    end 
    else if(insc <= max2) then begin
		max2:= insc;
		alumax2:= nombre1;
	end;
end;

procedure inscpares (insc:integer;var par1:integer);
begin
    if (insc mod 2=0) then
      par1+=1;
end;
  
var
	inscripcion,minA,minB,maxA,maxB,totalalu,pares:integer;
	nombre,apellido,aluminA,aluminB,alumaxA,alumaxB:string;
	porcentaje:real;
begin
	totalalu:=0;
	pares:=0;
	minA:=maxint;
	minB:=maxint;
	maxA:=maxint*-1;
	maxB:=maxint*-1;
	repeat
		writeln('escriba el nombre y apellido de un alumno');
		readln(nombre);
		readln(apellido);
		writeln('escriba el numero de inscripcion del alumno');
		readln(inscripcion);
		totalalu+=1;
		inscpares(inscripcion,pares);
		alumin(inscripcion, apellido,aluminA,aluminB,minA,minB);
		alumax(inscripcion,nombre,alumaxA,alumaxB,maxA,maxB);
	until(inscripcion=1200);
	writeln('los dos apellidos de alumnos con menor numero de inscripcion son: ',aluminA,' y ',aluminB);
	writeln('los dos nombres de alumnos con mayor numero de inscripcion son: ',alumaxA,' y ',alumaxB);
	porcentaje:=(pares/totalalu)*100;
	writeln('el porcetnaje de alumnos con inscripcion par es de: ',porcentaje:2:2,'%');
end.
