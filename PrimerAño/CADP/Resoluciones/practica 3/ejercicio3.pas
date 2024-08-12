program cadp;
type 
	unesco=record
		cue:integer;
		nombre:string;
		docentes:integer;
		alumnos:integer;
		localidad:string
	end;

procedure leer(var u:unesco);
begin
	writeln('escriba el codigo unico del establecimiento');
    readln(u.cue);
    writeln('escriba el nombre del establecimiento');
    readln(u.nombre);
    writeln('escriba la cantidad de docentes');
    readln(u.docentes);
    writeln('escriba la cantidad de alumnos');
    readln(u.alumnos);
    writeln('escriba la localidad');
    readln(u.localidad);
end;
  
function relacion1 (u:unesco):real;
begin
    relacion1:= ((u.alumnos / u.docentes))   
end;
 
procedure maximo(u:unesco;rela:real;var max1, max2: real; var cueMax1, cueMax2: integer; var nomMax1, nomMax2: string);
begin
    if(u.alumnos / u.docentes >= max1) then begin
		cueMax2:= cueMax1;
		cueMax1:= u.cue;
		nomMax2:= nomMax1;
		nomMax1:= u.nombre;
		max2:= max1;
		max1:= rela;
	end
    else if(rela >= max2) then begin
		max2:= rela;
		cueMax2:= u.cue;
		nomMax2:= u.nombre;
	end;
end;

var
	u:unesco;
	max1,max2,rela:real; 
	i,laplata,cueMax1, cueMax2: integer;
	nomMax1,nomMax2: string;
begin
	laplata:=0;
	max1:=maxint-1;
	max2:=maxint-1;
	for i:=1 to 2400 do begin
		leer(u);
		rela:=relacion1(u);
		if ((u.nombre='La Plata') and (rela>23435)) then
			laplata+=1;
		maximo(u,rela,max1,max2,cueMax1,cueMax2,nomMax1,nomMax2);
	end;
	writeln('la cantidad de escuelas de la plata con una relacion de alumnos/docentes superior a la sugerida son: ',laplata);
	writeln('los CUE de las dos escuelas con mejor relacion de alumnos/docentes son: ',cueMax2,' y ',cueMax1);
	writeln('los nombres de las escuelas con las dos mejores relaciones son: ',nomMax2,' y ',nomMax1);
end.
