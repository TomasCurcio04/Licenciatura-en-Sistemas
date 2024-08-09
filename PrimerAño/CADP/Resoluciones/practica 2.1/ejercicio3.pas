program alcance3;
var 
    a: integer;
procedure uno;
var 
    b: integer;
begin
    b:= 2;
    writeln(b); //Imprime 2
end;
begin
    a:= 1;
    uno;
    writeln(a, b); //No puede identificar a la variable b
end.
