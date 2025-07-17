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

