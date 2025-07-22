function arrayEquals(a, b) { 
    if (a===null || b===null)
        return false
    if (a.length !== b.length) 
        return false;
    else { for(let i=0;i<a.length;i++){
        if (a[i] !== b [i]){
            return false;
        }
    }
    return true
    
    }
 }
 var a = [1,2,3,4];
 var b = [1,2,3,4];
 var c = [1,2,3,4,5];
 var d = "Hola";
 var e = null;
 var f = ["H","o","l","a"]
 console.log(arrayEquals(a, a));
 console.log(arrayEquals(a, b));
 console.log(arrayEquals(b, c));
 console.log(arrayEquals(e, c));
 console.log(arrayEquals(c, d));
 console.log(arrayEquals(e, e));
 console.log(arrayEquals(d,f));