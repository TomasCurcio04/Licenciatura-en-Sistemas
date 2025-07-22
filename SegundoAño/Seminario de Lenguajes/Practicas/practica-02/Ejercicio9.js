var words = ['perro', 'gato', 'casa', 'árbol', 'nube',
     'día', 'noche', 'zanahoria', 'babuino']

 var atoz = [ "árbol", "babuino", "casa", "día", "gato", 
"noche", "nube", "perro", "zanahoria"]

var ztoa = ["zanahoria", "perro", "nube", "noche", "gato",
 "día", "casa", "babuino", "árbol"]


 words.sort((a, b) => a.localeCompare(b));


 console.log(words);
 words.reverse();
 console.log(words);