program ejercicio2;
const
	cant_datos = 150;
type
	vdatos = array[1..cant_datos] of real;
	
procedure cargarVector(var v:vdatos; var dimL : integer);
var
	num: real;
begin
	writeln('Ingrese un numero real para agregarlo al vector');
	read(num);
	while (dimL < cant_datos) and (num <> 0) do begin
		dimL+=+ 1;
		v[dimL]:= num;
		writeln('Ingrese un numero real para agregarlo al vector');
		read(num);
	end;
end;

procedure modificarVectorySumar(var v:vdatos; dimL : integer; n: 
real; var suma: real);
var
    i: integer;
begin
	for i:= 1 to dimL do begin
		v[i]+=n;
		suma+=v[i];
	end;
end;

var
	datos : vdatos;
	i, dim : integer;
	num, suma : real;
begin
	dim := 0;
	suma := 0;
	cargarVector(datos, dim); { completar }
	writeln('Ingrese un valor a sumar');
	readln(num);
	modificarVectorySumar(datos, dim, num, suma); {completar}
	writeln('La suma de los valores es: ', suma:2:2);
	writeln('Se procesaron: ' ,dim, ' numeros');
end.
