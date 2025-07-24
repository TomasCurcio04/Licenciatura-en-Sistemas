const imagen1 = document.getElementById("imagen-1");
const imagen2 = document.getElementById("imagen-2");
const imagen3 = document.getElementById("imagen-3");
const boton = document.getElementById("boton");
function Mostrar(){
    const texto = document.getElementById("texto").value;
    switch (texto){
        case "imagen 1": imagen1.style.display = "block"; breack;
        case "imagen 2": imagen2.style.display = "block";breack;
        case "imagen 3": imagen3.style.display = "block";breack
        default: alert ("Ingrese imagen 1, imagen 2 o imagen 3 para ver cada imagen");
    }

}

boton.addEventListener("click",() =>Mostrar());

