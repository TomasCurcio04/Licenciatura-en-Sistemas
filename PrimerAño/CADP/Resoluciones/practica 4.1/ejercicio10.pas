program cadp;
const
	dimF=300;
type
	empleados=array[1..dimF] of real;

procedure cargarVector(var emp:empleados;var dimL:integer);
var
	salario:real;
begin
	dimL:=0;
	writeln('Ingrese el salario del empleado');
	readln(salario);
	while(salario<>0) do begin
		dimL+=1;
		emp[dimL]:=salario;
		writeln('Ingrese el salario del empleado');
		readln(salario);
	end;
end;

procedure aumento (var emp:empleados;x:real;dimlog:integer);
var
	i:integer;
	aum:real;
begin
	aum:=x*1.15;
	for i:=1 to dimlog do
		emp[i]:=emp[i]*aum;
end;

procedure promedio(emp:empleados;var prom:real;dimlog:integer);
var
	total:real;
	i:integer;
begin
	total:=0;
	for i:=1 to dimlog do 
		total+=emp[i];
	prom:=total/dimlog;
end;

var
	emp:empleados;
	dimlog:integer;
	x,prom:real;
begin
	cargarVector(emp,dimlog);
	writeln('Ingrese un numero real x para aumentar el sueldo');  
	readln(x);
	aumento(emp,x,dimlog);
	promedio(emp,prom,dimlog);
	writeln('El sueldo promedio de los empleados con el aumento es de: $',prom:2:2);
end.  

