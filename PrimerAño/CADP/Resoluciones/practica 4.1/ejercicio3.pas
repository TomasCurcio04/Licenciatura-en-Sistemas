const
	dimF=15;
type
	vector=array[1..dimF]of integer;
procedure imprimir1(v:vector;dimL:integer);
var
	i:integer;
begin
	for i:=1 to dimL do
		write(v[i],' | ');
end;

procedure imprimir2(v:vector;dimL:integer);
var
	i:integer;
begin
	for i:=dimL downto 1 do
		write(v[i],' | ');
end;

procedure imprimir3(v:vector;dimL:integer);
var
	i:integer;
begin
	for i:=dimL div 2 downto 1 do
		write(v[i],' | ');
	for i:=(dimL div 2)+1 to dimL do
		write(v[i],' | ');
end;

procedure imprimir4(v:vector;x,y:integer);
var
	i:integer;
begin
	if(x<y) then 
		for i:=x to y do
			write(v[i],' | ')
	else 
		for i:=x downto y do 
			write(v[i],' | ');
end;

var
	v:vector;
	i,dimL,x,y:integer;
begin
	dimL:=random(dimF);
	writeln('La dimensin logica es de:',dimL); 
	for i:=1 to dimL do
		v[i]:=random(100);
	imprimir1(v,dimL);
	writeln();
	imprimir2(v,dimL);
	writeln();
	imprimir3(v,dimL);
	writeln();
	x:=random(dimL);
	y:=random(dimL);
	imprimir4(v,x,y);
	writeln();
	writeln('La posicion "x" es la numero: ',x,' y la posicion "y" es la numero: ',y);
	imprimir4(v,1,dimL);
	writeln();
	imprimir4(v,dimL,1);
	writeln();
	imprimir4(v,dimL div 2,1);
	imprimir4(v,dimL div 2+1,dimL);
end.
