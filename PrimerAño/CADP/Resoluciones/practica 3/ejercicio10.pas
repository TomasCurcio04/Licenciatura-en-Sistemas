type
	plantas=record
		nom:string;
		vida:real;
		tipo:string;
		clima:string;
		paises:string;
	end;
	
procedure leer(var p:plantas);
begin
	writeln('ingrese en los paises que habita la planta');
	readln(p.paises);
	if(p.paises<>'zzz') then begin
		writeln('ingrese el nombre de la planta');
		readln(p.nom);
		writeln('ingrese el tiempo de vida en meses');
		readln(p.vida);
		writeln('ingrese el tipo de planta');
		readln(p.tipo);
		writeln('ingrese el clima en donde vive');
		readln(p.clima);
	end;
end;


procedure maximos(var max1, max2: real; var pLong1, pLong2: string; cant: real; nom: string);
begin
	if(cant > max1) then begin
		max2:= max1;
		max1:= cant;
		pLong2:= pLong1;	
		pLong1:= nom;
	end
	else if(cant > max2) then begin
		max2:= cant;
		pLong2:= nom;
	end;
end;

var
	p:plantas;
	mismoTipo,menorTipo,mismaPlanta,maxPaisesNom,pLong1,pLong2:string;
	i,cantP,masPaises,maxPaises:integer;
	vida,minP,promedio,max1,max2:real;
begin
	maxPaises:=-1;
	minP:=maxint;
	for i:=1 to 320 do begin
		leer(p);
		while(p.paises<>'zzz') do begin
			mismoTipo:=p.tipo;
			cantP:=0;
			vida:=0;
			while(p.paises<>'zzz') and (mismoTipo=p.tipo)do begin
				mismaPlanta:=p.nom;
				masPaises:=0;
				while(p.paises<>'zzz') and (mismoTipo=p.tipo) and (mismaPlanta=p.nom) do begin
					cantP+=1;
					vida+=p.vida;
					masPaises+=1;
					maximos(max1,max2,pLong1,pLong2,p.vida,p.nom);
					if(p.paises='Argentina') and (p.clima='subtropical') then 
						writeln('El nombre de la planta nativa de Argentina y en clima subtropical es: ',mismaPlanta);
					leer(p);
				end;
				if(masPaises>maxPaises) then begin
					maxPaisesNom:=mismaPlanta;
					maxPaises:=masPaises;
				end;
			end;
			if(cantP<minP) then begin
				minP:=cantP;
				menorTipo:=mismoTipo;
			end;
			promedio:=vida/cantP;
			writeln('El tiempo promedio del tipo de planta ',mismoTipo,' es de: ',promedio:2:2);
		end;
	end;
	writeln('El tipo de planta con menor cantidad de plantas es: ',menorTipo);
	writeln('El nombre de las dos plantas mas longevas son: ',pLong1,' y ',pLong2);
	writeln('El nombre de la planta que se encuentra en mas paises es: ',maxPaisesNom);
end.
