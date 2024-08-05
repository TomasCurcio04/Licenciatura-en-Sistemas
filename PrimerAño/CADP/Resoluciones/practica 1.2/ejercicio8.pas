var
	monto,totalMes,max:real;
	ventasDia,dia,i:integer;
begin
	max:=maxint*-1;
	totalMes:=0;
	for i:=1 to 31 do begin
		ventasDia:=0;
		writeln('ingrese el monto de la venta realizada del dia: ',i,' de este mes');
		readln(monto);
		while(monto<>0) do begin
			ventasDia+=1;
			totalMes+=monto;
			writeln('ingrese el monto de la venta realizada el dia: ',i,' de este mes');
			readln(monto);
		end;
		if(ventasDia>max) then begin
			dia:=i;
			max:=ventasDia;
		end;
		writeln('la cantidad de ventas el dia ',i,' de este mes es de: ',ventasDia);
	end;
	writeln('el total vendido en el mes es de: $',totalMes:2:2);
	writeln('el dia que se realizo la mayor cantidad de ventas fue el dia: ',dia,' de este mes');
end.
