#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "=============================================="
echo "       GRACEVERSE V1.3 — INSTALADOR"
echo "=============================================="

mkdir -p site/css site/js

cat > site/index.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#0b1220">
<meta name="description" content="GraceVerse — Ministerio Internacional Jesús Rey. Palabra, oración, comunidad y esperanza sin fronteras.">
<link rel="manifest" href="/manifest.json">
<link rel="stylesheet" href="/css/styles.css">
<title>GraceVerse — Ministerio Internacional Jesús Rey</title>
</head>
<body>

<header class="header">
<a class="logo" href="/">
<span>✝</span>
<div><strong>GRACEVERSE</strong><small>Ministerio Internacional Jesús Rey</small></div>
</a>
<button class="menu-button" id="menu-button" aria-label="Abrir menú">☰</button>
<nav id="main-nav">
<a href="/">Inicio</a>
<a href="/palabra.html">📖 Palabra</a>
<a href="/oracion.html">🙏 Oración</a>
<a href="/juegos.html">🎮 Juegos</a>
<a href="/historias.html">❤️ Historias</a>
<a href="/connect.html">🤝 Connect</a>
<a href="/apoyar.html">🤍 Apoyar</a>
</nav>
</header>

<main>

<section class="hero hero-v13">
<div class="hero-glow"></div>
<div class="hero-content">
<span class="eyebrow">🌎 SIN FRONTERAS</span>
<h1>No llegaste acá por casualidad.</h1>
<p id="smart-welcome">
Tal vez hoy necesitabas una palabra, una oración o simplemente recordar que no estás solo.
</p>

<div class="actions">
<a class="button primary" href="/palabra.html">📖 Necesito una palabra</a>
<a class="button secondary" href="/oracion.html">🙏 Quiero orar</a>
</div>

<div class="hero-mini">
<span>❤️ Esperanza</span>
<span>🙏 Fe</span>
<span>🌎 Comunidad</span>
</div>
</div>
</section>

<section class="container daily-highlight">
<div>
<span class="eyebrow">PARA ESTE MOMENTO</span>
<h2 id="daily-title">Una pequeña pausa para Dios.</h2>
<p id="daily-text"></p>
</div>
<a class="button primary" href="/palabra.html">Recibir</a>
</section>

<section class="container ad-box ad-top">
<span>PUBLICIDAD</span>
<p>La publicidad ayuda a sostener los servidores, herramientas y desarrollo de GraceVerse.</p>
<div class="smartlink-slot" data-smartlink="home-top">ESPACIO SMARTLINK</div>
</section>

<section class="container section">
<div class="section-title">
<span class="eyebrow">DESCUBRÍ GRACEVERSE</span>
<h2>Elegí lo que necesitás hoy.</h2>
</div>

<div class="cards">
<a class="feature-card" href="/palabra.html">
<span>📖</span>
<h3>Una palabra</h3>
<p>Reflexiones para comenzar, continuar o terminar tu día con fe.</p>
</a>

<a class="feature-card" href="/oracion.html">
<span>🙏</span>
<h3>Oraciones</h3>
<p>Encontrá una oración según lo que estás viviendo.</p>
</a>

<a class="feature-card" href="/juegos.html">
<span>🎮</span>
<h3>Juegos bíblicos</h3>
<p>Respondé preguntas, aprendé y superá tus propios desafíos.</p>
</a>

<a class="feature-card" href="/historias.html">
<span>❤️</span>
<h3>Historias</h3>
<p>Compartí esperanza. Las historias de la comunidad duran 12 horas.</p>
</a>

<a class="feature-card" href="/connect.html">
<span>🤝</span>
<h3>Connect</h3>
<p>Pedí oración o descubrí cómo acompañar a otra persona.</p>
</a>

<a class="feature-card" href="/apoyar.html">
<span>🤍</span>
<h3>Apoyar</h3>
<p>Ayudá a que este proyecto pueda seguir creciendo.</p>
</a>
</div>
</section>

<section class="container international">
<div class="international-content">
<span class="eyebrow">🌎 MINISTERIO INTERNACIONAL</span>
<h2>Una palabra puede cruzar una frontera en segundos.</h2>
<p>
GraceVerse quiere convertirse en un punto de encuentro para personas
que buscan a Dios desde cualquier lugar del mundo.
</p>
<div class="country-pills">
<span>🇦🇷 Argentina</span>
<span>🇧🇷 Brasil</span>
<span>🇲🇽 México</span>
<span>🇨🇴 Colombia</span>
<span>🇺🇸 Estados Unidos</span>
<span>🌎 Y muchos más</span>
</div>
</div>
</section>

<section class="container inspiration">
<span class="eyebrow">HISTORIAS DE INSPIRACIÓN</span>
<h2>Personas buscando esperanza.</h2>
<p>
Estas historias son contenido editorial de inspiración y no representan
usuarios reales ni testimonios verificados.
</p>

<div class="quote-grid">
<article class="quote-card">
<strong>🇦🇷 Argentina · Inspiración</strong>
<p>“A veces no necesitás una respuesta perfecta. Necesitás detenerte, respirar y volver a mirar hacia Dios.”</p>
</article>

<article class="quote-card">
<strong>🇲🇽 México · Inspiración</strong>
<p>“Una palabra de esperanza puede cambiar el rumbo de una tarde difícil.”</p>
</article>

<article class="quote-card">
<strong>🇨🇴 Colombia · Inspiración</strong>
<p>“La fe también se construye en esos pequeños momentos en los que decidimos no rendirnos.”</p>
</article>
</div>
</section>

<section class="container ad-box">
<span>PUBLICIDAD</span>
<p>Gracias por permitirnos mantener contenido gratuito mediante nuestros espacios publicitarios.</p>
<div class="smartlink-slot" data-smartlink="home-middle">ESPACIO SMARTLINK</div>
</section>

<section class="container support-message">
<span class="eyebrow">🤍 UNA OFRENDA ES VOLUNTARIA</span>
<h2>Si GraceVerse te sirve, ayudanos a llegar más lejos.</h2>
<p>
El acceso a la Palabra, las oraciones y los juegos no requiere pago.
Las ofrendas voluntarias y los ingresos publicitarios ayudan a sostener
infraestructura, seguridad, desarrollo y nuevos contenidos.
</p>
<a class="button primary" href="/apoyar.html">🤍 Conocer cómo apoyar</a>
</section>

</main>

<div id="smart-popup" class="smart-popup" hidden>
<button class="popup-close" id="popup-close" aria-label="Cerrar">×</button>
<span>🙏</span>
<strong id="popup-title">Un momento para vos</strong>
<p id="popup-text">¿Te gustaría recibir una palabra?</p>
<a class="button primary" id="popup-action" href="/palabra.html">Sí, llevarme a la Palabra</a>
</div>

