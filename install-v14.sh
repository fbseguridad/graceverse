#!/data/data/com.termux/files/usr/bin/bash
set -e

cd ~/graceverse

echo "=============================================="
echo " GRACEVERSE V1.4"
echo " MINISTERIO INTERNACIONAL JESÚS REY"
echo " EXPERIENCIA INTERNACIONAL SIN FRONTERAS"
echo "=============================================="

mkdir -p site/css site/js site/assets

cat > site/index.html <<'HTML'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#071426">
<meta name="description" content="GraceVerse — Ministerio Internacional Jesús Rey. Fe, oración, Palabra y comunidad cristiana sin fronteras.">
<link rel="manifest" href="/manifest.json">
<link rel="stylesheet" href="/css/styles.css">
<title>GraceVerse — Fe sin fronteras</title>
</head>

<body>

<header class="header">

<a class="logo" href="/">
<span class="logo-mark">✝</span>

<div>
<strong>GRACEVERSE</strong>
<small>Ministerio Internacional Jesús Rey</small>
</div>
</a>

<button
class="menu-button"
id="menu-button"
aria-label="Abrir menú">
☰
</button>

<nav id="main-nav">
<a href="/">Inicio</a>
<a href="/palabra.html">📖 Palabra</a>
<a href="/oracion.html">🙏 Oración</a>
<a href="/juegos.html">🎮 Juegos</a>
<a href="/historias.html">❤️ Historias</a>
<a href="/connect.html">🌎 Connect</a>
<a href="/apoyar.html">🤍 Apoyar</a>
</nav>

</header>

<div class="announcement">
🌎 GRACEVERSE · UNA COMUNIDAD CRISTIANA SIN FRONTERAS
</div>

<main>

<section class="hero">

<div class="hero-overlay"></div>

<div class="hero-content">

<span class="eyebrow light">
MINISTERIO INTERNACIONAL JESÚS REY
</span>

<h1>
No importa dónde estés.
<br>
<span>La esperanza puede encontrarte.</span>
</h1>

<p>
Una palabra. Una oración. Una conversación.
Una comunidad.
Un espacio digital para acercarte a Dios
y conectar con personas de diferentes lugares del mundo.
</p>

<div class="actions">

<a class="button primary"
href="/palabra.html">
📖 Quiero una palabra
</a>

<a class="button glass"
href="/connect.html">
🌎 Conocer a alguien
</a>

</div>

</div>

<div class="hero-badge">
✦ FE · ESPERANZA · COMUNIDAD · SERVICIO ✦
</div>

</section>


<section class="container quick-grid">

<a class="quick-card featured"
href="/oracion.html">

<span>🙏</span>

<strong>
Necesito oración
</strong>

<small>
Detenete. Respir&aacute;. Oremos juntos.
</small>

</a>


<a class="quick-card"
href="/connect.html">

<span>🌎</span>

<strong>
Quiero conocer personas
</strong>

<small>
Conectate con creyentes de otras congregaciones y países.
</small>

</a>


<a class="quick-card"
href="/juegos.html">

<span>🎮</span>

<strong>
¿Cuánto sabés de la Biblia?
</strong>

<small>
Poné a prueba tu conocimiento.
</small>

</a>


<a class="quick-card"
href="/historias.html">

<span>❤️</span>

<strong>
Historias de esperanza
</strong>

<small>
Leé experiencias y compartí la tuya.
</small>

</a>

</section>


<section class="container section">

<div class="section-title centered">

<span class="eyebrow">
GRACEVERSE WORLD
</span>

<h2>
Una comunidad que cruza fronteras.
</h2>

<p>
Podés estar en Argentina y conversar con alguien de Estados Unidos,
México, Brasil, Colombia o cualquier otro lugar.
</p>

</div>


<div class="world-panel">

<div class="world-globe">
🌎
</div>

<div>

<span class="eyebrow light">
SIN FRONTERAS
</span>

