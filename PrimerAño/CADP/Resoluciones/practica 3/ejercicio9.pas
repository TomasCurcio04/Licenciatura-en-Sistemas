type
	candidatos=record
		loc:string;
		ape:string;
		votos:integer;
		votantes:integer;
	end;
	
procedure leer(var c:candidatos);
begin
	writeln('ingrese la localidad');
	readln(c.loc);
	writeln('ingrese el apellido del candidato');
	readln(c.ape);
	writeln('ingrese la cantidad de votos obtenidos');
	readln(c.votos);
	writeln('ingrese la cantidad de votantes de la localidad');
	readln(c.votantes);
end;


var
	c:candidatos;
	mayorVotos:integer;
	porcentaje,mayorPorcentaje:real;
	mayorVotosInt,mayorPorcentajeInt:string;
begin
	mayorPorcentaje:=0;
	mayorVotos:=0;
	repeat
		leer(c);
		if(c.votos>mayorVotos) then begin
			mayorVotos:=c.votos;
			mayorVotosInt:=c.ape;
		end;
		porcentaje:=(c.votos*100)/c.votantes;
		if (porcentaje>mayorPorcentaje) then begin
			mayorPorcentaje:=porcentaje;
			mayorPorcentajeInt:=c.ape;
		end;
	until(c.loc='Zarate');
	writeln('El intendente que saco la mayor cantidad de votos fue: ',mayorVotosInt);
	writeln('El intendente que saco el mayor porcentaje de votos fue: ',mayorPorcentajeInt);


end.
