program ejercicio1;
type
	vnums = array [1..10] of integer;
var
	numeros : vnums;
	i : integer;
begin
	for i:=1 to 10 do {primer bloque for} //a)terminan los valores 1, 2, 3, 4, 5, 6, 7, 8, 9 y 10.
		numeros[i] := i;
	for i := 2 to 10 do {segundo bloque for}//b)la variable numeros termina con los valores 1, 3, 6, 10, 15, 21, 28, 36, 45, 55
		numeros[i] := numeros[i] + numeros [i-1];
{c) for i:= 1 to 9 do 
		numeros[i+1] := numeros[i+1] + numeros[i];
 d) for i:=1 to 9 do
        numeros[i+1] := numeros[i]: quedan los valores 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
    for i:= 1 to 10 do
        write(numeros[i], ' | ');
end.