<h3>
¿Querés hablar con alguien
o conocer otra congregación?
</h3>

<p>
GraceVerse busca crear un espacio donde personas de diferentes
congregaciones puedan conocerse, escucharse y compartir experiencias
de fe con respeto.
</p>

<a
class="button primary"
href="/connect.html">
Entrar a Connect
</a>

</div>

</div>

</section>


<section class="container section">

<div class="section-title">

<span class="eyebrow">
PARA HOY
</span>

<h2>
Pequeños momentos que pueden cambiar un día.
</h2>

</div>


<div class="daily-grid">

<article class="daily-card">

<span>📖</span>

<h3>
Una palabra
</h3>

<p>
Leé una reflexión y compartila con alguien
que pueda necesitarla.
</p>

<a href="/palabra.html">
Leer ahora →
</a>

</article>


<article class="daily-card">

<span>🙏</span>

<h3>
Una oración
</h3>

<p>
Poné delante de Dios aquello que hoy
pesa en tu corazón.
</p>

<a href="/oracion.html">
Orar ahora →
</a>

</article>


<article class="daily-card">

<span>🤍</span>

<h3>
Una forma de ayudar
</h3>

<p>
Podés sostener el proyecto compartiéndolo
o realizando una ofrenda voluntaria.
</p>

<a href="/apoyar.html">
Conocer más →
</a>

</article>

</div>

</section>


<section class="container section">

<div class="section-title centered">

<span class="eyebrow">
VOCES DE LA COMUNIDAD
</span>

<h2>
Historias que pueden inspirar.
</h2>

<p>
Los testimonios reales publicados en GraceVerse deben contar
con autorización de sus autores.
</p>

</div>


<div class="testimonial-grid">

<article class="testimonial">

<div class="stars">
★★★★★
</div>

<p>
“Una palabra compartida a tiempo puede acompañar a alguien
que está atravesando un día difícil.”
</p>

<strong>
Reflexión de GraceVerse
</strong>

<small>
Contenido editorial · no es un testimonio personal.
</small>

</article>


<article class="testimonial">

<div class="stars">
★★★★★
</div>

<p>
“Una comunidad cristiana puede crecer cuando aprende
a escuchar a personas de diferentes lugares.”
</p>

<strong>
Reflexión de GraceVerse
</strong>

<small>
Contenido editorial · no es un testimonio personal.
</small>

</article>


<article class="testimonial">

<div class="stars">
★★★★★
</div>

<p>
“Compartir esperanza también puede ser una forma
de servir.”
</p>

<strong>
Reflexión de GraceVerse
</strong>

<small>
Contenido editorial · no es un testimonio personal.
</small>

</article>

</div>

</section>


<section class="container support-banner">

<div>

<span class="eyebrow light">
SERVIR TAMBIÉN ES SOSTENER
</span>

<h2>
GraceVerse quiere seguir siendo accesible.
</h2>

<p>
El contenido principal busca permanecer abierto.
La publicidad y las ofrendas voluntarias ayudan a cubrir
hosting, dominio, herramientas, seguridad y desarrollo.
</p>

</div>

<a
class="button light-button"
href="/apoyar.html">
🤍 Ver formas de apoyar
</a>

</section>

</main>


<footer>

<strong>
✝ GRACEVERSE
</strong>

<p>
Ministerio Internacional Jesús Rey · Fe sin fronteras
</p>

<div>

<a href="/palabra.html">
Palabra
</a>

<a href="/oracion.html">
Oración
</a>

<a href="/juegos.html">
Juegos
</a>

<a href="/historias.html">
Historias
</a>

<a href="/connect.html">
Connect
</a>

<a href="/apoyar.html">
Apoyar
</a>

</div>

</footer>


<div
class="smart-pop"
id="smart-pop"
hidden>

<button
class="pop-close"
id="pop-close">
×
</button>

<span>
✦
</span>

<strong>
¿Te sirvió este momento?
</strong>

