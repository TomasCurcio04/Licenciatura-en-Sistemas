function esVocal (c:char):boolean;
begin
	case c of
        'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U':
            esVocal:= true;
        else
            esVocal:= false;
    end;
end;
function cumpleA:boolean;
var
	A: char;
begin
	writeln('Ingrese la secuencia A: ');
	readln(A);
	while (A<>'$') and (esVocal(A)) do begin
		writeln('Ingrese la secuencia A: ');
		readln(A);
	end;
	cumpleA:=(A='$');
end;

function cumpleB:boolean;
var
	B: char;
begin
	writeln('Ingrese la secuencia B: ');
	readln(B);
	while (B<>'#') and not(esVocal(B)) do begin
		writeln('Ingrese la secuencia B: ');
		readln(B);
	end;
	cumpleB:=(B='#');
end;

begin
	if (cumpleA) then begin
		if (cumpleB) then
			writeln ('Se cumplieron todos los patrones.')
        else
			writeln ('No se cumplio el patron B');
	end
	else
		writeln('No se cumplio el patron A');
end.
