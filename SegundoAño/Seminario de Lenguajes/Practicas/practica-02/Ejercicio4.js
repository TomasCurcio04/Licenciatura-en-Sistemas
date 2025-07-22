function concat(left, right) {
 return left.concat(right);
 }
 
 var names = ["John", "Paul", "George", "Ringo"];
 console.log(names.reduce(concat));