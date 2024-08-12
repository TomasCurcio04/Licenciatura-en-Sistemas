program cadp;
type
	autos=record
		marca:string;
		modelo:string;
		precio:real;
	end;

procedure leer(var a:autos);
begin
    writeln('ingrese la marca del auto');
    readln(a.marca);
    writeln('ingrese el modelo del auto');
    readln(a.modelo);
    writeln('ingrese el precio del auto');
    readln(a.precio);
end;

procedure caro (a:autos;var max1:real;var marca1,modelo1:string);
begin
	if (a.precio>max1) then begin
		max1:=a.precio;
		marca1:=a.marca;
		modelo1:=a.modelo;
    end;
end;

var
	auto:autos;
	precioMarca,max,contadorAutos,promedio:real;
	marcaActual,marcaMax,modeloMax:string;
begin
	max:=-1;
	leer (auto);
	while (auto.marca<>'ZZZ') do begin
		precioMarca:=0;
		contadorAutos:=0;
		marcaActual:=auto.marca;
		while (marcaActual=auto.marca) do begin
				precioMarca+=auto.precio; 
			contadorAutos+=1;   
			caro(auto,max,marcaMax,modeloMax);
			leer(auto);
		end;
		promedio:=(precioMarca/contadorAutos);
		writeln('el precio promedio de la marca ', marcaActual,' es: $',promedio:2:2);
	end;
	writeln('la marca y modelo del auto mas caro es: ',marcaMax,modeloMax);
end.