<footer>
<strong>✝ GRACEVERSE</strong>
<p>Ministerio Internacional Jesús Rey</p>
<p>Una palabra. Una oración. Una esperanza.</p>
<div>
<a href="/palabra.html">Palabra</a>
<a href="/oracion.html">Oración</a>
<a href="/juegos.html">Juegos</a>
<a href="/historias.html">Historias</a>
<a href="/connect.html">Connect</a>
<a href="/apoyar.html">Apoyar</a>
</div>
</footer>

<script src="/js/app.js"></script>
</body>
</html>
EOF

cat > site/palabra.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#0b1220">
<meta name="description" content="Palabra y reflexión de GraceVerse.">
<link rel="manifest" href="/manifest.json">
<link rel="stylesheet" href="/css/styles.css">
<title>Palabra — GraceVerse</title>
</head>
<body>
<header class="header">
<a class="logo" href="/"><span>✝</span><div><strong>GRACEVERSE</strong><small>Ministerio Internacional Jesús Rey</small></div></a>
<button class="menu-button" id="menu-button">☰</button>
<nav id="main-nav">
<a href="/">Inicio</a><a href="/palabra.html">📖 Palabra</a><a href="/oracion.html">🙏 Oración</a><a href="/juegos.html">🎮 Juegos</a><a href="/historias.html">❤️ Historias</a><a href="/connect.html">🤝 Connect</a><a href="/apoyar.html">🤍 Apoyar</a>
</nav>
</header>

<main class="container page">
<section class="page-header">
<span class="eyebrow">📖 PALABRA</span>
<h1>Tal vez esta palabra era para vos.</h1>
<p>Leé, reflexioná, guardala o compartila con alguien.</p>
</section>

<article class="verse-card">
<span class="eyebrow" id="verse-category">PALABRA</span>
<blockquote id="verse-text"></blockquote>
<strong id="verse-reference"></strong>
<p id="verse-reflection"></p>

<div class="actions">
<button class="button primary" id="new-verse">Otra palabra</button>
<button class="button secondary" id="share-verse">📲 Compartir</button>
<button class="button secondary" id="save-verse">♡ Guardar</button>
</div>
<p id="verse-status" class="status"></p>
</article>

<section class="ad-box">
<span>PUBLICIDAD</span>
<p>Estos espacios ayudan a sostener GraceVerse y mantener gratuito el contenido espiritual.</p>
<div class="smartlink-slot" data-smartlink="verse-1">ESPACIO SMARTLINK</div>
</section>

<section class="support-message">
<h2>Si esta palabra te ayudó...</h2>
<p>Compartila. A veces lo que para vos es una palabra puede ser exactamente lo que otra persona necesitaba escuchar.</p>
<button class="button primary" id="share-graceverse">📲 Compartir GraceVerse</button>
</section>

<section class="ad-box">
<span>PUBLICIDAD</span>
<div class="smartlink-slot" data-smartlink="verse-2">ESPACIO SMARTLINK</div>
</section>
</main>

<footer><strong>✝ GRACEVERSE</strong><p>Ministerio Internacional Jesús Rey</p><a href="/apoyar.html">🤍 Apoyar</a></footer>
<script src="/js/app.js"></script>
<script src="/js/verse.js"></script>
</body>
</html>
EOF

cat > site/oracion.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#0b1220">
<link rel="manifest" href="/manifest.json">
<link rel="stylesheet" href="/css/styles.css">
<title>Oración — GraceVerse</title>
</head>
<body>
<header class="header">
<a class="logo" href="/"><span>✝</span><div><strong>GRACEVERSE</strong><small>Ministerio Internacional Jesús Rey</small></div></a>
<button class="menu-button" id="menu-button">☰</button>
<nav id="main-nav">
<a href="/">Inicio</a><a href="/palabra.html">📖 Palabra</a><a href="/oracion.html">🙏 Oración</a><a href="/juegos.html">🎮 Juegos</a><a href="/historias.html">❤️ Historias</a><a href="/connect.html">🤝 Connect</a><a href="/apoyar.html">🤍 Apoyar</a>
</nav>
</header>

<main class="container page">
<section class="page-header">
<span class="eyebrow">🙏 ORACIÓN</span>
<h1>Elegí aquello que querés poner delante de Dios.</h1>
<p>No necesitás encontrar las palabras perfectas.</p>
</section>

<div class="prayer-categories">
<button data-prayer="general">🙏 General</button>
<button data-prayer="familia">❤️ Familia</button>
<button data-prayer="trabajo">💼 Trabajo</button>
<button data-prayer="fortaleza">💪 Fortaleza</button>
<button data-prayer="decisiones">🧭 Decisiones</button>
<button data-prayer="agradecimiento">✨ Agradecimiento</button>
</div>

<article class="prayer-card">
<span class="eyebrow" id="prayer-category">ORACIÓN</span>
<p id="prayer-text"></p>
<div class="actions">
<button class="button primary" id="share-prayer">📲 Compartir oración</button>
<button class="button secondary" id="copy-prayer">Copiar</button>
</div>
<p id="prayer-status" class="status"></p>
</article>

<section class="ad-box">
<span>PUBLICIDAD</span>
<p>La publicidad ayuda a financiar el funcionamiento de GraceVerse.</p>
<div class="smartlink-slot" data-smartlink="prayer-1">ESPACIO SMARTLINK</div>
</section>

<section class="support-message">
<h2>¿Querés que alguien ore por vos?</h2>
<p>Podés utilizar Connect para dejar un pedido de oración. No compartas información privada.</p>
<a class="button primary" href="/connect.html">🤝 Ir a Connect</a>
</section>
</main>

<footer><strong>✝ GRACEVERSE</strong><p>Ministerio Internacional Jesús Rey</p><a href="/apoyar.html">🤍 Apoyar</a></footer>
<script src="/js/app.js"></script>
<script src="/js/prayer.js"></script>
</body>
</html>
EOF

cat > site/juegos.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#0b1220">
<link rel="manifest" href="/manifest.json">
<link rel="stylesheet" href="/css/styles.css">
<title>Juegos — GraceVerse</title>
</head>
<body>
<header class="header">
<a class="logo" href="/"><span>✝</span><div><strong>GRACEVERSE</strong><small>Ministerio Internacional Jesús Rey</small></div></a>
<button class="menu-button" id="menu-button">☰</button>
<nav id="main-nav">
<a href="/">Inicio</a><a href="/palabra.html">📖 Palabra</a><a href="/oracion.html">🙏 Oración</a><a href="/juegos.html">🎮 Juegos</a><a href="/historias.html">❤️ Historias</a><a href="/connect.html">🤝 Connect</a><a href="/apoyar.html">🤍 Apoyar</a>
</nav>
</header>

