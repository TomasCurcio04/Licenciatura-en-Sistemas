
var
	x1,x2:real;
	cant:integer;
begin
	writeln('ingrese un numero real x');
	readln(x2);
	x1:=x2;
	cant:=0;
	while(x1<>x2*2) and (cant<10) do begin
		writeln('ingrese un numero real');
		readln(x1);
		cant:=cant+1;
	end;
	if(cant=10) then
		writeln('No se ha ingresado el doble de x');
end.
