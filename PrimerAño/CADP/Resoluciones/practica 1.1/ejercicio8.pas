var
	car1,car2,car3:char;

begin
	writeln('ingrese tres caracteres');
	readln(car1);
	readln(car2);
	readln(car3);
	if ((car1 = 'a') or (car1 = 'e') or (car1 = 'i') or (car1 = 'o') or (car1 = 'u')) 
    and ((car2 = 'a') or (car2 = 'e') or (car2 = 'i') or (car2 = 'o') or (car2 = 'u')) 
    and ((car3 = 'a') or (car3 = 'e') or (car3 = 'i') or (car3 = 'o') or (car3 = 'u')) then
		writeln('Los tres son vocales')
	else
		writeln('Al menos un caracter no era vocal');
end.
