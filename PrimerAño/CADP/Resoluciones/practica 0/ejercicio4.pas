const
	pi=3.1415;
var
	diametro,radio,area,perimetro:real;
begin
	writeln('ingrese el diametro de un circulo por teclado');
	readln(diametro);
	radio:=(diametro/2);
	area:=pi*(radio*radio);
	perimetro:=diametro*pi;
	writeln('El radio del circulo es de: ',radio:2:2,', el area es de : ',area:2:2,' y el perimetro es de :',perimetro:2:2);
end.

