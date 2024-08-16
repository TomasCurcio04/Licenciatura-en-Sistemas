program cadp;
const
	dimF=200;
type
	info=record
		titulo:string;
		autor:string;
		cantMg:integer;
		cantClics:integer;
		cantCom:integer;
	end;
	  
	vector=array[1..dimF] of info;

procedure leer (var i:info);
begin
	writeln('ingrese el titulo de la foto');
	readln(i.titulo);
	writeln('ingrese el nombre del autor');
	readln(i.autor);
	writeln('ingrese la cantidad de me gusta que tiene la foto');
	readln(i.cantMg);
	writeln('ingrese la cantidad de clics que tiene la foto');
	readln(i.cantClics);
	writeln('ingrese la cantidad de comentarios que tiene la foto');
	readln(i.cantCom);
end;

procedure cargarVector(var v:vector);
var
	inf:info;
	i:integer;
begin
	for i:=1 to dimF do begin
		leer(inf);
		v[i]:=inf;
	end;
end;

procedure masVista(v:vector;var titulo:string);
var
	i,max:integer;
begin
	max:=-1;
	for i:=1 to dimF do
		if (v[i].cantClics>max) then begin
			max:=v[i].cantClics;
			titulo:=v[i].titulo;
		end;
end;

procedure meGusta(v:vector;var totalMg:integer);
var
	i:integer;
begin
	for i:=1 to dimF do
		if (v[i].autor='Art Vandelay') then
			totalmg+=+v[i].cantMg;
end;

procedure comentarios(v:vector);
var
	i:integer;
begin
	for i:= 1 to dimF do
		writeln('La cantidad de comenarios para la foto numero ',i,' con el titulo ',v[i].titulo,' y autor ',v[i].autor,' es de ',v[i].cantCom);
end;

var
	v:vector;
	titulo:string;
	totalMg:integer;
begin
	cargarVector(v);
	masVista(v,titulo);
	writeln('El titulo de la foto con mas cantidad de clics es: ',titulo);
	totalmg:=0;
	megusta(v,totalMg);
	writeln('La cantidad total de me gusta en las fotos del autor  Art Vandelay es de: ',totalMg);
	writeln('La cantidad de comentarios para cada una de las fotos de la pag es de:');
	comentarios(v);
end.
