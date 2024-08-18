program cadp;
const
	dimF=500;
type
	vector=array[1..dimF] of string;
	
procedure cargarVector(var v:vector;var dimlog:integer);
var
	nom:string;
begin
	dimlog:=0;
	writeln('ingrese el nombre de un alumno');
	readln(nom);
	while (nom<>'ZZZ') and (dimlog<dimF) do begin
		dimlog+=1;
		v[dimlog]:=nom;
		writeln('ingrese el nombre de un alumno');
		readln(nom);
	end;
end;

procedure eliminar (var v:vector;var dimL:integer);
var
	nom:string;
	pos,i:integer;
begin 
	pos:=1;
	writeln('ingrese el nombre de un alumno a eliminar');
	readln(nom);
	while(pos <= dimL) and (v[pos] <> nom) do
		pos+= 1;
	if(pos<= dimL) and (v[pos] = nom) then begin
		for i:= pos to (diml-1) do
			v[i]:= v[i+1];
		diml:= diml-1;
	end;
end;

procedure insertar(var v:vector;var dimlog:integer;pos:integer);
var
	nom:string;
	i:integer;
begin
	writeln('ingrese el nombre de un alumno a insertar');
	readln(nom);
	if (dimlog+1<=dimF) and(pos<=dimlog) then begin
		for i:= dimlog downto pos do
			v[i+1]:=v[i];
		v[pos]:=nom;
		dimlog:=dimlog+1;
	end;
end;

procedure agregar (var v:vector;var dimlog:integer);
var
	nom:string;
begin
	writeln('ingrese el nombre de un alumno a agregar');
	readln(nom);
	if (dimlog+1<=dimF) then begin
		v[dimlog+1]:=nom;
		dimlog:=dimlog+1;
	end;
end;

var
	v:vector;
	dimlog,i:integer;
begin
	cargarVector(v,dimlog);
	eliminar(v,dimlog);
	insertar(v,dimlog,4);
	agregar(v,dimlog);
	for i:=1 to dimlog do
		writeln(v[i],'|');
end.
