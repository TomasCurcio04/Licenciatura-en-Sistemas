let text = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."

function contarCaracteres(text){
    console.log("El tamaño del string es de: " + text.length);
    console.log(text.lastIndexOf("ipsum"));
    console.log(text.substring(0, 4).toUpperCase());
}

contarCaracteres(text);
