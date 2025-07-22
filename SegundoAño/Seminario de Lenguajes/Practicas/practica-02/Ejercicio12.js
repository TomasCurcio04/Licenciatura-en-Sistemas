//Implemente una función equivalente al método reduce de los Arrays (verejercicio 4).
 function reduce(array, binaryOperation, initialValue){
    total = initialValue;
    for (let i =0; i<array.length;i++)
        total = binaryOperation(total, array[i]);
    return total;
 // TODO: implementar
 }
 //Por ejemplo las siguientes invocaciones a numbers.reduce y reduce deben retornar el mismo valor.
 var numbers = [ 1, 3, 4, 6, 23, 56, 56, 67, 3, 567, 98, 45, 4 ]
 var sum = (x, y) => x + y;
 console.log(numbers.reduce(sum, 0));
 console.log(reduce(numbers, sum, 0));