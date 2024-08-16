const
	dimF=10;//100;
	anios=10;//50;
type
	vectorDePuntos=array[1..dimF] of real;
	vectorDeAnios=array[1..anios] of real;
	
var
	i,j,anioA,anioB:integer;
	v:vectorDePuntos;
	VdV:vectorDeAnios;
	promedioTemp,maxA,maxB:real;
begin
	maxA:=-900;
	maxB:=-900;
	for i:=1 to anios do begin
		promedioTemp:=0;
		for j:=1 to dimF do begin
			v[j]:=random(50)-random(30);
			promedioTemp+=v[j];
			if(v[j]>maxB) then begin
				maxB:=v[j];
				anioB:=i;
			end;
		end;
		VdV[i]:=(promedioTemp/dimF);
		if(VdV[i]>maxA) then begin
			maxA:=VdV[i];
			anioA:=i;
		end;
		writeln('Temperatura por puntos el anio ',i);
		for j:=1 to dimF do 
			write(v[j]:2:2,'|');
		writeln();
	end;
	writeln('Temperaturas promedio por anios');
	for i:=1 to anios do 
		write('Anio ',i,': ',VdV[i]:2:2,'|');
	writeln();
	writeln('El anio con mayor temperatura promedio fue en el anio ',anioA);
	writeln('El anio con mayor temperatura en algun punto del planeta en los ultimos 50 anios fue en el anio ',anioB);
end.
