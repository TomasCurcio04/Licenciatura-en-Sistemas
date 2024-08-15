program cadp;
const
	dimF=100;
type
	vector = array [1..dimF] of integer;
  
function posicion (v:vector;x:integer):integer;
var
	dimL,pos:integer;
begin
	dimL:=0;
	pos:=-1;
	while(dimL<dimF) and(x<>v[DimL]) do begin 
		dimL+=1;
		if (x=v[dimL]) then 
			pos:=dimL; 
    end;
    posicion:=pos;
end;

procedure intercambio (var v:vector;x,y:integer);
var
	aux:integer;
begin
	aux:=v[x];
	v[x]:=v[y];
	v[y]:=aux;
end;

function sumavector(v:vector):integer;
var
	i,suma:integer;
begin
	suma:=0;
	for i:=1 to dimF do
		suma+=v[i];
	sumavector:=suma;
end;  

function promedio (suma:integer):real;
begin
	promedio:=(suma / dimF);
end;

function eleMaximo(v:vector):integer;
var
	i,max,pos:integer;
begin
	max:=maxint*-1;
	for i:=1 to dimF do
		if (v[i]>max) then begin
			max:=v[i];
			pos:=i;
		end;
	eleMaximo:=pos;
end;

function eleMinimo(v:vector):integer;
var
	i,min,pos:integer;
begin
	min:=maxint;
	for i:= 1 to dimF do
	if (v[i]<min) then begin
		min:=v[i];
		pos:=i;
	end;
	eleMinimo:=pos;
end;

var
	v:vector;
	i,num,x,y,suma:integer;
begin
	for i:=1 to dimF do begin
		v[i]:=random(100);
		write(v[i],' | ');
	end;
	writeln();
	writeln('Escriba un numero x para ver si se encuentra en el arreglo');
	readln(num);
	writeln('La posicion del numero x en en el vector es: ',posicion(v,num));
	writeln('Escriba dos numeros "x" e "y" entre 1 y 100');
	readln(x);
	readln(y);
	intercambio(v,x,y);
	writeln('El nuevo vector con las posiciones intercambiadas entre "x" e "y" es: ');
	for i:=1 to dimF do
		write(v[i],' | ');
	writeln();
	suma:=sumavector(v);
	writeln('La suma de todos los elementos del vector es de: ',suma);
	writeln('El promedio de los elementos del vector es de : ',promedio(suma):2:2);
	writeln('La posicion con el mayor elemento del vector es: ',eleMaximo(v));
	writeln('La posicion con el menor elemento del vector es: ',eleMinimo(v));
end.
