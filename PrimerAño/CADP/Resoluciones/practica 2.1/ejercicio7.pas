program alcanceYFunciones;
var
    suma, cant : integer;
function calcularPromedio : real;
var
    prom : real;
begin
    if (cant = 0) then
        prom := -1
    else
        prom := suma / cant;
    calcularPromedio:= prom;//a-(modificacion del programa anterior para que funcione)
end;
var
    prom: real;
begin  //programa principal 
    readln(suma);
    readln(cant);
    prom:= calcularPromedio;//b-(modificacion del programa anterior para que no se invoque a la funcion 2 veces)
    if (prom <> -1) then begin
        cant := 0;
        writeln('El promedio es: ' , prom:0:2);
    end
    else
        writeln('Dividir por cero no parece ser una buena idea');
   {c- i) Promedio 0.00
	   ii) Promedio -1.00
	   iii) Promedio 8.00}
end.
