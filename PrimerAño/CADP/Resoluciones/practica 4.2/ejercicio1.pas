program cadp;
const
	dimF=500;
type
	vector=array[1..dimF] of integer;
	
procedure cargarVector(var v:vector;var dimL:integer);
var
	i:integer;
begin
	dimL:=random(dimF);
	for i:=1 to dimL do
		v[i]:=random(1500);
end;

procedure ordenarVector(var v:vector;dimL:integer);
var
	i,j,actual:integer;
begin
	for i:=2 to dimL do begin
		actual:=v[i];
		j:=i-1;
		while ((j>0) and (v[j]>actual)) do begin
			v[j+1]:=v[j];
			j:=j-1;
		end;
		v[j+1]:=actual;
	end;
end;
function seEncuentra(v:vector;num,dimL:integer):boolean;
var
	pos:integer;
	ok:boolean;
begin
	pos:=1;
	ok:=false;
	while  (pos<dimL) and (num >= v[pos]) and (ok =false) do begin
		if (v[pos]=num) then
			ok:=true;
		pos+=1;
	end;
	seEncuentra:=ok;
end;
var
	v:vector;
	dimL,num,pos:integer;
begin
	cargarVector(v,dimL);
	writeln('La dimension logica del vector es de: ',dimL);
	ordenarVector(v,dimL);
	pos:=random(dimL);
	writeln('Ingrese un numero para verificar si se encuntra en el vector');
	writeln('Si no se le ocurre ninguno, el numero que esta en la posicion ',pos,' es el ',v[pos]);//prueba para ver si funciona
	readln(num);
	if(seEncuentra(v,num,dimL)) then
		writeln('El numero ingresado si se encuentra en el vector')
	else
		writeln('El numero ingresado no se encuentra en el vector');
end.