<p>
Podés volver cuando quieras.
Compartir GraceVerse también ayuda a que otra persona
pueda encontrar este espacio.
</p>

<a href="/apoyar.html">
Conocer cómo apoyar →
</a>

</div>


<script src="/js/app.js"></script>

</body>
</html>
HTML


cat > site/connect.html <<'HTML'
<!doctype html>
<html lang="es">

<head>

<meta charset="utf-8">

<meta
name="viewport"
content="width=device-width,initial-scale=1">

<meta
name="theme-color"
content="#071426">

<meta
name="description"
content="GraceVerse Connect — comunidad cristiana internacional.">

<link
rel="manifest"
href="/manifest.json">

<link
rel="stylesheet"
href="/css/styles.css">

<title>
Connect — GraceVerse
</title>

</head>

<body>

<header class="header">

<a class="logo" href="/">

<span class="logo-mark">
✝
</span>

<div>

<strong>
GRACEVERSE
</strong>

<small>
Ministerio Internacional Jesús Rey
</small>

</div>

</a>

<button
class="menu-button"
id="menu-button">
☰
</button>

<nav id="main-nav">

<a href="/">
Inicio
</a>

<a href="/palabra.html">
📖 Palabra
</a>

<a href="/oracion.html">
🙏 Oración
</a>

<a href="/juegos.html">
🎮 Juegos
</a>

<a href="/historias.html">
❤️ Historias
</a>

<a href="/connect.html">
🌎 Connect
</a>

<a href="/apoyar.html">
🤍 Apoyar
</a>

</nav>

</header>


<main class="container page">

<section class="page-header">

<span class="eyebrow">
GRACEVERSE CONNECT · WORLD
</span>

<h1>
¿Querés hablar con alguien
o conocer otra congregación?
</h1>

<p>
Un espacio pensado para conectar personas
de diferentes países y comunidades cristianas.
</p>

</section>


<section class="connect-hero">

<div class="connect-orb">
🌎
</div>

<div>

<span class="eyebrow light">
SIN FRONTERAS
</span>

<h2>
Una persona para otra persona.
</h2>

<p>
La visión de Connect es acercar creyentes,
congregaciones y personas que quieran conversar
desde distintos lugares del mundo.
</p>

</div>

</section>


<div class="connect-grid">


<article class="connect-card big">

<span>
💬
</span>

<h2>
Quiero hablar con alguien
</h2>

<p>
Para conversar, escuchar y compartir experiencias.
</p>

<button
class="button primary"
data-connect="hablar">
Buscar conexión
</button>

</article>


<article class="connect-card big">

<span>
⛪
</span>

<h2>
Quiero conocer otra congregación
</h2>

<p>
Conocé comunidades y personas de otros lugares.
</p>

<button
class="button secondary"
data-connect="congregacion">
Buscar congregación
</button>

</article>


<article class="connect-card big">

<span>
🙏
</span>

<h2>
Necesito oración
</h2>

<p>
Pedí oración y permití que otros puedan acompañarte.
</p>

<button
class="button secondary"
data-connect="oracion">
Pedir oración
</button>

</article>

</div>


<section
class="connect-form"
id="connect-form"
hidden>

<h2 id="connect-title">
Prepará tu conexión
</h2>


<form
id="connect-form-element">


<label>

Cómo querés aparecer

<input
id="connect-name"
maxlength="60"
placeholder="Ej.: Juan"
required>

</label>


<label>

País

<input
id="connect-country"
maxlength="60"
placeholder="Ej.: Argentina"
required>

</label>


<label>

Mensaje inicial

<textarea
id="connect-message"
maxlength="500"
rows="5"
placeholder="Hola, me gustaría conocer personas de..."
required></textarea>

</label>


<label class="checkbox">

<input
id="connect-agree"
type="checkbox"
required>

<span>

Acepto no compartir contraseñas,
datos bancarios, documentos,
dirección ni información privada
con desconocidos.

