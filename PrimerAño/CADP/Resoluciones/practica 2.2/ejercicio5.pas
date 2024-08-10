
function b_EsDobleDe_a(numA,numB:integer):boolean;
begin
	b_EsDobleDe_a:=(numB=numA*2);
end;

var
	numA,numB,paresLeidos,cantDoble:integer;
begin
	writeln('inciso 5a:');
	writeln('ingrese dos numeros');
	readln(numA);
	readln(numB);
	if(b_EsDobleDe_a(numA,numB))then
		writeln('El segundo numero es el doble que el primero')
	else
		writeln('El segundo numero NO es el doble que el primero');
	//////////////////////
	cantDoble:=0;
	paresLeidos:=0;
	writeln('inciso 5b:');
	writeln('ingrese dos numeros');
	readln(numA);
	readln(numB);
	while(numA<>0) and (numB<>0) do begin
		paresLeidos+=1;
		if(b_EsDobleDe_a(numA,numB)) then
			cantDoble+=1;
		writeln('ingrese dos numeros');
		readln(numA);
		readln(numB);
	end;
	writeln('la cantidad de pares leidos es de: ',paresLeidos,' y la cantidad donde el numero b es el doble que el a es de: ',cantDoble);
end.
