var
	nombre,puesto1,puesto2,perdedor1,perdedor2:string;
	tiempo,max1,min1,max2,min2:real;
	i:integer;
begin
	max1:=maxint*-1;
	min1:=maxint;
	max2:=maxint*-1;
	min2:=maxint;
	puesto1:=' ';
	perdedor1:=' ';
	for i:=1 to 100 do begin
		writeln('ingrese el nombre del piloto');
		readln(nombre);
		writeln('ingrese el tiempo total que le tomo terminar la carrera');
		readln(tiempo);
		if(tiempo<min2) then begin
			puesto2:=puesto1;
			puesto1:=nombre;
			min1:=min2;
			min2:=tiempo;
		end;
		if(tiempo>max2)then begin
			perdedor2:=perdedor1;
			perdedor1:=nombre;
			max1:=max2;
			max2:=tiempo;
		end;
	end;
	writeln('Los nombres que terminaron en los dos primeros puestos son: ',puesto1,' y ',puesto2);
	writeln('Los nombres que terminaron en los dos ultimos puestos son: ',perdedor1,' y ',perdedor2);

end.