</span>

</label>


<button
class="button primary">
Continuar
</button>

</form>


<p
id="connect-status"
class="status">
</p>

</section>


<section class="notice">

<strong>
Seguridad primero
</strong>

<p>
No compartas dinero, contraseñas,
documentos ni datos privados con personas
que conozcas online.
Si alguien te pide algo extraño,
cortá la conversación y reportalo.
</p>

</section>


<section class="ad-box">

<strong>
PUBLICIDAD · SMARTLINK
</strong>

<p>
La publicidad puede ayudar a financiar
el funcionamiento gratuito de GraceVerse.
</p>

<div class="ad-placeholder">
ESPACIO PUBLICITARIO
</div>

</section>

</main>


<footer>

<strong>
✝ GRACEVERSE
</strong>

<p>
Ministerio Internacional Jesús Rey
</p>

<a href="/apoyar.html">
🤍 Apoyar
</a>

</footer>


<script src="/js/app.js"></script>
<script src="/js/connect.js"></script>

</body>
</html>
HTML


cat > site/css/styles.css <<'CSS'
:root{
--navy:#071426;
--blue:#12345a;
--gold:#d9a441;
--cream:#f7f2e8;
--white:#fff;
--muted:#657080;
--line:#e6e8ec;
--shadow:0 18px 55px rgba(7,20,38,.12);
--radius:24px
}

*{
box-sizing:border-box
}

html{
scroll-behavior:smooth
}

body{
margin:0;
font-family:Inter,system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;
color:var(--navy);
background:#fff;
line-height:1.6
}

a{
text-decoration:none;
color:inherit
}

button,
input,
textarea{
font:inherit
}

.header{
position:sticky;
top:0;
z-index:50;
display:flex;
align-items:center;
justify-content:space-between;
padding:13px 5%;
background:rgba(7,20,38,.96);
backdrop-filter:blur(14px);
color:#fff
}

.logo{
display:flex;
align-items:center;
gap:10px
}

