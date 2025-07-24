/* Defina la función enviar para que obtenga el valor del 
texto ingresado en el input y lo imprima en la consola.
 function enviar(){
    const text = document.getElementById("texto").value;
    console.log(text);
 }*/

/* Agregue otro input similar al existente y modifique la función enviar para
 que al hacer click en el botón el texto del primer input se copie al segundo
 input.
*/

function enviar(){
    const text = document.getElementById("texto").value;
    
    const text2 = document.getElementById("texto2").value=text;
    
}