var
	i,codigo,inversiones,mayorCodigo,cant:integer;
	monto,total,promedio,max:real;
	
begin
	max:=maxint*-1;
	cant:=0;
	repeat
		writeln('ingrese el codigo de la empresa');
		readln(codigo);
		writeln('ingrese la cantidad de inversiones de la empresa');
		readln(inversiones);
		total:=0;
		for i:=1 to inversiones do begin
			writeln('ingrese el monto dedicado a cada una de las inversiones');
			readln(monto);
			total+=monto;
		end;	
		promedio:=total/inversiones;
		writeln('La empresa con codigo ',codigo,' tiene de promedio por inversion $',promedio:2:2);
		if(total>max) then begin
			max:=total;
			mayorCodigo:=codigo;
		end;
		if(total>50000) then
			cant+=1;
	until(codigo=100);
	writeln('El codigo de la empresa con el mayor monto invertido es: ',mayorCodigo);
	writeln('La cantidad de empresas con un total invertido mayor a $50000 es de: ',cant);
end.
