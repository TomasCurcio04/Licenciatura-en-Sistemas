const
	dimF=17;
type
	subRango=1..dimF;
	
	egresados=record
		nombre:string;
		legajo:integer;
		id:subRango;
		promedio:real;
	end;
	
	arbol=^nodo;
	
	nodo=record
		elem:egresados;
		HI:arbol;
		HD:arbol;
	end;
	
	arreglo=array[subRango] of arbol;
	
procedure leer(var e:egresados);
begin
	writeln('Ingrese el promedio del egresado');
	readln(e.promedio);
	if(e.promedio>0) then begin
		writeln('Ingrese el nombre del egresado');
		readln(e.nombre);
		writeln('Ingrese el legajo del egresado');
		readln(e.legajo);
		writeln('Ingrese el id de la facultad');
		readln(e.id);
	end;
end;

procedure agregarArbol(var a:arbol; e:egresados);
begin
	if(a=nil) then begin
		new(a);
		a^.elem:=e;
		a^.HI:=nil;
		a^.HD:=nil
	end
	else if(a^.elem.legajo<=e.legajo) then
		agregarArbol(a^.HD,e)
	else
		agregarArbol(a^.HI,e);
end;

procedure cargarArbol(var a:arbol);
var
	e:egresados;
begin
	leer(e);
	while(e.promedio>0) do begin
		agregarArbol(a,e);
		leer(e);
	end;
end;

procedure agregarArbolAr(var a:arbol; e:egresados );
begin
	if(a=nil) then begin
		new(a);
		a^.elem:=e;
		a^.HI:=nil;
		a^.HD:=nil
	end
	else if(a^.elem.promedio<=e.promedio) then
		agregarArbol(a^.HD,e)
	else
		agregarArbol(a^.HI,e);
end;

procedure cargarArreglo(a:arbol;var ar:arreglo);
begin
	if(a<>nil) then begin
		agregarArbolAr(ar[a^.elem.id],a^.elem);
		cargarArreglo(a^.HD,ar);
		cargarArreglo(a^.HI,ar);
	end;
end;

function mejorPromedio(a:arbol):egresados;
begin
	if(a^.HD=nil) then
		mejorPromedio:=a^.elem
	else
		mejorPromedio:=mejorPromedio(a^.HD);
end;

procedure imprimirMejorPromedio(ar:arreglo;id:integer);
var
	egresadoMax:egresados;
begin
	egresadoMax:=mejorPromedio(ar[id]); 
	writeln('Mejor promedio de la facultad con id: ',id,' es: ',egresadoMax.nombre);
end;

procedure imprimirArbol(a:arbol;padre:string);
begin
	if(a<>nil) then begin
		writeln('Hoja: ',a^.elem.nombre,' Padre: ',padre);
		imprimirArbol(a^.HI,a^.elem.nombre);
		imprimirArbol(a^.HD,a^.elem.nombre);
	end;
end;
var
	a:arbol;
	ar:arreglo;
	i:integer;
	id:subRango;
begin
	a:=nil;
	cargarArbol(a);
	for i:= 1 to dimF do
		ar[i]:=nil;
	writeln('Ingrese un id de facultad');
	readln(id);
	cargarArreglo(a,ar);
	imprimirMejorPromedio(ar,id);
	//writeln('=============');
	//imprimirArbol(a,'');
	//imprimirArbol(ar[id],'');
end.