<main class="container page">
<section class="page-header">
<span class="eyebrow">🎮 GRACEVERSE JUEGOS</span>
<h1>¿Cuánto conocés de la Biblia?</h1>
<p>Jugá, aprendé y superá tu propia puntuación.</p>
</section>

<div class="game-stats">
<strong id="quiz-score">0 puntos</strong>
<span id="quiz-progress">Pregunta 1</span>
<strong id="quiz-streak">🔥 Racha 0</strong>
</div>

<article class="quiz-card">
<h2 id="quiz-question"></h2>
<div id="quiz-options" class="quiz-options"></div>
<div id="quiz-result" class="quiz-result" hidden>
<h3 id="quiz-result-title"></h3>
<p id="quiz-result-text"></p>
<button class="button primary" id="quiz-next">Siguiente</button>
</div>
</article>

<section class="ad-box">
<span>PUBLICIDAD</span>
<p>La publicidad ayuda a mantener los juegos y contenidos disponibles.</p>
<div class="smartlink-slot" data-smartlink="quiz-1">ESPACIO SMARTLINK</div>
</section>
</main>

<footer><strong>✝ GRACEVERSE</strong><p>Ministerio Internacional Jesús Rey</p><a href="/apoyar.html">🤍 Apoyar</a></footer>
<script src="/js/app.js"></script>
<script src="/js/quiz.js"></script>
</body>
</html>
EOF

cat > site/historias.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#0b1220">
<link rel="manifest" href="/manifest.json">
<link rel="stylesheet" href="/css/styles.css">
<title>Historias — GraceVerse</title>
</head>
<body>
<header class="header">
<a class="logo" href="/"><span>✝</span><div><strong>GRACEVERSE</strong><small>Ministerio Internacional Jesús Rey</small></div></a>
<button class="menu-button" id="menu-button">☰</button>
<nav id="main-nav">
<a href="/">Inicio</a><a href="/palabra.html">📖 Palabra</a><a href="/oracion.html">🙏 Oración</a><a href="/juegos.html">🎮 Juegos</a><a href="/historias.html">❤️ Historias</a><a href="/connect.html">🤝 Connect</a><a href="/apoyar.html">🤍 Apoyar</a>
</nav>
</header>

<main class="container page">
<section class="page-header">
<span class="eyebrow">❤️ HISTORIAS</span>
<h1>Compartí esperanza.</h1>
<p>Las historias publicadas por la comunidad duran 12 horas y luego dejan de mostrarse.</p>
</section>

<section class="story-form-card">
<h2>Publicar una historia</h2>
<form id="story-form">
<label>Nombre o alias<input id="story-name" maxlength="60" required></label>
<label>Historia<textarea id="story-text" maxlength="1800" rows="8" required placeholder="Contá algo que pueda darle esperanza a otra persona..."></textarea></label>
<label class="checkbox">
<input id="story-agree" type="checkbox" required>
<span>Confirmo que tengo derecho a publicar este contenido y acepto que sea visible durante 12 horas.</span>
</label>
<button class="button primary" type="submit">❤️ Publicar por 12 horas</button>
</form>
<p id="story-status" class="status"></p>
</section>

<section>
<div class="section-title">
<span class="eyebrow">🌎 COMUNIDAD</span>
<h2>Historias recientes</h2>
</div>
<div id="stories-list" class="stories-list"></div>
</section>

<section class="ad-box">
<span>PUBLICIDAD</span>
<p>Gracias a la publicidad podemos sostener este espacio.</p>
<div class="smartlink-slot" data-smartlink="stories-1">ESPACIO SMARTLINK</div>
</section>
</main>

<footer><strong>✝ GRACEVERSE</strong><p>Ministerio Internacional Jesús Rey</p><a href="/apoyar.html">🤍 Apoyar</a></footer>
<script src="/js/app.js"></script>
<script src="/js/stories.js"></script>
</body>
</html>
EOF

cat > site/connect.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#0b1220">
<link rel="manifest" href="/manifest.json">
<link rel="stylesheet" href="/css/styles.css">
<title>Connect — GraceVerse</title>
</head>
<body>
<header class="header">
<a class="logo" href="/"><span>✝</span><div><strong>GRACEVERSE</strong><small>Ministerio Internacional Jesús Rey</small></div></a>
<button class="menu-button" id="menu-button">☰</button>
<nav id="main-nav">
<a href="/">Inicio</a><a href="/palabra.html">📖 Palabra</a><a href="/oracion.html">🙏 Oración</a><a href="/juegos.html">🎮 Juegos</a><a href="/historias.html">❤️ Historias</a><a href="/connect.html">🤝 Connect</a><a href="/apoyar.html">🤍 Apoyar</a>
</nav>
</header>

<main class="container page">
<section class="page-header">
<span class="eyebrow">🤝 CONNECT</span>
<h1>Nadie debería sentirse completamente solo.</h1>
<p>Un espacio para pedir oración u ofrecer acompañamiento.</p>
</section>

<div class="connect-grid">
<article class="connect-card">
<span>🙏</span>
<h2>Necesito oración</h2>
<p>Dejá un pedido para que pueda ser acompañado por la comunidad.</p>
<button class="button primary" id="need-prayer">Pedir oración</button>
</article>

<article class="connect-card">
<span>🤝</span>
<h2>Quiero ayudar</h2>
<p>Si podés escuchar y acompañar con respeto, podés ofrecerte.</p>
<button class="button secondary" id="offer-help">Quiero ayudar</button>
</article>
</div>

<div id="connect-form" class="connect-form" hidden>
<h2 id="connect-title"></h2>
<form id="connect-form-element">
<label>Nombre o alias<input id="connect-name" maxlength="60" required></label>
<label>Mensaje<textarea id="connect-message" maxlength="700" rows="6" required></textarea></label>
<button class="button primary">Enviar</button>
</form>
<p id="connect-status" class="status"></p>
</div>

<section class="notice">
<strong>Importante</strong>
<p>
Connect no reemplaza atención médica, psicológica, legal ni servicios de emergencia.
No compartas contraseñas, datos bancarios, documentos ni información privada.
</p>
</section>

<section class="ad-box">
<span>PUBLICIDAD</span>
<div class="smartlink-slot" data-smartlink="connect-1">ESPACIO SMARTLINK</div>
</section>
</main>

<footer><strong>✝ GRACEVERSE</strong><p>Ministerio Internacional Jesús Rey</p><a href="/apoyar.html">🤍 Apoyar</a></footer>
<script src="/js/app.js"></script>
<script src="/js/connect.js"></script>
</body>
</html>
EOF

