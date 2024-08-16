program cadp;
const
	dimF=4;
type
	alumno=record
		insc:integer;
		dni:integer;
		apellido:string;
		nombre:string;
		nac:integer;
	end;
  
	vector=array [1..dimF] of alumno; 
  
  
procedure leer (var a:alumno);
begin
	writeln('Ingrese el numero de inscripcion del alumno');
	readln(a.insc);
	writeln('Ingrese el numero de dni del alumno');
	readln(a.dni);
	writeln('Ingrese el apellido del alumno');
	readln(a.apellido);
	writeln('Ingrese el nombre del alumno');
	readln(a.nombre);
	writeln('Ingrese el anio de nacimiento del alumno');
	readln(a.nac);
end;

procedure cargarVector(var v:vector);
var
	a:alumno;
	i:integer;
begin
	for i:=1 to dimF do begin
		leer(a);
		v[i]:= a;
	end;
end;


function pares (num:integer):boolean;
var
	cantDig,par:integer;
begin
    par:=0;
    cantDig:=0;
    while (num<>0) do begin
		if ((num  mod 2)=0) then
			par+=1; 
		num:=num div 10;
		cantDig+=1;
	end;
	pares:=(par=cantDig);
end;

procedure maximos(var max1,max2:integer;var apellidoMax1,apellidoMax2,nombreMax1,nombreMax2:string;edad:integer;apellido,nom:string);
begin
	if(edad>max1) then begin
		apellidoMax2:=apellidoMax1;
		apellidoMax1:=apellido;
		nombreMax2:= nombreMax1;
		nombreMax1:=nom;
		max2:=max1;
		max1:=edad;
	end
	else if(edad>max2) then begin
		apellidoMax2:=apellido;
		nombreMax2:=nom;
		max2:=edad;
	end;
end;

var
	v:vector;
	apellidoMax1,apellidoMax2,nombreMax1,nombreMax2: string;
	i,contPares,max1,max2:integer;
	porcentaje:real;
begin
	cargarVector(v);
	contPares:=0;
	for i:=1 to dimF do begin 
		if(pares(v[i].dni)) then
			contPares+=1;
		maximos(max1,max2,apellidoMax1,apellidoMax2,nombreMax1,nombreMax2,(2020-v[i].nac),v[i].apellido,v[i].nombre);
	end;
	porcentaje:=(contPares*100)/dimF;
	writeln('El porcentaje de alumnos con todos numeros pares en el dni es de: ',porcentaje:2:2,'%');
	writeln('Los nombres y apellidos de los dos alumnos con mas edad son: ',apellidoMax1,' ',nombreMax1,' y ',apellidoMax2,' ',nombreMax2);
end.
