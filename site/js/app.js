(function(){

const menu=document.getElementById("menu-button");
const nav=document.getElementById("main-nav");

if(menu && nav){

menu.addEventListener("click",function(){

nav.classList.toggle("open");

});

}


const pop=document.getElementById("smart-pop");
const close=document.getElementById("pop-close");

if(
pop &&
!sessionStorage.getItem("graceverse-popup")
){

setTimeout(function(){

pop.hidden=false;

sessionStorage.setItem(
"graceverse-popup",
"1"
);

},18000);

}


if(close){

close.addEventListener(
"click",
function(){
pop.hidden=true;
}
);

}


if(
"serviceWorker" in navigator
){

window.addEventListener(
"load",
function(){

navigator.serviceWorker
.register("/sw.js")
.catch(function(){});

}
);

}

})();
