type
	CIUN=record
		nombre:string;
		uni:string;
		cantInv:integer;
		cantBec:integer;
	end;

procedure leer(var C:CIUN);
begin
	writeln('ingrese la cantidad de investigadores');
	readln(C.cantInv);
	if(C.cantInv>0) then begin
		writeln('ingrese el nombre del centro de investigacion');
		readln(C.nombre);
		writeln('ingrese a que universidad pertenece');
		readln(C.uni);
		writeln('ingrese la cantidad de becarios que posee');
		readln(C.cantBec);
	end;
end;

procedure minimos(var min1, min2: integer; var cenMin1, cenMin2: string; bec: integer; nom: string);
begin
	if(bec <= min1) then	begin
		min2:= min1;
		min1:= bec;
		cenMin2:= cenMin1;
		cenMin1:= nom;
	end
	else if(bec <= min2) then begin
		min2:= bec;
		cenMin2:= nom;
	end;
end;

var
	cantC,cantI,min1,min2,max:integer;
	c:CIUN;
	mismaU,nomMax,cenMin1, cenMin2:string;
begin
	max:=-1;
	min1:=maxint;
	min2:=maxint;
	leer(c);
	while(c.cantInv<>0) do begin
		mismaU:=c.uni;
		cantI:=0;
		cantC:=0;
		while(mismaU=c.uni) do begin
			cantC+=1;
			cantI+=c.cantInv;
			minimos(min1,min2,cenMin1,cenMin2,c.cantBec,c.nombre);
			leer(c);
		end;
		writeln('para la universidad ',mismaU,' hay en total ',cantC,' centros');
		if(cantI>max) then begin
			max:=cantI;
			nomMax:=mismaU;
		end;
	end;
	writeln('La universidad con mayor cantidad de investigadores en sus centros es: ',nomMax);
	writeln('Los dos centros con menor cantidad de becarios son: ',cenMin1,' y ',cenMin2);
end.
