const
	dolar=320;
	zona1=6;
    zona2=2.6;
	zona3=1.4;
	
function rendimiento(zon:integer;hectareas,precio:real):real;
begin
	case zon of 
    1:
		rendimiento:=zona1*(hectareas)*(precio);
    2:
		rendimiento:=zona2*(hectareas)*(precio);
    3:
		rendimiento:=zona3*(hectareas)*(precio);
  end;
end;

procedure leer (var hec:real;var zon:integer);
begin
	writeln('ingrese la cantidad de hectareas sembradas');
	readln(hec);
	writeln('ingrese la zona de siembra "1", "2" o "3"');
	readln(zon);
end;

procedure mayorCampo(local:string; rendi:real;var max:real;var localMax:string);
begin
	if (rendi>max) then begin  
      max:=rendi;
      localMax:=local;
    end;
end;
  
procedure menorCampo (local:string; rendi:real; var min:real;var localMin:string);
begin
	if (rendi<min) then begin
		min:=rendi;
		localMin:=local;
    end;
end;
  
var
	localidad,localidadMax,localidadMin:string;
	zona,tresFe,totalLocalidades:integer;
	hectareas,precio,rendi,max,min,totalRendimiento:real;
begin
	writeln('ejercicio 12a');
	leer(hectareas,zona);
	writeln('ingrese el precio por tonelada de soja');
	readln(precio);
	writeln('el rendimiento esperado para la plantacion es de: $',rendimiento (zona,hectareas,precio):2:2);
	/////////
	writeln('ejercicio 12b');
	tresfe:=0;
	totalLocalidades:=0;
	totalrendimiento:=0;
	max:=maxint*-1;
	min:=maxint;
	repeat
		leer (hectareas,zona);
		writeln('ingrese la localidad');
		readln(localidad);
		totalLocalidades+=1;
		rendi:=rendimiento(zona,hectareas,320);
		if(localidad='Tres de Febrero') and (rendi>10000) then
			tresFe+=1;
		totalRendimiento+=rendi;
		mayorCampo(localidad,rendi,max,localidadmax);
		menorCampo(localidad,rendi,min,localidadmin);
	until (localidad='Saladillo') and (hectareas=900);
	writeln('la cantidad de campos de la localidad Tres De Febrero con rendimiento estimado mayor a 10000 son: ',tresFe);
	writeln('la localidad con mayor rendimiento economico esperado es: ',localidadmax);
	writeln('la localidad con menor rendimiento economico esperado es: ',localidadmin);
	writeln('el rendimiento economico promedio es de $:',totalrendimiento/totalLocalidades:2:2);
end.
