type
	procesadores=record
		marca:string;
		linea:string;
		cantNuc:integer;
		velRel:real;
		tamanioTrans:integer;
	end;

procedure leer(var p:procesadores);
begin
	writeln('ingrese la cantidad de nucleos del microprocesador');
	readln(p.cantNuc);
	if(p.cantNuc<>0) then begin
		writeln('ingrese la marca del microprocesador');
		readln(p.marca);
		writeln('ingrese la linea de este');
		readln(p.linea);
		writeln('ingrese la cantidad de nucleos');
		readln(p.cantNuc);
		writeln('ingrese la velocidad del reloj en Ghz');
		readln(p.velRel);
		writeln('ingrese el tamaño de los transitores');
		readln(p.tamanioTrans);
	end;
end;

procedure maximos(var max1, max2: integer; var nomMax1, nomMax2: string; cant: integer; marca: string);
begin
    if(cant > max1) then begin
		max2:= max1;
		max1:= cant;
		nomMax2:= nomMax1;
		nomMax1:= marca;
	end
    else if(cant > max2) then begin
		max2:= cant;
			nomMax2:= marca;
	end;
end;

var
	p:procesadores;
	cantP,max1,max2,cant14:integer;
	mismaMarca,nomMax1,nomMax2:string;
begin
	cantP:=0;
	max1:=-1;
	max2:=-1;
	leer(p);
	while(p.cantNuc<>0) do begin
		if ((p.cantNuc>2) and(p.tamanioTrans<=22)) then
			writeln('La marca de microprocesador: ',p.marca,' y linea: ',p.linea,' superan los 2 cores y tienen transitores de a lo sumo 22 nm');
		if((p.cantNuc>1) and ((p.marca='Intel')or(p.marca='AMD')) and(p.velRel>=2)) then
			cantP+=1;
		cant14:=0;
		mismaMarca:=p.marca;
		while(mismaMarca=p.marca) do begin
			if(p.tamanioTrans=14) then
				cant14+=1;
			leer(p);
		end;
		maximos(max1,max2,nomMax1,nomMax2,cant14,mismaMarca);
	end;
	writeln('Las dos marcas con mayor cantidad de procesadores con transitores de 14 nm son: ',nomMax1,' y ',nomMax2);
	writeln('la cantidad de procesadores multicore de intel o AMD, que alcanzan velocidades de al mneos 2Ghz es de: ',cantP);
end.