cat > site/apoyar.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#0b1220">
<link rel="manifest" href="/manifest.json">
<link rel="stylesheet" href="/css/styles.css">
<title>Apoyar — GraceVerse</title>
</head>
<body>
<header class="header">
<a class="logo" href="/"><span>✝</span><div><strong>GRACEVERSE</strong><small>Ministerio Internacional Jesús Rey</small></div></a>
<button class="menu-button" id="menu-button">☰</button>
<nav id="main-nav">
<a href="/">Inicio</a><a href="/palabra.html">📖 Palabra</a><a href="/oracion.html">🙏 Oración</a><a href="/juegos.html">🎮 Juegos</a><a href="/historias.html">❤️ Historias</a><a href="/connect.html">🤝 Connect</a><a href="/apoyar.html">🤍 Apoyar</a>
</nav>
</header>

<main class="container page">
<section class="page-header">
<span class="eyebrow">🤍 APOYAR</span>
<h1>Dar para recibir no es una obligación. Dar para ayudar es una decisión.</h1>
<p>
GraceVerse busca mantener sus contenidos principales gratuitos.
La plataforma necesita recursos para servidores, dominio, seguridad,
desarrollo, publicidad y producción de contenido.
</p>
</section>

<section class="support-grid">
<article class="support-card">
<span>📢</span>
<h2>Publicidad</h2>
<p>
Los espacios publicitarios y Smartlink pueden generar ingresos para
mantener funcionando la plataforma. Por eso encontrarás espacios
publicitarios dentro de GraceVerse.
</p>
<div class="smartlink-slot" data-smartlink="support-1">ESPACIO SMARTLINK</div>
</article>

<article class="support-card">
<span>🤍</span>
<h2>Ofrendas voluntarias</h2>
<p>
Si GraceVerse te ayudó y querés colaborar, podés realizar una ofrenda
voluntaria. No es necesario donar para utilizar la Palabra, las oraciones
o los juegos.
</p>
<a class="button primary" href="https://paypal.me/OMGJESUSREY" target="_blank" rel="noopener noreferrer">🅿️ Ofrendar por PayPal</a>
</article>
</section>

<section class="support-message">
<h2>Gracias por ser parte.</h2>
<p>
Cada persona que comparte, participa o realiza una ofrenda ayuda a que
este proyecto pueda alcanzar a alguien más.
</p>
<button class="button secondary" id="share-graceverse">📲 Compartir GraceVerse</button>
</section>

<section class="ad-box">
<span>PUBLICIDAD</span>
<div class="smartlink-slot" data-smartlink="support-2">ESPACIO SMARTLINK</div>
</section>
</main>

<footer><strong>✝ GRACEVERSE</strong><p>Ministerio Internacional Jesús Rey</p><a href="/">Volver al inicio</a></footer>
<script src="/js/app.js"></script>
</body>
</html>
EOF

cat > site/js/app.js <<'EOF'
(function () {
"use strict";

const $ = id => document.getElementById(id);

function initMenu() {
  const button = $("menu-button");
  const nav = $("main-nav");
  if (!button || !nav) return;
  button.addEventListener("click", () => nav.classList.toggle("open"));
}

function initSharing() {
  document.querySelectorAll("#share-graceverse").forEach(btn => {
    btn.addEventListener("click", async () => {
      const data = {
        title: "GraceVerse — Ministerio Internacional Jesús Rey",
        text: "Una palabra. Una oración. Una esperanza. 🌎",
        url: location.origin
      };
      try {
        if (navigator.share) await navigator.share(data);
        else {
          await navigator.clipboard.writeText(location.origin);
          btn.textContent = "✓ Enlace copiado";
        }
      } catch (_) {}
    });
  });
}

function initInstall() {
  let deferredPrompt = null;

  window.addEventListener("beforeinstallprompt", event => {
    event.preventDefault();
    deferredPrompt = event;

    const button = document.createElement("button");
    button.className = "install-button";
    button.textContent = "📲 Instalar GraceVerse";
    button.addEventListener("click", async () => {
      if (!deferredPrompt) return;
      deferredPrompt.prompt();
      await deferredPrompt.userChoice;
      deferredPrompt = null;
      button.remove();
    });

    document.body.appendChild(button);
  });
}

function initNotifications() {
  const key = "gv-notification-asked";
  if (!("Notification" in window)) return;
  if (Notification.permission !== "default") return;
  if (localStorage.getItem(key)) return;

  setTimeout(() => {
    localStorage.setItem(key, "1");

    const popup = document.createElement("div");
    popup.className = "notification-popup";
    popup.innerHTML = `
      <strong>🔔 ¿Querés recibir una palabra?</strong>
      <p>Podemos avisarte cuando haya una nueva palabra o desafío.</p>
      <div class="actions">
        <button class="button primary" id="enable-notifications">Activar</button>
        <button class="button secondary" id="close-notifications">Ahora no</button>
      </div>
    `;
    document.body.appendChild(popup);

    $("enable-notifications")?.addEventListener("click", async () => {
      try { await Notification.requestPermission(); } catch (_) {}
      popup.remove();
    });

    $("close-notifications")?.addEventListener("click", () => popup.remove());
  }, 15000);
}

function initSmartPopup() {
  if (location.pathname !== "/" && location.pathname !== "/index.html") return;
  if (sessionStorage.getItem("gv-popup")) return;

  setTimeout(() => {
    const popup = $("smart-popup");
    if (!popup) return;

    const hour = new Date().getHours();
    let title = "Un momento para vos";
    let text = "Tal vez hoy necesitabas detenerte un minuto y acercarte a Dios.";

    if (hour < 12) {
      title = "Comenzá el día con fe";
      text = "Antes de seguir con tu día, regalate una palabra.";
    } else if (hour >= 19) {
      title = "Terminá el día con paz";
      text = "Antes de dormir, dejá tus preocupaciones en oración.";
    }

    $("popup-title").textContent = title;
    $("popup-text").textContent = text;
    popup.hidden = false;
    sessionStorage.setItem("gv-popup", "1");

    $("popup-close")?.addEventListener("click", () => popup.hidden = true);
  }, 10000);
}

function initDaily() {
  const title = $("daily-title");
  const text = $("daily-text");
  const welcome = $("smart-welcome");
  if (!title && !welcome) return;

  const hour = new Date().getHours();

  if (hour < 12) {
    if (title) title.textContent = "Que tu mañana comience con esperanza.";
    if (text) text.textContent = "No necesitás tener todo resuelto para comenzar. Un paso a la vez.";
    if (welcome) welcome.textContent = "Antes de comenzar tu día, regalate unos segundos para respirar y recordar que todavía hay esperanza.";
  } else if (hour < 19) {
    if (title) title.textContent = "Todavía estás a tiempo.";
    if (text) text.textContent = "Aunque el día haya sido difícil, todavía podés detenerte y volver a empezar.";
    if (welcome) welcome.textContent = "Si hoy fue pesado, quedate unos minutos. Tal vez encuentres una palabra que necesitabas.";
  } else {
    if (title) title.textContent = "Terminá el día con paz.";
    if (text) text.textContent = "No te lleves todas las preocupaciones a la cama. Ponelas delante de Dios.";
    if (welcome) welcome.textContent = "Antes de cerrar el día, podés encontrar una oración, una palabra o simplemente un momento de paz.";
  }
}

function registerSW() {
  if ("serviceWorker" in navigator) {
    navigator.serviceWorker.register("/sw.js").catch(() => {});
  }
}

document.addEventListener("DOMContentLoaded", () => {
  initMenu();
  initSharing();
  initInstall();
  initNotifications();
  initSmartPopup();
  initDaily();
  registerSW();
});
})();
EOF

