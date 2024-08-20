program cadp;
const
	dimfis=200;
type
	dias=1..31;
	
	registro=record
		dia:dias;
		dinero:real;
		distancia:real;
	end;

	viajes=array[1..dimfis] of registro;
	cantviajes=array[dias] of integer;

procedure leer (var r:registro);
begin
	writeln('ingrese la cantidad de km recorrida');
	readln(r.distancia);
	if (r.distancia<>0) then begin
		writeln('ingrese el dia del viaje');
		readln(r.dia);
		writeln('ingrese el dinero transportado');
		readln(r.dinero);
	end;
end;

procedure cargarVector(var v:viajes;var dimL:integer);
var
	r:registro;
begin
	leer(r);
	dimL:=0;
	while(r.distancia<>0) and (dimL<dimfis) do begin
		dimL+=1;
		v[dimL]:=r;
		leer(r);
	end;
end;

procedure inicializarVector(var c:cantviajes);
var
	i:integer;
begin
	for i:=1 to 31 do
		c[i]:=0;
end;

procedure puntob (v:viajes;dimlog:integer;var c:cantviajes;var total,min,dist:real;var day:dias);
var
	i:integer;
begin
	min:=maxint;
	total:=0;
	dist:=0;
	inicializarVector(c);
	for i:=1 to dimlog do begin
		total+=v[i].dinero;
		if (v[i].dinero<min) then begin
			min:=v[i].dinero;
			dist:=v[i].distancia;
			day:=v[i].dia;
		end;
		c[v[i].dia]+=1;
	end;
	total:=total/dimlog;
end;

procedure puntoc (var v:viajes;var diml:integer);
var
	i,pos:integer;
begin
	pos:=0;
    for i:=1 to diml do begin
		if(v[i].distancia = 100) then
			pos+=1
		else if (pos>0) then 
			v[i-pos]:=v[i];
    end;
    diml:=diml-pos;
end;

var
	dimlog,i:integer;
	day:dias;
	v:viajes;
	c:cantviajes;
	tot,min,dist:real;
begin
	cargarVector(v,dimlog);
	if(dimlog<>0) then 
		puntob(v,dimlog,c,tot,min,dist,day);
	writeln('El monto promedio transportado es de $',tot:2:2);
	writeln('El dia en el cual un camion transporto menos dinero fue el dia ',day,' del mes');
	writeln('La distancia recorrida del camion que transporto menos dinero fue de ',dist:2:2,' km');
	for i:=1 to 31 do 
		writeln('La cantidad de viajes realizados el dia ',i,' del mes fueron: ',c[i]);
	puntoc(v,dimlog);
	for i:=1 to dimlog do
		writeln(v[i].dia);
end.
