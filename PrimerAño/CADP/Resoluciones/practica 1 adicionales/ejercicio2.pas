var
	legajo,alumno10a,alumno10b,alumno0a,alumno0b:string;
	condicion:char;
	nota,porcentajeIng,porcentajeRec,promedio:real;
	cumpleIng,cumpleRec,cantIng,cantRec,i,max,max2,max3,max4,
	cumpleTotalIng,cumpleTotalRec,aproboTodas,cant65,cant0,cant10,cantCero:integer;
	saco0:boolean;
begin
	cumpleTotalIng:=0;
	cumpleTotalRec:=0;
	porcentajeIng:=0;
	porcentajeRec:=0;
	cantIng:=0;
	cantRec:=0;
	aproboTodas:=0;
	cant65:=0;
	cant0:=0;
	max:=-1;
	max2:=-1;
	max3:=-1;
	max4:=-1;
	alumno10a:=' ';
	alumno0a:=' ';
	writeln('Ingrese el legajo del alumno');
	readln(legajo);
	while(legajo<>'-1') do begin
		writeln('Ingrese la condicion del alumno I para ingresante, R para recursante');
		readln(condicion);
		if(condicion='I') then
			cantIng+=1
		else if(condicion='R') then
			cantRec+=1;
		cumpleIng:=0;
		cumpleRec:=0;
		promedio:=0;
		saco0:=false;
		cant10:=0;
		cantCero:=0;
		for i:=1 to 5 do begin
			writeln('Ingrese la nota de la evalucaion numero: ',i);
			readln(nota);
			if(nota<>-1) and (nota>=4) then begin
				if(condicion='I') then
					cumpleIng+=1
				else if(condicion='R') then
					cumpleRec+=1;
			end;
			if(nota=0) then
				saco0:=true;
			if(nota=10) then
				cant10+=1;
			promedio+=nota;
		end;
		if(cant10>=max)  then begin
			max2:=max;
			max:=cant10;
			alumno10b:=alumno10a;
			alumno10a:=legajo;
		end
		else if(cant10 > max2) then begin
			max2:= cant10;
            alumno10b:= legajo;
        end;
        if(cantCero >= max3) then begin
			max4:= max3;
            max3:= cantCero;
            alumno0b:= alumno0a;
            alumno0a:= legajo;
        end
        else if(cantCero >= max4) then begin
            max4:= cantCero;
            alumno0b:= legajo;
        end;
		writeln('Ingrese el legajo del alumno');
		readln(legajo);
		if((cumpleIng*100)/5>=75) then 
			cumpleTotalIng+=1;
		if((cumpleRec*100)/5>=75) then
			cumpleTotalRec+=1;
		if(cumpleIng=5) or(cumpleRec=5) then 
			aproboTodas+=1;
		if(promedio/5>6.5) then
			cant65+=1;
		if(saco0) then
			cant0+=1;
	end;
	if(cantIng<>0) then
		porcentajeIng:=(cumpleTotalIng*100) / cantIng;
	if(cantRec<>0) then
		porcentajeRec:=(cumpleTotalRec*100) / cantRec;
	writeln('Cantidad de ingresantes habilitados para rendir el parcial: ',cumpleTotalIng,' y el porcentaje respecto a la cantidad d ingresantes es de: ',porcentajeIng:2:2);
	writeln('Cantidad de recursantes habilitados para rendir el parcial: ',cumpleTotalRec,' y el porcentaje respecto a la cantidad d ingresantes es de: ',porcentajeRec:2:2);
	writeln('La cantidad de alumnos que aprobaron todas las autoevaluaciones es de: ',aproboTodas);
	writeln('La cantidad de alumnos con promedio mayor a 6.5 es de : ', cant65);
	writeln('La cantidad de alumnos que obtuvieron almenos un 0 en una autoevaluacion es de: ', cant0);
	writeln('El legajo de los 2 alumnos que obtuvieron mas 10 en todas las autoevaluacion son: ', alumno10b,' y ',alumno10a);
	writeln('El legajo de los 2 alumnos que obtuvieron mas 0 en todas las autoevaluacion son: ', alumno0b,' y ',alumno0a);
end.
