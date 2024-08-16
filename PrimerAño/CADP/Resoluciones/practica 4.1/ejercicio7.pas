program cadp;
const
	dimfis=9;
type
	vectorContador = array [0..dimfis] of integer;
 
procedure inicializar (var v:vectorContador);
var
	i:integer;
begin
	for i:=0 to dimfis do
		v[i]:=0;
end; 

procedure leer (var v:vectorContador);
var
	n,resto:integer;
begin
	writeln('Escriba un numero entero');
	readln(n);
	while (n<>-1) do begin
		if (n=0) then
			v[n]+=1;
		while (n<>0) do begin
			resto:=n mod 10;
			v[resto]+=1;
			n:=n div 10;
		end;
		writeln('Escriba un numero entero');
		readln(n);
	end;
end;

procedure imprimir(v:vectorContador);
var
	i:integer;
begin
	for i:=0 to dimfis do begin
		if(v[i]>=1) then
			writeln('Numero ',i,':', v[i],' veces');
	end;
end;

procedure masLeido (v:vectorContador);
var
	i,mas:integer;
begin
	mas:=0;
	for i:=0 to dimfis do
		if (v[i]>mas) then
			mas:=i;
	writeln('El digito mas leido fue el ',mas);
end;

procedure noAparece(v:vectorContador);
var
	i:integer;
begin
	write('Los dgitos que no tuvieron ocurrencias son: ');
	for i:=0 to dimfis do
		if (v[i]=0) then
			write(i,', ');
end;

var
	v:vectorContador;
begin
  inicializar(v);
  leer(v);
  imprimir(v);
  masLeido(v);
  noAparece(v);
end.