cat > site/js/verse.js <<'EOF'
"use strict";

const verses = [
{t:"Todo lo puedo en Cristo que me fortalece.",r:"Filipenses 4:13",c:"FORTALEZA",f:"No significa que todo será fácil. Significa que no tenés que atravesarlo sin esperanza."},
{t:"El Señor es mi pastor; nada me faltará.",r:"Salmos 23:1",c:"CONFIANZA",f:"Cuando no sepas qué viene después, podés comenzar por confiar en quien te acompaña."},
{t:"No temas, porque yo estoy contigo.",r:"Isaías 41:10",c:"ESPERANZA",f:"El miedo puede aparecer, pero no tiene por qué decidir tu próximo paso."},
{t:"Echa sobre el Señor tu carga, y él te sustentará.",r:"Salmos 55:22",c:"PAZ",f:"No todo peso tiene que ser llevado solo. Podés entregarlo en oración."},
{t:"Encomienda al Señor tus obras, y tus pensamientos serán afirmados.",r:"Proverbios 16:3",c:"DIRECCIÓN",f:"Poné tus planes delante de Dios y avanzá con humildad y sabiduría."},
{t:"Los que esperan en el Señor tendrán nuevas fuerzas.",r:"Isaías 40:31",c:"RENOVACIÓN",f:"Descansar también puede ser parte de seguir adelante."},
{t:"El amor nunca deja de ser.",r:"1 Corintios 13:8",c:"AMOR",f:"En un mundo que muchas veces divide, elegí construir desde el amor."},
{t:"La paz os dejo, mi paz os doy.",r:"Juan 14:27",c:"PAZ",f:"Buscá unos minutos de silencio. No necesitás resolver todo ahora."}
];

let index = Number(localStorage.getItem("gv-verse-index") || 0);

function renderVerse() {
  const v = verses[index % verses.length];
  document.getElementById("verse-category").textContent = v.c;
  document.getElementById("verse-text").textContent = "“" + v.t + "”";
  document.getElementById("verse-reference").textContent = v.r;
  document.getElementById("verse-reflection").textContent = v.f;
  localStorage.setItem("gv-verse-index", index % verses.length);
}

document.addEventListener("DOMContentLoaded", () => {
  renderVerse();

  document.getElementById("new-verse")?.addEventListener("click", () => {
    index++;
    renderVerse();
  });

  document.getElementById("save-verse")?.addEventListener("click", () => {
    const v = verses[index % verses.length];
    const saved = JSON.parse(localStorage.getItem("gv-saved-verses") || "[]");
    if (!saved.some(x => x.r === v.r)) saved.push(v);
    localStorage.setItem("gv-saved-verses", JSON.stringify(saved));
    document.getElementById("verse-status").textContent = "♡ Palabra guardada en este dispositivo.";
  });

  document.getElementById("share-verse")?.addEventListener("click", async () => {
    const v = verses[index % verses.length];
    const text = `${v.t} — ${v.r}\n\n${v.f}\n\nGraceVerse — Ministerio Internacional Jesús Rey`;
    try {
      if (navigator.share) await navigator.share({title:"Una palabra para vos",text,url:location.href});
      else {
        await navigator.clipboard.writeText(text);
        document.getElementById("verse-status").textContent = "✓ Palabra copiada para compartir.";
      }
    } catch (_) {}
  });
});
EOF

cat > site/js/prayer.js <<'EOF'
"use strict";

const prayers = {
general:["Señor Jesús, gracias por este momento. Danos sabiduría, paz y fuerza para continuar. Acompañá a cada persona que llegó hasta acá y permitile encontrar esperanza. Amén.","Dios, recibí nuestras preocupaciones y enseñanos a caminar con fe aun cuando no entendamos todo. Amén."],
familia:["Señor, cuidá a nuestras familias. Traé unidad donde exista distancia, consuelo donde exista dolor y amor donde haya conflicto. Amén."],
trabajo:["Dios, bendecí nuestro trabajo y nuestras decisiones. Abrí puertas correctas, danos sabiduría y ayudanos a actuar con honestidad. Amén."],
fortaleza:["Señor, cuando las fuerzas falten, sostenenos. Ayudanos a no rendirnos y a encontrar una nueva oportunidad para comenzar. Amén."],
decisiones:["Dios, iluminá nuestras decisiones. Alejanos de aquello que nos haga daño y ayudanos a reconocer el camino que trae paz y sabiduría. Amén."],
agradecimiento:["Gracias, Señor, por la vida, por las oportunidades y por las personas que nos acompañan. Enseñanos a reconocer también las pequeñas bendiciones. Amén."]
};

let current="general";

function showPrayer(category) {
  current=category;
  const list=prayers[category]||prayers.general;
  const prayer=list[Math.floor(Math.random()*list.length)];
  document.getElementById("prayer-category").textContent=category.toUpperCase();
  document.getElementById("prayer-text").textContent=prayer;
}

document.addEventListener("DOMContentLoaded",()=>{
  showPrayer("general");

  document.querySelectorAll("[data-prayer]").forEach(btn=>{
    btn.addEventListener("click",()=>showPrayer(btn.dataset.prayer));
  });

  document.getElementById("copy-prayer")?.addEventListener("click",async()=>{
    try{
      await navigator.clipboard.writeText(document.getElementById("prayer-text").textContent);
      document.getElementById("prayer-status").textContent="✓ Oración copiada.";
    }catch(_){}
  });

  document.getElementById("share-prayer")?.addEventListener("click",async()=>{
    const text=document.getElementById("prayer-text").textContent;
    try{
      if(navigator.share) await navigator.share({title:"Oración — GraceVerse",text,url:location.href});
      else{
        await navigator.clipboard.writeText(text);
        document.getElementById("prayer-status").textContent="✓ Oración copiada para compartir.";
      }
    }catch(_){}
  });
});
EOF

cat > site/js/quiz.js <<'EOF'
"use strict";

