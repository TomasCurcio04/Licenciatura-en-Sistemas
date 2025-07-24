const boton = document.getElementById("boton");

function showMessage(message){
 alert(message);
 }

 boton.addEventListener("click",() => showMessage("Hola desde JavaScript"));