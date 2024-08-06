const
	pi=3.1415;
var
	tipo:char;
	ventasR,ventasC,cantMenor140,cantMenor800:integer;
	ancho,alto,largo,radio,max1,max2,volumen,volumenTotalC,volumenTotalR:real;
begin
	ventasR:=0;
	ventasC:=0;
	max1:=-1;
	max2:=-1;
	volumenTotalC:=0;
	volumenTotalR:=0;
	cantMenor140:=0;
	cantMenor800:=0;
	writeln('Ingrese el tipo de tanque vendido "R" para rectangulares y "C" para cilindricos');
	readln(tipo);
	while(tipo<>'Z') do begin
		if(tipo='R') then begin
			writeln('Ingrese el ancho del tanque');
			readln(ancho);
			writeln('Ingrese el largo del tanque');
			readln(largo);
			writeln('Ingrese el alto del tanque');
			readln(alto);
			volumen:= ancho * largo * alto;
			ventasR+=1;
			volumenTotalR+=volumen;
		end
		else if(tipo='C') then begin
			writeln('Ingrese el radio del tanque');
			readln(radio);
			writeln('Ingrese el alto del tanque');
			readln(alto);
			volumen:= pi * (radio * radio) * alto;
			ventasC+=1;
			volumenTotalC+=volumen;
		end;	
		if(volumen > max1) then begin
            max2:= max1;
			max1:= volumen;
        end
        else if(volumen > max2) then
			max2:= volumen;
		if(alto<1.40) then
			cantMenor140+=1;
		if(volumen<800) then
			cantMenor800+=1;
		writeln('Ingrese el tipo de tanque vendido "R" para rectangulares y "C" para cilindricos');
		readln(tipo);
	end;
	writeln('Los volumenes de los dos mayores tanques vendidos son: ', max1:2:2, ' y ', max2:2:2);
	writeln('El volumen promedio de todos los tanques cilindricos vendidos es de: ',volumenTotalC/ventasC:2:2);
	writeln('El volumen promedio de todos los tanques rectangulares vendidos es de: ',volumenTotalR/ventasR:2:2);
	writeln('La cantidad de tanques con altura menor a 1.40 metros es de: ',cantmenor140);
	writeln('La cantidad de tanques con volumen menor a 800 metros cubicos es de: ',cantmenor800);
end.
