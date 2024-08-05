var
	i,num,max,pos:integer;
begin
	max:=-999;
	for i:=1 to 10 do begin
		writeln('ingrese un numero');
		readln(num);
		if(num>max)then begin
			max:=num;
			pos:=i;
		end;
	end;
	writeln('El mayor numeroleido fue el: ',max,' en la posicion: ',pos);
end.