const questions=[
["¿Quién construyó el arca?","Noé","Moisés","Pedro",0],
["¿Cuál es el primer libro de la Biblia?","Éxodo","Génesis","Mateo",1],
["¿Quién derrotó a Goliat?","David","Salomón","Pablo",0],
["¿Cuántos discípulos tuvo Jesús?","10","12","14",1],
["¿Dónde nació Jesús?","Jerusalén","Nazaret","Belén",2],
["¿Quién recibió los Diez Mandamientos?","Moisés","David","Abraham",0],
["¿Cuál es el último libro de la Biblia?","Hechos","Apocalipsis","Romanos",1],
["¿Quién fue tragado por un gran pez?","Jonás","Pedro","Isaías",0],
["¿Quién negó a Jesús tres veces?","Juan","Pedro","Tomás",1],
["¿Qué convirtió Jesús en vino?","Agua","Aceite","Pan",0],
["¿Quién fue conocido por su gran sabiduría?","Salomón","Caín","Josué",0],
["¿Cuántos días llovió durante el diluvio?","7","40","100",1],
["¿Quién bautizó a Jesús?","Juan el Bautista","Pedro","Pablo",0],
["¿Qué mar abrió Dios para que Israel cruzara?","Mar Rojo","Mar Muerto","Mediterráneo",0],
["¿Quién fue el primer hombre?","Adán","Noé","Abel",0],
["¿Quién fue la primera mujer?","Sara","Eva","María",1],
["¿Qué apóstol era recaudador de impuestos?","Mateo","Santiago","Andrés",0],
["¿Quién fue hermano de Moisés?","Aarón","David","Josué",0],
["¿Qué hizo Jesús con cinco panes y dos peces?","Los escondió","Alimentó a una multitud","Los vendió",1],
["¿Quién escribió muchos de los Salmos?","David","Moisés","Lucas",0],
["¿Qué apóstol dudó de la resurrección hasta ver?","Tomás","Pedro","Juan",0],
["¿Quién fue arrojado al foso de los leones?","Daniel","Elías","Jeremías",0],
["¿Qué mujer fue madre de Jesús?","Marta","María","Rut",1],
["¿Qué ciudad cayó después de que Israel marchara alrededor de ella?","Jericó","Nínive","Roma",0],
["¿Quién recibió la visita del ángel Gabriel para anunciar el nacimiento de Jesús?","María","Rut","Ester",0],
["¿Qué profeta desafió a los profetas de Baal?","Elías","Jonás","Amós",0],
["¿Quién fue vendido por sus hermanos?","José","Benjamín","Isaac",0],
["¿Qué apóstol negó conocer a Jesús?","Pedro","Felipe","Mateo",0],
["¿Quién era conocido como el padre de muchas naciones?","Abraham","David","Salomón",0],
["¿Cuál es el mandamiento principal según Jesús?","Amar a Dios","Ser rico","No trabajar",0]
];

let order=[...questions].sort(()=>Math.random()-.5);
let current=0,score=0,streak=Number(localStorage.getItem("gv-streak")||0);

function render(){
  if(current>=order.length){
    document.getElementById("quiz-question").textContent="🏆 Juego terminado";
    document.getElementById("quiz-options").innerHTML="";
    document.getElementById("quiz-result").hidden=false;
    document.getElementById("quiz-result-title").textContent=`Resultado: ${score} puntos`;
    document.getElementById("quiz-result-text").textContent="Volvé mañana para intentar superar tu marca.";
    return;
  }

  const q=order[current];
  document.getElementById("quiz-progress").textContent=`Pregunta ${current+1}/${order.length}`;
  document.getElementById("quiz-score").textContent=`${score} puntos`;
  document.getElementById("quiz-streak").textContent=`🔥 Racha ${streak}`;
  document.getElementById("quiz-question").textContent=q[0];
  document.getElementById("quiz-result").hidden=true;

  const box=document.getElementById("quiz-options");
  box.innerHTML="";
  q.slice(1,4).forEach((answer,i)=>{
    const b=document.createElement("button");
    b.className="quiz-option";
    b.textContent=`${String.fromCharCode(65+i)}. ${answer}`;
    b.onclick=()=>answerQuestion(i);
    box.appendChild(b);
  });
}

function answerQuestion(choice){
  const q=order[current];
  document.querySelectorAll(".quiz-option").forEach(b=>b.disabled=true);

  if(choice===q[4]){
    score+=10;
    streak++;
    localStorage.setItem("gv-streak",streak);
    document.getElementById("quiz-result-title").textContent="✨ ¡Correcto!";
    document.getElementById("quiz-result-text").textContent="Sumaste 10 puntos.";
  }else{
    streak=0;
    localStorage.setItem("gv-streak","0");
    document.getElementById("quiz-result-title").textContent="Casi";
    document.getElementById("quiz-result-text").textContent=`La respuesta correcta era: ${q[q[4]+1]}.`;
  }

  document.getElementById("quiz-result").hidden=false;
  document.getElementById("quiz-score").textContent=`${score} puntos`;
}

document.addEventListener("DOMContentLoaded",()=>{
  render();
  document.getElementById("quiz-next")?.addEventListener("click",()=>{
    current++;
    render();
  });
});
EOF

cat > site/js/stories.js <<'EOF'
"use strict";

const KEY="gv-stories-v13";
const TTL=12*60*60*1000;

function getStories(){
  const now=Date.now();
  let stories=JSON.parse(localStorage.getItem(KEY)||"[]");
  stories=stories.filter(s=>now-s.created<TTL);
  localStorage.setItem(KEY,JSON.stringify(stories));
  return stories;
}

function renderStories(){
  const box=document.getElementById("stories-list");
  if(!box)return;

  const stories=getStories();
  box.innerHTML="";

  if(!stories.length){
    box.innerHTML=`<article class="empty-card"><span>🌱</span><h3>La primera historia puede ser la tuya.</h3><p>Compartí algo que pueda darle esperanza a otra persona.</p></article>`;
    return;
  }

  stories.forEach(s=>{
    const article=document.createElement("article");
    article.className="story-card";
    const hours=Math.max(0,Math.ceil((TTL-(Date.now()-s.created))/3600000));
    article.innerHTML=`<strong>❤️ ${escapeHTML(s.name)}</strong><small>Disponible aproximadamente ${hours} h más</small><p>${escapeHTML(s.text)}</p>`;
    box.appendChild(article);
  });
}

function escapeHTML(text){
  return String(text).replace(/[&<>"']/g,c=>({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#039;"}[c]));
}

document.addEventListener("DOMContentLoaded",()=>{
  renderStories();

  document.getElementById("story-form")?.addEventListener("submit",e=>{
    e.preventDefault();

    const name=document.getElementById("story-name").value.trim();
    const text=document.getElementById("story-text").value.trim();

    const stories=getStories();
    stories.unshift({
      name,
      text,
      created:Date.now()
    });

    localStorage.setItem(KEY,JSON.stringify(stories.slice(0,30)));
    e.target.reset();
    document.getElementById("story-status").textContent="❤️ Tu historia fue publicada durante 12 horas en este dispositivo.";
    renderStories();
  });
});
EOF

