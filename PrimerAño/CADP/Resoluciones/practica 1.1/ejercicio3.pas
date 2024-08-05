var
	num1,num2,num3:integer;
begin
	writeln('ingrese 3 numeros');
	readln(num1);
	readln(num2);
	readln(num3);
	if(num1>num2) and (num1>num3) then begin
		writeln(num1);
		if(num2>num3) then begin
			writeln(num2);
			writeln(num3);
		end
		else begin
			writeln(num3);
			writeln(num2);
		end;
	end
	else if(num2>num1)and (num2>num3) then begin
		writeln(num2);
		if(num1>num3) then begin
			writeln(num1);
			writeln(num3);
		end
		else begin
			writeln(num3);
			writeln(num1);
		end;
	end
	else if(num3>num1)and (num3>num2) then begin
		writeln(num3);
		if(num1>num2) then begin
			writeln(num1);
			writeln(num2);
		end
		else begin
			writeln(num2);
			writeln(num1);
		end;
	end
end.
