function Ejercicio2() {
    console.log("Hola mundo!")
}


function Ejercicio4() {
    let text = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."

    function contarCaracteres(text){
        console.log("El tamaño del string es de: " + text.length);
        console.log(text.lastIndexOf("ipsum"));
        console.log(text.substring(0, 4).toUpperCase());
    }

    contarCaracteres(text);

}

function Ejercicio5() {
    const A = Math.floor(Math.random() * 10)
    const B = Math.floor(Math.random() * 10)
    const C = Math.floor(Math.random() * 10)
    console.log(A, B, C)

    function operacionNumerica(a, b, c) {
        console.log(((a + b) ** c))
        console.log(Math.max(a, b, c))
    }

    operacionNumerica(A, B, C);
}

function Ejercicio6() {
    let dia1 =  new Date(Date.now());

    let dia2 = new Date(1575978300000);

    function imprimirFecha(fecha){
        return fecha.toString();
    }

    function asignarFecha(fecha1, fecha2){
        let aux = fecha1
        fecha1 = fecha2
        fecha2 = aux
    }

    function restarFecha(fecha1, fecha2){
        let fechaNueva = Math.abs(fecha1 - fecha2);
        return fechaNueva;
    }

    console.log(imprimirFecha(dia1));
    console.log(imprimirFecha(dia2));

    asignarFecha(dia1, dia2);

    console.log(imprimirFecha(dia1));
    console.log(imprimirFecha(dia2));

    let milisegundos = restarFecha(dia1, dia2);
    console.log("Pasaron " + Math.floor(milisegundos/(1000*60*60*24)) + " dias ");
    console.log(imprimirFecha(dia1));
    console.log(imprimirFecha(dia2));


}

console.log("Ejercicio 2");
Ejercicio2();
console.log("Ejercicio 4");
Ejercicio4(); 
console.log("Ejercicio 5");
Ejercicio5();
console.log("Ejercicio 6");
Ejercicio6();