procedure cumpleA(var cant:integer;var cumple:boolean);
var
	A: char;
begin
	cant:=0;
	writeln('Ingrese la secuencia A: ');
	readln(A);
	while (A<>'$') and (A<>'%') do begin
		cant+=1;
		writeln('Ingrese la secuencia A: ');
		readln(A);
	end;
	cumple:=(A='%');
end;

function cumpleB(cant:integer):boolean;
var
	B: char;
	cantIgual,cantArroba:integer;
begin
	cantArroba:=0;
	cantIgual:=0;
	writeln('Ingrese la secuencia B: ');
	readln(B);
	while (B<>'*') and (cantArroba<=3) and (cantIgual<=cant) do begin
		if(B='@') then
			cantArroba+=1;
		cantIgual+=1;
		writeln('Ingrese la secuencia B: ');
		readln(B);
	end;
	cumpleB:=(B='*') and (cant=cantIgual) and (cantArroba<=3);
end;

var
	cumple:boolean;
	cant:integer;
begin
	cumpleA(cant,cumple);
	if (cumple) then begin
		if (cumpleB(cant)) then
			writeln ('Se cumplieron todos los patrones.')
        else
			writeln ('No se cumplio el patron B');
	end
	else
		writeln('No se cumplio el patron A');
end.

