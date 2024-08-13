type
	docentes=record
		dni:string;
		nom:string;
		ape:string;
		mail:string;
	end;
	
	proyectos=record
		cod:integer;
		titulo:string;
		doc:docentes;
		cantA:integer;
		esc:string;
		loc:string;
	end;
	
procedure leerDoc(var d:docentes);
begin
	writeln('ingrese el dni del docente');
	readln(d.dni);
	writeln('ingrese el nombre del docente');
	readln(d.nom);
	writeln('ingrese el apellido del docente');
	readln(d.ape);
	writeln('ingrese el email del docente');
	readln(d.mail);
end;

procedure leerProy(var p:proyectos);
var
	d:docentes;
begin
	writeln('ingrese el codigo del proyecto');
	readln(p.cod);
	if(p.cod<>-1) then begin
		writeln('ingrese el titulo del proyecto');
		readln(p.titulo);
		leerDoc(d);
		writeln('ingrese la cantidad de alumnos del proyecto');
		readln(p.cantA);
		writeln('ingrese el nombre de la escuela');
		readln(p.esc);
		writeln('ingrese la localidad de la escuela');
		readln(p.loc);
	end;
end;

procedure maximos(var max1, max2: integer; var escMax1, escMax2: string; cant: integer; esc: string);
begin
	if(cant > max1) then begin
		max2:= max1;
		max1:= cant;
		escMax2:= escMax1;	
		escMax1:= esc;
	end
	else if(cant > max2) then begin
		max2:= cant;
		escMax2:= esc;
	end;
end;

function paresEimpares(cod:integer):boolean;
var
	par,impar:integer;
begin
	par:=0;
	impar:=0;
	while(cod<>0) do begin
		if(cod mod 2=0)then
			par+=1
		else
			impar+=1;
		cod:=cod div 10;
	end;
	paresEimpares:=(par=impar)
end;

var
	cantTot,cantLoc,max1,max2,aluTotEsc:integer;
	p:proyectos;
	mismaLoc,mismaEsc,escMax1,escMax2:string;
begin
	cantTot:=0;
	max1:=-1;
	max2:=-1;
	leerProy(p);
	while(p.cod<>-1) do begin
		mismaLoc:=p.loc;
		cantLoc:=0;
		while(p.cod<>-1) and (mismaLoc=p.loc) do begin
			mismaEsc:=p.esc;
			aluTotEsc:=0;
			cantLoc+=1;
			while(p.cod<>-1) and (mismaLoc=p.loc) and (mismaEsc=p.esc) do begin
				aluTotEsc+=p.cantA;
				if(p.loc='Daireaux') and (paresEimpares(p.cod)) then
					writeln('El titulo del proyecto de la localidad "Daireaux" cn el codigo de proyecto con la misma cantidad de digitos pares que impares es: ',p.titulo);
				leerProy(p);
			end;
			maximos(max1,max2,escMax1,escMax2,aluTotEsc,p.esc);
		end;
		cantTot+=cantLoc;
		writeln('La cantidad de proyectos en la localidad de ',mismaLoc,' es de: ',cantLoc);
	end;
	writeln('La cantidad total de proyectos en el anio 2020 es: ',cantTot);
	writeln('Los nombres de las dos escuelas con mas participantes en el mismo proyecto son: ',escMax1,' y ',escMax2);
end.
