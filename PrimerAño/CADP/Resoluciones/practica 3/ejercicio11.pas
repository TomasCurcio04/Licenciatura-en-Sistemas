type
	vuelos=record
		cod:integer;
		salida:string;
		llegada:string;
		km:real;
		ocupacion:real;
	end;
	
procedure leer(var v:vuelos);
begin
	writeln('ingrese el codigo de vuelo');
	readln(v.cod);
	if(v.cod<>44) then begin
		writeln('ingrese el pais de salida del vuelo');
		readln(v.salida);
		writeln('ingrese el pais de llegada del vuelo');
		readln(v.llegada);
		writeln('ingrese los kilometros recorridos');
		readln(v.km);
		writeln('ingrese el porcentaje de ocupacion del vuelo');
		readln(v.ocupacion);
	end;
end;

procedure maximos(var max1, max2: real; var avion1, avion2: integer; km: real; cod: integer);
begin
	if(km >= max1) then begin
		max2:= max1;
		max1:= km;
		avion2:= avion1;	
		avion1:= cod;
	end
	else if(km >= max2) then begin
		max2:= km;
		avion2:= cod;
	end;
end;

procedure minimos(var min1, min2: real; var avion1, avion2: integer; km: real; cod: integer);
begin
	if(km <= min1) then	begin
		min2:= min1;
		min1:= km;
		avion2:= avion1;
		avion1:= cod;
	end
	else if(km <= min2) then begin
		min2:= km;
		avion2:= cod;
	end;
end;

var
	v:vuelos;
	mismoPais:string;
	max1,max2,min1,min2,kmRecorridos:real;
	mismoAvion,avionMax1,avionMax2,avionMin1,avionMin2,masPaises,maxPaises,nomMaxPaises,cant60,cantAuNZ:integer;
begin
	min1:=maxint;
	min2:=maxint;
	max1:=-1;
	max2:=-1;
	maxPaises:=-1;
	cant60:=0;
	cantAuNZ:=0;
	leer(v);
	while(v.cod<>44) do begin
		mismoAvion:=v.cod;
		masPaises:=0;
		kmRecorridos:=0;
		while(v.cod<>44)and(v.cod=mismoAvion) do begin
			mismoPais:=v.salida;
			while(v.cod<>44) and (v.cod=mismoAvion) and (mismoPais=v.salida) do begin
				kmRecorridos+=v.km;
				if(v.km>5000) and (v.ocupacion<60) then
					cant60+=1;
				if(v.km<10000) and ((v.llegada='Australia')or(v.llegada='Nueva Zelanda')) then
					cantAuNZ+=1;
				leer(v);
			end;
			masPaises+=1;
		end;
		maximos(max1,max2,avionMax1,avionMax2,kmRecorridos,mismoAvion);
		minimos(min1,min2,avionMin1,avionMin2,kmRecorridos,mismoAvion);
		if(masPaises>maxPaises) then begin
			maxPaises:=masPaises;
			nomMaxPaises:=mismoAvion;
		end;
	end;
	writeln('Los dos avines que mas km recorrieron fueron: ',avionMax1,' y ',avionMax2);
	writeln('Los dos avines que menos km recorrieron fueron: ',avionMin1,' y ',avionMin2);
	writeln('El avion que salio de mas paises diferentes es el avion ',nomMaxPaises);
	writeln('La cantidad de aviones que superaron los 5000 km y que no alcanzaron el 60% de ocupacion son: ',cant60);
	writeln('La cantidad de aviones con menos de 10000 km y que llegaron al pais de Australia o Nueva Zelanda son: ',cantAuNZ);
end.