.logo-mark{
display:grid;
place-items:center;
width:42px;
height:42px;
border-radius:50%;
background:linear-gradient(145deg,var(--gold),#f5d58c);
color:var(--navy);
font-size:21px;
box-shadow:0 8px 25px #0004
}

.logo strong{
display:block;
letter-spacing:.12em
}

.logo small{
display:block;
color:#cbd5e1;
font-size:10px
}

.header nav{
display:flex;
gap:7px;
align-items:center
}

.header nav a{
padding:9px 11px;
border-radius:12px;
color:#e5e7eb;
font-size:14px
}

.header nav a:hover{
background:#ffffff16;
color:#fff
}

.menu-button{
display:none;
background:none;
border:0;
color:#fff;
font-size:28px
}

.announcement{
text-align:center;
padding:8px;
background:var(--gold);
color:#071426;
font-size:12px;
font-weight:800;
letter-spacing:.08em
}

.hero{
position:relative;
min-height:650px;
display:grid;
align-items:center;
overflow:hidden;
background:
linear-gradient(115deg,rgba(5,16,31,.97),rgba(8,37,69,.72)),
url("https://images.unsplash.com/photo-1504052434569-70ad5836ab65?auto=format&fit=crop&w=1800&q=85")
center/cover
}

.hero-content{
position:relative;
z-index:2;
max-width:850px;
padding:90px 7%;
color:#fff
}

.eyebrow{
display:inline-block;
font-size:11px;
letter-spacing:.16em;
font-weight:900;
color:#8a5b05;
margin-bottom:12px
}

.eyebrow.light{
color:#f4cf7c
}

.hero h1{
font-size:clamp(43px,7vw,84px);
line-height:1.02;
margin:0 0 25px;
letter-spacing:-.045em
}

.hero h1 span{
color:#f4cf7c
}

.hero p{
font-size:19px;
max-width:720px;
color:#d9e2ee
}

.hero-badge{
position:absolute;
z-index:2;
right:5%;
bottom:30px;
color:#fff;
background:#071426bb;
border:1px solid #ffffff2b;
padding:10px 16px;
border-radius:999px;
font-size:11px;
letter-spacing:.12em
}

.actions{
display:flex;
gap:12px;
flex-wrap:wrap;
margin-top:26px
}

.button{
display:inline-flex;
align-items:center;
justify-content:center;
border:0;
border-radius:14px;
padding:13px 18px;
font-weight:800;
cursor:pointer;
transition:.2s;
box-shadow:0 8px 22px #0714261a
}

.button:hover{
transform:translateY(-2px)
}

.primary{
background:linear-gradient(135deg,#d9a441,#f0c86d);
color:#071426
}

.secondary{
background:#eef2f6;
color:#10233b
}

.glass{
background:#ffffff15;
color:#fff;
border:1px solid #ffffff45
}

.light-button{
background:#fff;
color:#071426
}

.container{
width:min(1160px,90%);
margin:auto
}

.quick-grid{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:14px;
margin-top:-55px;
position:relative;
z-index:5
}

.quick-card{
background:#fff;
border:1px solid var(--line);
padding:22px;
border-radius:20px;
box-shadow:var(--shadow);
transition:.2s
}

.quick-card:hover{
transform:translateY(-5px)
}

.quick-card span{
font-size:30px;
display:block;
margin-bottom:9px
}

.quick-card strong{
display:block;
font-size:16px
}

.quick-card small{
color:var(--muted)
}

.quick-card.featured{
border-top:4px solid var(--gold)
}

.section{
padding:85px 0
}

.section-title{
margin-bottom:28px
}

.section-title.centered{
text-align:center;
max-width:780px;
margin-left:auto;
margin-right:auto
}

.section-title h2,
.support-banner h2{
font-size:clamp(30px,5vw,48px);
line-height:1.1;
margin:5px 0 10px
}

.section-title p{
color:var(--muted)
}

.world-panel{
display:grid;
grid-template-columns:280px 1fr;
gap:35px;
align-items:center;
background:linear-gradient(135deg,#071426,#12345a);
color:#fff;
padding:42px;
border-radius:30px;
box-shadow:var(--shadow);
overflow:hidden
}

.world-globe{
font-size:150px;
text-align:center;
filter:drop-shadow(0 15px 30px #0005)
}

.world-panel h3{
font-size:30px;
margin:8px 0
}

.world-panel p{
color:#d8e3ef
}

.daily-grid,
.testimonial-grid{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:18px
}

.daily-card,
.testimonial{
border:1px solid var(--line);
border-radius:22px;
padding:28px;
background:#fff;
box-shadow:0 10px 30px #0714260b
}

.daily-card span{
font-size:34px
}

.daily-card h3{
font-size:22px
}

.daily-card p,
.testimonial p{
color:#5f6977
}

.daily-card a,
.testimonial small{
color:#9b6b0d;
font-weight:800
}

.testimonial .stars{
color:var(--gold);
letter-spacing:.15em
}

.testimonial small{
display:block;
font-weight:600;
font-size:11px;
margin-top:8px
}

.support-banner{
margin-bottom:80px;
background:linear-gradient(135deg,#0a1b31,#183e69);
color:#fff;
border-radius:28px;
padding:38px;
display:flex;
align-items:center;
justify-content:space-between;
gap:25px
}

.support-banner p{
color:#d7e1ec;
max-width:750px
}

.page{
padding-top:60px;
padding-bottom:80px
}

.page-header{
text-align:center;
max-width:850px;
margin:0 auto 45px
}

.page-header h1{
font-size:clamp(35px,6vw,62px);
line-height:1.05;
margin:5px 0 15px
}

.page-header p{
color:var(--muted);
font-size:18px
}

.connect-hero{
display:grid;
grid-template-columns:190px 1fr;
gap:30px;
align-items:center;
padding:35px;
border-radius:28px;
background:linear-gradient(135deg,#071426,#154b7c);
color:#fff;
margin-bottom:25px
}

.connect-orb{
font-size:120px;
text-align:center
}

.connect-hero h2{
font-size:32px;
margin:5px 0
}

.connect-hero p{
color:#d9e5f0
}

.connect-grid{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:18px
}

.connect-card{
padding:28px;
border:1px solid var(--line);
border-radius:22px;
background:#fff;
box-shadow:var(--shadow)
}

.connect-card span{
font-size:38px
}

.connect-card h2{
margin:8px 0
}

.connect-card p{
color:var(--muted)
}

.connect-form{
margin:25px 0;
padding:30px;
border-radius:24px;
background:#f7f9fb;
border:1px solid var(--line)
}

form label{
display:block;
font-weight:800;
margin:15px 0
}

input,
textarea{
width:100%;
margin-top:7px;
border:1px solid #d7dce3;
border-radius:13px;
padding:13px;
background:#fff;
outline:none
}

input:focus,
textarea:focus{
border-color:#9b6b0d;
box-shadow:0 0 0 3px #d9a44122
}

.checkbox{
display:flex;
gap:10px;
align-items:flex-start;
font-size:13px
}

.checkbox input{
width:auto;
margin-top:5px
}

.notice{
padding:20px;
border-left:4px solid var(--gold);
background:#fff9ec;
border-radius:12px;
margin:25px 0
}

.ad-box{
margin:30px 0;
padding:22px;
text-align:center;
background:#f7f8fa;
border:1px dashed #cbd1d9;
border-radius:18px
}

.ad-box p{
max-width:760px;
margin:7px auto;
color:var(--muted);
font-size:13px
}

.ad-placeholder{
min-height:90px;
display:grid;
place-items:center;
color:#8b94a1;
background:#eef1f4;
border-radius:12px;
margin-top:15px
}

.smart-pop{
position:fixed;
z-index:100;
right:18px;
bottom:18px;
width:min(340px,calc(100% - 36px));
background:#fff;
border:1px solid var(--line);
box-shadow:0 20px 70px #07142638;
border-radius:20px;
padding:22px
}

.smart-pop>span{
font-size:30px
}

.smart-pop strong{
display:block;
font-size:18px
}

.smart-pop p{
color:var(--muted);
font-size:13px
}

.smart-pop a{
font-weight:900;
color:#8a5b05
}

.pop-close{
position:absolute;
right:10px;
top:7px;
border:0;
background:none;
font-size:24px;
color:#7a8491
}

footer{
background:#071426;
color:#fff;
text-align:center;
padding:45px 5%
}

footer strong{
letter-spacing:.12em
}

footer p{
color:#aebaca
}

footer div{
display:flex;
justify-content:center;
gap:15px;
flex-wrap:wrap
}

footer a{
color:#d9c18d;
font-size:13px
}

@media(max-width:900px){

.header nav{
display:none;
position:absolute;
left:0;
right:0;
top:68px;
background:#071426;
padding:12px 5%;
flex-direction:column;
align-items:stretch
}

.header nav.open{
display:flex
}

.menu-button{
display:block
}

.quick-grid{
grid-template-columns:repeat(2,1fr)
}

.daily-grid,
.testimonial-grid,
.connect-grid{
grid-template-columns:1fr
}

.world-panel,
.connect-hero{
grid-template-columns:1fr;
text-align:center
}

.world-globe,
.connect-orb{
font-size:90px
}

.support-banner{
display:block
}

.support-banner .button{
margin-top:15px
}

.hero{
min-height:620px
}

.hero-content{
padding:70px 6%
}

.hero-badge{
display:none
}

}

@media(max-width:520px){

.quick-grid{
grid-template-columns:1fr;
margin-top:15px
}

.hero h1{
font-size:45px
}

.announcement{
font-size:9px
}

.page{
padding-top:40px
}

.connect-card,
.daily-card,
.testimonial{
padding:22px
}

}
CSS


cat > site/js/app.js <<'JS'
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
JS


cat > site/js/connect.js <<'JS'
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
JS


cat > site/manifest.json <<'JSON'
{
"name":"GraceVerse — Ministerio Internacional Jesús Rey",
"short_name":"GraceVerse",
"description":"Fe, oración, Palabra y comunidad cristiana sin fronteras.",
"start_url":"/",
"scope":"/",
"display":"standalone",
"background_color":"#071426",
"theme_color":"#071426",
"lang":"es",
"orientation":"portrait",
"icons":[
{
"src":"/assets/icon.svg",
"sizes":"any",
"type":"image/svg+xml",
"purpose":"any maskable"
}
]
}
JSON


cat > site/assets/icon.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">

<rect
width="512"
height="512"
rx="110"
fill="#071426"/>

<circle
cx="256"
cy="256"
r="178"
fill="#d9a441"/>

<path
d="M225 110h62v118h78v58h-78v116h-62V286h-78v-58h78z"
fill="#071426"/>

</svg>
SVG


cat > site/sw.js <<'JS'
const CACHE="graceverse-v1-4";

const ASSETS=[
"/",
"/index.html",
"/palabra.html",
"/oracion.html",
"/juegos.html",
"/historias.html",
"/connect.html",
"/apoyar.html",
"/manifest.json",
"/css/styles.css",
"/js/app.js",
"/js/connect.js",
"/assets/icon.svg"
];

self.addEventListener(
"install",
event=>{

event.waitUntil(
caches
.open(CACHE)
.then(cache=>cache.addAll(ASSETS))
);

self.skipWaiting();

}
);


self.addEventListener(
"activate",
event=>{

event.waitUntil(

caches.keys()
.then(keys=>

Promise.all(

keys
.filter(key=>key!==CACHE)
.map(key=>caches.delete(key))

)

)

);

self.clients.claim();

}
);


self.addEventListener(
"fetch",
event=>{

if(event.request.method!=="GET"){
return;
}

event.respondWith(

fetch(event.request)

.then(response=>{

const copy=response.clone();

caches
.open(CACHE)
.then(cache=>
cache.put(
event.request,
copy
)
);

return response;

})

.catch(()=>
caches.match(
event.request
)
)

);

}
);
JS


cat > site/robots.txt <<'TXT'
User-agent: *
Allow: /

Sitemap: https://graceverse.netlify.app/sitemap.xml
TXT


cat > site/sitemap.xml <<'XML'
<?xml version="1.0" encoding="UTF-8"?>

<urlset
xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

<url>
<loc>https://graceverse.netlify.app/</loc>
</url>

<url>
<loc>https://graceverse.netlify.app/palabra.html</loc>
</url>

<url>
<loc>https://graceverse.netlify.app/oracion.html</loc>
</url>

<url>
<loc>https://graceverse.netlify.app/juegos.html</loc>
</url>

<url>
<loc>https://graceverse.netlify.app/historias.html</loc>
</url>

<url>
<loc>https://graceverse.netlify.app/connect.html</loc>
</url>

<url>
<loc>https://graceverse.netlify.app/apoyar.html</loc>
</url>

</urlset>
XML


echo
echo "===== COMPROBANDO JAVASCRIPT ====="

for f in site/js/*.js site/sw.js
do
node --check "$f"
done


echo
echo "===== ARCHIVOS ====="

find site -type f | sort


echo
echo "===== GIT ====="

git add .

git commit \
-m "GraceVerse V1.4 - experiencia internacional y Connect" \
|| true


echo
echo "===== PUSH ====="

git push -u origin main


echo
echo "=============================================="
echo " GRACEVERSE V1.4 INSTALADO Y SUBIDO"
echo "=============================================="

git log --oneline -3

git status --short

echo
echo "WEB:"
echo "https://graceverse.netlify.app/"
echo
echo "=============================================="