cat > site/js/connect.js <<'EOF'
"use strict";

document.addEventListener("DOMContentLoaded",()=>{
  const form=document.getElementById("connect-form");
  const title=document.getElementById("connect-title");

  function open(type){
    form.hidden=false;
    title.textContent=type==="prayer" ? "🙏 Pedido de oración" : "🤝 Ofrecer acompañamiento";
    form.scrollIntoView({behavior:"smooth",block:"center"});
  }

  document.getElementById("need-prayer")?.addEventListener("click",()=>open("prayer"));
  document.getElementById("offer-help")?.addEventListener("click",()=>open("help"));

  document.getElementById("connect-form-element")?.addEventListener("submit",e=>{
    e.preventDefault();
    document.getElementById("connect-status").textContent=
      "✓ Recibimos tu mensaje en esta sesión. La versión comunitaria futura podrá conectar estas solicitudes con usuarios reales.";
    e.target.reset();
  });
});
EOF

cat > site/sw.js <<'EOF'
const CACHE="graceverse-v1-3";

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
"/js/verse.js",
"/js/prayer.js",
"/js/quiz.js",
"/js/stories.js",
"/js/connect.js"
];

self.addEventListener("install",event=>{
  event.waitUntil(caches.open(CACHE).then(cache=>cache.addAll(ASSETS)));
  self.skipWaiting();
});

self.addEventListener("activate",event=>{
  event.waitUntil(
    caches.keys().then(keys=>
      Promise.all(keys.filter(k=>k!==CACHE).map(k=>caches.delete(k)))
    )
  );
  self.clients.claim();
});

self.addEventListener("fetch",event=>{
  if(event.request.method!=="GET")return;

  event.respondWith(
    fetch(event.request)
      .then(response=>{
        const copy=response.clone();
        caches.open(CACHE).then(cache=>cache.put(event.request,copy));
        return response;
      })
      .catch(()=>caches.match(event.request))
  );
});
EOF

cat > site/manifest.json <<'EOF'
{
  "name":"GraceVerse — Ministerio Internacional Jesús Rey",
  "short_name":"GraceVerse",
  "description":"Una palabra. Una oración. Una esperanza.",
  "start_url":"/",
  "scope":"/",
  "display":"standalone",
  "background_color":"#0b1220",
  "theme_color":"#111827",
  "lang":"es",
  "orientation":"portrait"
}
EOF

cat > site/css/styles.css <<'EOF'
:root{
--bg:#070b14;
--surface:#101827;
--surface2:#162235;
--text:#f4f7fb;
--muted:#aeb9ca;
--gold:#e7c875;
--gold2:#f5df98;
--border:rgba(255,255,255,.10);
--shadow:0 20px 60px rgba(0,0,0,.35);
}

*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{
margin:0;
font-family:system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;
background:
radial-gradient(circle at 20% 0%,rgba(79,110,160,.18),transparent 32rem),
radial-gradient(circle at 90% 20%,rgba(214,174,76,.10),transparent 28rem),
var(--bg);
color:var(--text);
line-height:1.65;
}

a{color:inherit;text-decoration:none}
button{font:inherit}
.header{
position:sticky;
top:0;
z-index:100;
display:flex;
align-items:center;
justify-content:space-between;
gap:20px;
padding:14px 5%;
background:rgba(7,11,20,.88);
backdrop-filter:blur(18px);
border-bottom:1px solid var(--border);
}
.logo{display:flex;align-items:center;gap:10px}
.logo>span{font-size:28px;color:var(--gold)}
.logo strong{display:block;letter-spacing:2px}
.logo small{display:block;color:var(--muted);font-size:10px}
#main-nav{display:flex;gap:8px;align-items:center}
#main-nav a{padding:8px 10px;border-radius:10px;color:var(--muted);font-size:14px}
#main-nav a:hover{background:var(--surface);color:var(--text)}
.menu-button{display:none;background:none;border:0;color:white;font-size:25px}

