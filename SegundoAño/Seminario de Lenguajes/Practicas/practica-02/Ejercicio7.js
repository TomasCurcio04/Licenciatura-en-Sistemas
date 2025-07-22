 function isNumeric(str) { 
        if (!(isNaN(str)) && (typeof(str) === "string"))
            return true;
        else    
            return false;
  }

 console.log(isNumeric("2")) // retorna true
 console.log(isNumeric("2a")) // retorna false
 console.log(isNumeric(2)) // retorna false