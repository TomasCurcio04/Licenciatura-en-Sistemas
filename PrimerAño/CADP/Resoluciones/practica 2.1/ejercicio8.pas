program anidamientos;
procedure leer;
var
    letra : char;
    function analizarLetra : boolean;
    begin
        if (letra >= 'a') and (letra <= 'z') then
            analizarLetra := true 
        else
            if (letra >= 'A') and (letra <= 'Z') then
                analizarletra := false;
    end; //fin de la funcion analizarLetra
begin
    readln(letra);
    if (analizarLetra) then
        writeln('Se trata de una minúscula')
    else
        writeln('Se trata de una mayúscula');
end; // fin del procedure leer

var
    ok : boolean;
begin // programa principal
    leer;
    ok := analizarLetra;
    if ok then
        writeln('Gracias, vuelva prontosss');
end.

{ 
a) 
i) El problema es que el programa principal llama a la funcion analizarLetra y esta solo es conocida en el procedimiento leer, por lo tanto da error.
ii) Estaria bueno que la funcion sea conocida por todo el programa y no sea un submodulo para solucionar el error.

b)
i) Los valores son todos los caracteres que no sean letras.
ii) El problema es que si se ingresa un caracter que no sea una letra, la funcion igual lo toma como minuscula .
iii) Este problema se puede solucionar haciendo que se tomen en cuenta los otros valores por ejemplo con otra funcion y que si devuelve que es una letra ahi se evalue si es mayuscula o minuscula }
