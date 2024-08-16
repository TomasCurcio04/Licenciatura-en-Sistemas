const
	dimF=4;
	tipos=4;
type
	galaxia=record
		nom:string;
		tipo:integer;
		masa:real;
		dis:real;
	end;
	
	vector=array[1..dimF] of galaxia;
	vectorContador=array[1..tipos] of integer;

procedure leer(var g:galaxia);
begin
	writeln('Ingrese el nombre de la galaxia');
	readln(g.nom);
	writeln('Ingrese el tipo de galaxia que es en numeros:');
	writeln('1. Eliptica 2. Espiral 3.Lenticular 4.Irregular');
	readln(g.tipo);
	writeln('Ingrese su masa medida en kg');
	readln(g.masa);
	writeln('Ingrese la distancia que hay desde la tierra');
	readln(g.dis);
end;

procedure cargarVector(var v:vector);
var
	g:galaxia;
	i:integer;
begin
	for i:=1 to dimF do begin
		leer(g);
		v[i]:=g;
	end;
end;

procedure inicializarVector(var vc:vectorContador);
var
	i:integer;
begin
	for i:=1 to tipos do
		vc[i]:=0;
end;

procedure cantGalaxias(var vc:vectorContador;tipo:integer);
begin
	vc[tipo]+=1;
end;

procedure maximos(var max1, max2: real; var nomMax1, nomMax2: string; masa: real; nom: string);
begin
	if(masa > max1) then begin
		max2:= max1;
		max1:= masa;
		nomMax2:= nomMax1;
		nomMax1:= nom;
	end
	else if(masa > max2) then begin
		max2:= masa;
		nomMax2:= nom;
	end;
end;

procedure minimos(var min1, min2: real; var nomMin1, nomMin2: string; masa: real; nom: string);
begin
	if(masa < min1) then begin
		min2:= min1;
		min1:= masa;
		nomMin2:= nomMin1;
		nomMin1:= nom;
	end
	else if(masa < min2) then begin
		min2:= masa;
		nomMin2:= nom;
	end;
end;

var
	v:vector;
	vc:vectorContador;
	i,noirregular:integer;
	masaTotal,masaPrin,max1,max2,min1,min2:real;
	nomMax1,nomMax2,nomMin1,nomMin2:string;
begin
	cargarVector(v);
	inicializarVector(vc);
	masaTotal:=0;
	masaPrin:=0;
	noirregular:=0;
	max1:=maxint*-1;
	max2:=maxint*-1;
	min1:=maxint;
	min2:=maxint;
	for i:=1 to dimF do begin
		cantGalaxias(vc,v[i].tipo);
		if(v[i].nom='Via Lactea') or (v[i].nom='Andromeda') or (v[i].nom='Triangulo') then
			masaPrin+=v[i].masa;
		if(v[i].tipo<>4) and (v[i].dis<1000) then
			noirregular+=1;
		masaTotal+=v[i].masa;
		maximos(max1,max2,nomMax1,nomMax2,v[i].masa,v[i].nom);
		minimos(min1,min2,nomMin1,nomMin2,v[i].masa,v[i].nom);
	end;
	for i:=1 to tipos do
		writeln('La cantidad de galaxias que hay del tipo ',i,' son: ',vc[i]);
	writeln('La masa total acumulada entre las 3 principales galaxia es de: ',masaPrin:2:2,' y esta respecto a la masa total de todas las galaxias representa un: ',(masaPrin*100)/masaTotal:2:2,'%');
	writeln('La cantidad de galaxias no irregulares y que estan a menos de 1000 pc de distancia es de: ',noirregular);	
	writeln('Las dos galaxias con mayor masa son: ',nomMax1,' y ',nomMax2,' y las dos galaxias con menos masa son:',nomMin1,' y ',nomMin2);
end.	
