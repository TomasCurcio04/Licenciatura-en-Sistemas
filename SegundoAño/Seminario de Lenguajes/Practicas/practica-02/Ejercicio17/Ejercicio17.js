const boton1=document.getElementById("boton1");
const boton2=document.getElementById("boton2");
const boton3=document.getElementById("boton3");
const img1=document.getElementById("imagen-1");
const img2=document.getElementById("imagen-2");
const img3=document.getElementById("imagen-3");

boton1.addEventListener("click", ()=>{img1.style.display="block"});
boton2.addEventListener("click",()=>{img2.style.display="block"});
boton3.addEventListener("click",()=>{img3.style.display="block"});