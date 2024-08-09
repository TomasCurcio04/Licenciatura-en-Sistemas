program alcance4;
function cuatro: integer;
begin
    cuatro:= 4;
end;
var a: integer;
begin
    cuatro;
    writeln(a); //El error es que a no tiene ningun contenido, se deberia hacer: a:= cuatro;
    writeln(cuatro);
end.
