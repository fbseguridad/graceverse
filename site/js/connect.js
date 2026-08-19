(function(){

const form=document.getElementById("connect-form");

const title=document.getElementById(
"connect-title"
);

const status=document.getElementById(
"connect-status"
);


document
.querySelectorAll("[data-connect]")
.forEach(function(button){

button.addEventListener(
"click",
function(){

const type=button.dataset.connect;

if(type==="hablar"){

title.textContent=
"Quiero hablar con alguien";

}

else if(type==="congregacion"){

title.textContent=
"Quiero conocer otra congregación";

}

else{

title.textContent=
"Necesito oración";

}

form.hidden=false;

form.scrollIntoView({
behavior:"smooth",
block:"center"
});

});

});


const connectForm=
document.getElementById(
"connect-form-element"
);


if(connectForm){

connectForm.addEventListener(
"submit",
function(event){

event.preventDefault();

const name=
document
.getElementById("connect-name")
.value
.trim();

const country=
document
.getElementById("connect-country")
.value
.trim();

status.textContent=
`Gracias, ${name}. Tu presentación desde ${country} quedó preparada. La conexión mundial en tiempo real se incorporará junto con el sistema de moderación y seguridad de Connect.`;

status.className=
"status success";

});

}

})();
