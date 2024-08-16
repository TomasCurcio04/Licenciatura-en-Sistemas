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

procedure ambasPos(v:vector;var posMax,posMin:integer;var max,min:integer;dimlog:integer);
var
	i:integer;
begin
	for i:=1 to dimlog do begin
		if (v[i]>max) then begin
			max:=v[i];
			posMax:=i;
		end;
		if (v[i]<min) then begin
			min:=v[i];
			posMin:=i;
		end;
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

var
	v:vector;
	dimLog,max,min,posMin,posMax:integer;
begin
	leer(v,dimLog);
	min:=maxint;
	max:=-1*maxint;
	ambasPos(v,posMax,posMin,max,min,dimLog);
	intercambio(v,max,min);
	writeln('El elemento maximo ',max,' que se encontraba en la posicion ',posMax,' fue intercambiado con el elemento minimo ',min,' que se encontraba en la posicion ',posMin);
end.