.hero{
min-height:680px;
display:flex;
align-items:center;
position:relative;
overflow:hidden;
padding:80px 6%;
background:
linear-gradient(120deg,rgba(7,11,20,.92),rgba(10,22,39,.72)),
radial-gradient(circle at 70% 35%,rgba(230,200,117,.20),transparent 25rem);
}
.hero-content{max-width:820px;position:relative;z-index:2}
.hero h1{font-size:clamp(48px,8vw,94px);line-height:.98;margin:20px 0;letter-spacing:-4px}
.hero p{font-size:clamp(18px,2.4vw,25px);color:#d2dae7;max-width:680px}
.hero-mini{display:flex;gap:10px;flex-wrap:wrap;margin-top:28px}
.hero-mini span,.country-pills span{
border:1px solid var(--border);
background:rgba(255,255,255,.05);
padding:7px 12px;border-radius:99px;color:#d9e1ed
}

.container{width:min(1120px,90%);margin:auto}
.page{padding:70px 0}
.page-header{text-align:center;max-width:850px;margin:0 auto 45px}
.page-header h1{font-size:clamp(36px,6vw,62px);line-height:1.05}
.eyebrow{color:var(--gold);font-weight:800;letter-spacing:2px;font-size:12px}
.actions{display:flex;gap:12px;flex-wrap:wrap;margin-top:25px}
.button{
display:inline-flex;
justify-content:center;
align-items:center;
border:1px solid var(--border);
padding:13px 20px;
border-radius:13px;
font-weight:800;
cursor:pointer;
transition:.2s;
}
.button:hover{transform:translateY(-2px)}
.primary{background:linear-gradient(135deg,var(--gold),var(--gold2));color:#16120a;border:0}
.secondary{background:rgba(255,255,255,.05)}
.hero .button{font-size:16px}

.daily-highlight,.support-message,.international,.inspiration{
margin-top:50px;
padding:45px;
border:1px solid var(--border);
border-radius:28px;
background:linear-gradient(135deg,rgba(255,255,255,.06),rgba(255,255,255,.025));
box-shadow:var(--shadow);
}
.daily-highlight{display:flex;justify-content:space-between;gap:30px;align-items:center}
.section{padding-top:80px}
.section-title{margin-bottom:30px}
.section-title h2{font-size:38px}

.cards{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:18px;
}
.feature-card,.connect-card,.support-card,.quote-card,.story-card,.empty-card{
display:block;
padding:28px;
border:1px solid var(--border);
border-radius:22px;
background:rgba(255,255,255,.035);
transition:.25s;
}
.feature-card:hover,.connect-card:hover,.support-card:hover{transform:translateY(-5px);border-color:rgba(231,200,117,.45)}
.feature-card>span,.connect-card>span,.support-card>span{font-size:34px}
.feature-card h3{font-size:22px}
.feature-card p,.support-card p,.connect-card p{color:var(--muted)}

.international{background:linear-gradient(135deg,rgba(33,61,100,.35),rgba(15,23,42,.5))}
.country-pills{display:flex;gap:9px;flex-wrap:wrap;margin-top:20px}

.quote-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:15px;margin-top:25px}
.quote-card p{font-size:17px}

.verse-card,.prayer-card,.quiz-card,.story-form-card,.connect-form{
max-width:850px;
margin:0 auto;
padding:40px;
background:linear-gradient(145deg,#111c2e,#0d1522);
border:1px solid var(--border);
border-radius:28px;
box-shadow:var(--shadow);
}
.verse-card blockquote{font-size:clamp(28px,5vw,48px);line-height:1.2;margin:25px 0}
.verse-card>p{color:var(--muted);font-size:18px}

.ad-box{
margin:45px auto;
padding:22px;
border:1px dashed rgba(231,200,117,.30);
border-radius:18px;
text-align:center;
background:rgba(255,255,255,.025);
}
.ad-box p{color:var(--muted);font-size:14px}
.smartlink-slot{
min-height:90px;
display:flex;
align-items:center;
justify-content:center;
border:1px dashed rgba(255,255,255,.15);
border-radius:12px;
color:#758197;
font-size:12px;
letter-spacing:2px;
}

.prayer-categories{
display:flex;
justify-content:center;
gap:10px;
flex-wrap:wrap;
margin-bottom:25px;
}
.prayer-categories button,.quiz-option{
border:1px solid var(--border);
background:rgba(255,255,255,.05);
color:white;
padding:12px 16px;
border-radius:12px;
cursor:pointer;
}
.prayer-categories button:hover,.quiz-option:hover{border-color:var(--gold)}

.quiz-top,.game-stats{
display:flex;
justify-content:space-between;
gap:15px;
margin-bottom:25px;
color:var(--muted);
}
.quiz-options{display:grid;gap:12px}
.quiz-option{text-align:left;font-size:17px}
.quiz-option:disabled{opacity:.65}
.quiz-result{margin-top:25px;padding:20px;border-radius:18px;background:rgba(231,200,117,.08)}

.story-form-card label,.connect-form label{
display:block;margin-bottom:18px;font-weight:700
}
input,textarea{
width:100%;
margin-top:7px;
padding:13px;
border-radius:12px;
border:1px solid var(--border);
background:#0a111d;
color:white;
outline:none;
}
textarea{resize:vertical}
.checkbox{display:flex!important;gap:10px;align-items:flex-start}
.checkbox input{width:auto;margin-top:6px}
.stories-list{display:grid;gap:15px}
.story-card small{display:block;color:#7e8aa0;margin:4px 0 10px}
.story-card p{white-space:pre-wrap}
.empty-card{text-align:center}

.connect-grid,.support-grid{
display:grid;
grid-template-columns:repeat(2,1fr);
gap:20px;
}
.notice{
margin:35px auto;
max-width:850px;
padding:22px;
border-left:4px solid var(--gold);
background:rgba(231,200,117,.06);
color:var(--muted);
}

.smart-popup,.notification-popup{
position:fixed;
right:20px;
bottom:20px;
z-index:300;
width:min(390px,calc(100% - 40px));
padding:25px;
background:#111c2e;
border:1px solid rgba(231,200,117,.35);
border-radius:22px;
box-shadow:0 25px 80px rgba(0,0,0,.6);
}
.smart-popup>span{font-size:30px}
.popup-close{
position:absolute;right:12px;top:8px;background:none;border:0;color:white;font-size:25px;cursor:pointer
}
.notification-popup{bottom:20px}
.install-button{
position:fixed;
left:20px;
bottom:20px;
z-index:250;
padding:12px 17px;
border:0;
border-radius:99px;
background:var(--gold);
color:#171208;
font-weight:800;
box-shadow:0 12px 35px rgba(0,0,0,.4);
}

.status{color:var(--gold)}
footer{
margin-top:80px;
padding:50px 5%;
text-align:center;
border-top:1px solid var(--border);
color:var(--muted);
}
footer strong{color:white}
footer a{margin:5px 8px;color:var(--muted)}

@media(max-width:850px){
#main-nav{
display:none;
position:absolute;
top:70px;
left:0;
right:0;
padding:15px;
background:#0b1220;
border-bottom:1px solid var(--border);
flex-direction:column;
}
#main-nav.open{display:flex}
#main-nav a{width:100%;padding:12px}
.menu-button{display:block}
.cards,.quote-grid{grid-template-columns:1fr}
.connect-grid,.support-grid{grid-template-columns:1fr}
.hero{min-height:620px;padding:70px 6%}
.hero h1{letter-spacing:-2px}
.daily-highlight{flex-direction:column;align-items:flex-start}
.verse-card,.prayer-card,.quiz-card,.story-form-card,.connect-form{padding:25px}
.international,.inspiration,.support-message{padding:28px}
}

@media(prefers-reduced-motion:reduce){
*{scroll-behavior:auto!important;transition:none!important}
}
EOF

cat > site/robots.txt <<'EOF'
User-agent: *
Allow: /

Sitemap: https://graceverse.netlify.app/sitemap.xml
EOF

cat > site/sitemap.xml <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
<url><loc>https://graceverse.netlify.app/</loc></url>
<url><loc>https://graceverse.netlify.app/palabra.html</loc></url>
<url><loc>https://graceverse.netlify.app/oracion.html</loc></url>
<url><loc>https://graceverse.netlify.app/juegos.html</loc></url>
<url><loc>https://graceverse.netlify.app/historias.html</loc></url>
<url><loc>https://graceverse.netlify.app/connect.html</loc></url>
<url><loc>https://graceverse.netlify.app/apoyar.html</loc></url>
</urlset>
EOF

cat > netlify.toml <<'EOF'
[build]
  publish = "site"

[[headers]]
  for = "/*"
  [headers.values]
    X-Content-Type-Options = "nosniff"
    X-Frame-Options = "SAMEORIGIN"
    Referrer-Policy = "strict-origin-when-cross-origin"
    Permissions-Policy = "camera=(), microphone=(), geolocation=()"

[[headers]]
  for = "/sw.js"
  [headers.values]
    Cache-Control = "no-cache, no-store, must-revalidate"
EOF

echo
echo "===== COMPROBANDO JAVASCRIPT ====="

for f in site/js/*.js site/sw.js; do
  echo "CHECK $f"
  node --check "$f"
done

echo
echo "===== ARCHIVOS ====="
find site -type f | sort

echo
echo "=============================================="
echo "      GRACEVERSE V1.3 INSTALADO"
echo "=============================================="
echo
echo "Ahora ejecutá:"
echo
echo "git add ."
echo 'git commit -m "GraceVerse V1.3 - experiencia internacional y monetizacion"'
echo "git push origin main"
echo
EOF

chmod +x install_v13.sh
./install_v13.sh
