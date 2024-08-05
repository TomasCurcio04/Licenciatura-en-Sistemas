var
	num:real;
begin
	writeln('ingrese un numero real');
	readln(num);
	write('su valor absoluto es: |');
	if(num<0)then 
		write(num*-1:2:2)
	else write(num:2:2);
	writeln('|' );
end.
