 function max(values) { /* retorna el valor máximo */ 
    return Math.max(...values);
}

 function min(values) { /* retorna el valor mínimo */
    return Math.min(...values);
}

 function avg(values) { /* retorna el valor promedio */
    return (sum(values) / values.length);
 }

 function sum(values) { /* retorna la sumatoria de los valores */
    return values.reduce(function(acumulador, valor){return acumulador + parseFloat(valor)}, 0);
 }

 var prices = [1.2, 2, 22, -33, 12, 0.0, "13", Math.PI];
 var names = ["John", "Paul", "George", "Ringo"];
 console.log(max(prices));
 console.log(min(prices));
 console.log(avg(prices));
 console.log(sum(prices));
 console.log(max(names));
 console.log(min(names));
 console.log(avg(names));
 console.log(sum(names));
 console.log(max([]));
 console.log(min([]));
 console.log(avg([]));
 console.log(sum([]));