var
	x1,x2:real;
begin
	writeln('ingrese un numero real');
	readln(x2);
	x1:=x2;
	while(x1<>x2*2) do begin
		writeln('ingrese un numero real');
		readln(x1);
	end;
end.
