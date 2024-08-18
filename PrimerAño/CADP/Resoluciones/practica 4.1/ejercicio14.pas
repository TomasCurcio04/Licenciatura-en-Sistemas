const
	dimF=3;//1000;
type
	subrango2=1..5;
	
	desarrollador=record
		pais:string;
		cod:integer;
		proyecto:string;
		rol:subrango2;
		horas:real;
	end;
	
	vectorValores=array[subrango2] of real;
	vectorProyectos=array[1..dimF] of real;
	vectorArquitectos=array[1..dimF] of integer;
	
procedure leer(var d:desarrollador);
begin
	writeln('Ingrese el codigo del proyecto');
	readln(d.cod);
	if(d.cod<>-1) then begin
		writeln('Ingrese el pais de residencia del desarrollador');
		readln(d.pais);
		writeln('Ingrese el nombre del proyecto');
		readln(d.proyecto);
		writeln('Ingrese el rol del desarrollador');
		readln(d.rol);
		writeln('Ingrese las horas trabajas del desarrollador');
		readln(d.horas);
	end;
end;

procedure inicializarVectorValores(var vv:vectorValores);
begin
	vv[1]:=35.20;
	vv[2]:=27.45;
	vv[3]:=31.03;
	vv[4]:=44.28;
	vv[5]:=39.87;
end;

procedure inicializarVectorProyectos(var vp:vectorProyectos);
var
	i:integer;
begin
	for i:=1 to dimF do
		vp[i]:=0;
end;

procedure inicializarVectorArqui(var va:vectorArquitectos);
var
	i:integer;
begin
	for i:=1 to dimF do
		va[i]:=0;
end;

var
	d:desarrollador;
	vv:vectorValores;
	vp:vectorProyectos;
	va:vectorArquitectos;
	contArgentina,horasABD,min:real;
	codMin,i:integer;
begin
	inicializarVectorValores(vv);
	inicializarVectorProyectos(vp);
	inicializarVectorArqui(va);
	contArgentina:=0;
	horasABD:=0;
	min:=maxint;
	leer(d);
	while(d.cod<>-1) do begin
		if(d.pais='Argentina') then
			contArgentina+=d.horas*vv[d.rol];
		if(d.rol=3) then
			horasABD+=d.horas;
		vp[d.cod]+=d.horas*vv[d.rol];
		if(d.rol=4) then
			va[d.cod]+=1;
		leer(d);
	end;
	writeln('El monto total invertido en desarrolladoores de Argentina es de: ',contArgentina:2:2);
	writeln('La cantidad de horas trabajas por Administradores de Bases de Datos son: ',horasABD:2:2);
	for i:=1 to dimF do begin
		if(vp[i]<min) then begin
			min:=vp[i];
			codMin:=i;
		end;
		writeln('La cantidad de Arquitectos de Software en el proyecto con codigo ',i,' es de: ',va[i]);
	end;
	writeln('El codigo del proyecto con menor monto invertido es el: ',codMin);
end.
