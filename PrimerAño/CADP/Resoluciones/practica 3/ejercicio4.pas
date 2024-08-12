program cadp;
const
	min=3.40;
	MB=1.35;
type
	linea=record
		telefono:integer;
		minutos:integer;
		mb:integer;
  end;

procedure leer(var l:linea);
begin
    writeln('ingrese el numero de telefono');
    readln(l.telefono);
    writeln('ingrese la cantidad de minutos consumidos');
    readln(l.minutos);
    writeln('ingrese la cantidad de mb consumidos');
    readln(l.mb);
end;
  
  
procedure factura (cod,cantL:integer;var totalmin,totalmb:real);  
var
	i:integer;
	l:linea;
begin
	for i:=1 to cantL do begin
		leer(l);
		totalmin+=l.minutos*min;
		totalmb+=l.mb*MB;
	end;
end;

var
	i,codigoC,cantLineas:integer;
	totalmin,totalmb:real;
begin
	totalmin:=0;
	totalmb:=0;
	for i:=1 to 5 do begin
		writeln('ingrese el codigo de cliente');
		readln(codigoC);
		writeln('ingrese la cantidad de lineas a su nombre');
		readln(cantLineas);
		factura(codigoC,cantLineas,totalmin,totalmb);
		writeln('la cantidad total a abonar por los minutos consumidos en el mes es de: $',totalmin:2:2);
		writeln('la cantidad total a abanonar por los mb gastados en el mes es de: $',totalmb:2:2);
	end;
end.
