program ejercicio5;
{ suma los números entre a y b, y retorna el resultado en c }
procedure sumar(a, b, c : integer); //c deberia estar pasado como parametro de referencia(var)
var
    suma : integer;
begin
    for i := a to b do //i no esta declarado como variable
        suma := suma + i; //suma no esta inicializado en 0, suma basura con i
    c := c + suma;
end;
var
    result : integer;
begin
    result := 0;
    readln(a); readln(b); //a y b no estan declaradas como variables
    sumar(a, b, 0); //deberia pasarse la variable result
    write('La suma total es ',result);
    { averigua si el resultado final estuvo entre 10 y 30}
    ok := (result >= 10) or (result <= 30); //tendria que estar con un and y no con or ademas de que la variable ok no esta declarada 
    if (not ok) then
        write ('La suma no quedo entre 10 y 30');
end.
