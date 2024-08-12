program registros;
type
	fechas=record
		dia:integer;
		mes:string;
		anio:integer;
	end;

procedure leer(var f:fechas);
begin   
    writeln('escriba el dia del casamiento');
    readln(f.dia);  
    writeln('escriba el mes del casamiento');
    readln(f.mes);
    writeln('escriba el año del casamiento');
    readln(f.anio);
end;
  
function mesesverano(f:fechas):boolean;
begin
   mesesverano:=(f.anio=2019)and((f.mes='enero') or (f.mes='febrero') or (f.mes='marzo'));
end;
  
function diezdias(f:fechas):boolean;
begin
	diezdias:=(f.anio=2019) and (f.dia<=10);
end;
  
var
	fecha:fechas;
	contador,contador2:integer;
begin
	contador:=0;
	contador2:=0;
	leer(fecha);
	while (fecha.anio<>2020) do begin
		if (mesesverano(fecha)) then
			contador+=1;
		if (diezdias(fecha)) then
			contador2+=1;
		leer(fecha);
	end;
	writeln('los casamientos realizados en los 3 primeros meses de 2019 fueron: ',contador);
	writeln('los casamientos realizados durante el año 2019 entre los dias 1 y 10 del mes son: ',contador2);
end.
