//Comprueba el typeof de diferentes declaraciones de funciones.
 function identity(x) { return x; }
 var id = function(x) { return x; }
 var iden = x => x;
 var identidad = identity;
 //Compruebe el resultado de las siguientes sentencias:
 console.log(identity('Hola'));
 console.log(id('Hello'));
 console.log(iden('Buen día'));
 console.log(identidad('Buen día'))