 /*Ejercicio 13: Analizando IMC en Objetos Personales
 Crea funciones para analizar el Índice de Masa Corporal (IMC) en un conjunto
 de objetos personales.*/
var alice = {
    name : "Alice",
    dob : new Date(2001, 3, 4),
    height : 165,
    weight : 68
 };
 var bob = {
    name : "Robert",
    dob : new Date(1997, 0, 31),
    height : 170,
    weight : 88
 };
 var charly = {
    name : "Charles",
    dob : new Date(1978, 9, 15),
    height : 188,
    weight : 102
 };
 var lucy = {
    name : "Lucía",
    dob : new Date(1955, 7, 7),
    height : 155,
    weight : 61
 };
 var peter = {
    name : "Peter",
    dob : new Date(1988, 2, 9),
    height : 165,
    weight : 99
 };
 var luke = {
    name : "Lucas",
    dob : new Date(1910, 11, 4),
    height : 172,
    weight : 75
 };

 function calcularIMC(persona){
    return (persona.weight / Math.pow((persona.height / 100), 2));
 }

 function mayorIMC(personas, IMC){
    let arreglo25 = personas.filter(element => calcularIMC(element) > IMC).map(p => p.name);
    return arreglo25;
 }
 function calcularEdad(dob){
    return new Date().getFullYear() - dob.getFullYear();
 }

 function edades(personas){
    let arregloEdades = personas.map(({name, dob}) => ({[name]: calcularEdad(dob)}));
    return arregloEdades; 
 }

 function personasIMC(personas,edad){
    return personas.filter(element => calcularEdad(element.dob) > edad).map(p => calcularIMC(p));
 }

function promedioIMC(personas){
        let sumaIMC = personas.reduce((acumulador, persona) => acumulador + calcularIMC(persona), 0);
        return sumaIMC / personas.length;
}
function personaMasJoven(personas){
   minEdad=200;
   joven = null;
   personas.forEach(element => { 
      edad = calcularEdad(element.dob); 
      if (edad<minEdad) {
         minEdad=edad;
         joven=element
      }
   });
   return joven;
}

function ordenarPorEstatura(personas){
   arreglo = personas;
   arreglo.sort((a, b) => a.height - b.height);
   return arreglo;
}
 //1)
 let arregloPersonas = [alice, bob, charly, lucy, peter, luke];
 console.log("Personas con IMC mayor a 25:", mayorIMC(arregloPersonas,25));
 //2)
 console.log("Nombre y edad de las personas", edades(arregloPersonas));
 //3)
 console.log("IMC de las personas mayores a 40", personasIMC(arregloPersonas,40));
 //4)
 console.log("Promedio de IMC de las personas" , promedioIMC(arregloPersonas));
 //5)
 console.log("La persona más joven es",personaMasJoven(arregloPersonas));
 //6
 console.log("Arreglo ordenado por estaturas",ordenarPorEstatura(arregloPersonas));