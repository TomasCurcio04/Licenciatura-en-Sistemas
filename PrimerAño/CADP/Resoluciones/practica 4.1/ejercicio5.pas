program cadp;
const
	dimF=100;
type
	vector = array [1..dimF] of integer;


procedure leer (var v:vector;var dimlog:integer);
var
	num:integer;
begin
	dimlog:=0;
	writeln('escriba un numero');
	readln(num);
	while (dimlog<dimF) and (num<>0) do	begin
		dimlog+=1;
		v[dimlog]:=num;
		writeln('escriba un numero');
		readln(num);
	end;
end;

procedure intercambio (var v:vector;x,y:integer);
var
	aux:integer;
begin
	aux:=v[x];
	v[x]:=v[y];
	v[y]:=aux;
end;

procedure eleMaximo(v:vector;var max,pos,dimL:integer);
var
	i:integer;
begin
	max:=maxint*-1;
	for i:=1 to dimL do
		if (v[i]>max) then begin
			max:=v[i];
			pos:=i;
		end;
end;

procedure eleMinimo(v:vector;var min,pos,dimL:integer);
var
	i:integer;
begin
	min:=maxint;
	for i:= 1 to dimL do
		if (v[i]<min) then begin
			min:=v[i];
			pos:=i;
		end;
end;

var
	v:vector;
	dimLog,max,min,posMin,posMax:integer;
begin
	leer(v,dimLog);
	eleMaximo(v,max,posMax,dimLog);
	eleMinimo(v,min,posMin,dimLog);
	intercambio(v,max,min);
	writeln('El elemento maximo ',max,' que se encontraba en la posicion ',posMax,' fue intercambiado con el elemento minimo ',min,' que se encontraba en la posicion ',posMin);
end.
