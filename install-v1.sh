#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "=================================================="
echo "      GRACEVERSE V1 — INSTALADOR LIMPIO"
echo "      Ministerio Internacional Jesús Rey"
echo "=================================================="

cd "$(dirname "$0")"

echo
echo "1/9 — Eliminando proyecto anterior..."
rm -rf site backups v8-backup server audit-v7
rm -f package.json package-lock.json README.md .gitignore

mkdir -p site/css site/js site/assets

echo "2/9 — Creando configuración Netlify..."

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

echo "3/9 — Creando índice..."

cat > site/index.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#111827">
<meta name="description" content="GraceVerse — Ministerio Internacional Jesús Rey. Una palabra, una oración, una esperanza.">
<link rel="manifest" href="/manifest.json">
<link rel="stylesheet" href="/css/styles.css">
<title>GraceVerse — Ministerio Internacional Jesús Rey</title>
</head>

<body>

<header class="header">
  <a class="logo" href="/">
    <span>✝</span>
    <div>
      <strong>GRACEVERSE</strong>
      <small>Ministerio Internacional Jesús Rey</small>
    </div>
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

<section class="hero">
  <div class="hero-content">
    <span class="eyebrow">MINISTERIO INTERNACIONAL JESÚS REY</span>
    <h1>Una palabra.<br>Una oración.<br>Una esperanza.</h1>
    <p>
      Un espacio digital para acercarnos a Dios, aprender,
      orar, compartir esperanza y acompañarnos unos a otros.
    </p>

    <div class="actions">
      <a class="button primary" href="/palabra.html">📖 Recibir una palabra</a>
      <a class="button secondary" href="/oracion.html">🙏 Orar ahora</a>
    </div>
  </div>
</section>

<section class="container intro">
  <span class="eyebrow">GRACEVERSE</span>
  <h2>Un lugar para acercarte a Dios.</h2>
  <p>
    GraceVerse nace como plataforma digital del Ministerio Internacional
    Jesús Rey para compartir Palabra, oración, conocimiento y esperanza.
  </p>
</section>

<section class="container cards">

  <a class="feature-card" href="/palabra.html">
    <span>📖</span>
    <h3>Palabra</h3>
    <p>Una palabra para detenerte, pensar y continuar tu día con fe.</p>
  </a>

  <a class="feature-card" href="/oracion.html">
    <span>🙏</span>
    <h3>Oración</h3>
    <p>Un momento para hablar con Dios y poner delante de Él lo que llevás en el corazón.</p>
  </a>

  <a class="feature-card" href="/juegos.html">
    <span>🎮</span>
    <h3>Juegos</h3>
    <p>Aprendé sobre la Biblia jugando con preguntas y desafíos.</p>
  </a>

  <a class="feature-card" href="/historias.html">
    <span>❤️</span>
    <h3>Historias</h3>
    <p>Compartí una experiencia, testimonio o palabra de esperanza.</p>
  </a>

  <a class="feature-card" href="/connect.html">
    <span>🤝</span>
    <h3>Connect</h3>
    <p>Una persona para otra persona. Un espacio para acompañarnos.</p>
  </a>

  <a class="feature-card" href="/apoyar.html">
    <span>🤍</span>
    <h3>Apoyar</h3>
    <p>Ayudá a que este proyecto pueda continuar y llegar a más personas.</p>
  </a>

</section>

<section class="container support-message">
  <span class="eyebrow">UNA OFRENDA TAMBIÉN ES SERVICIO</span>
  <h2>¿Por qué necesitamos apoyo?</h2>
  <p>
    Mantener una plataforma requiere servidores, dominio, desarrollo,
    seguridad y tiempo. La publicidad y las donaciones permiten sostener
    GraceVerse y continuar creando contenido gratuito.
  </p>
  <a class="button primary" href="/apoyar.html">Conocer cómo apoyar</a>
</section>

</main>

<footer>
  <strong>✝ GRACEVERSE</strong>
  <p>Ministerio Internacional Jesús Rey</p>
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

echo "4/9 — Creando Palabra..."

cat > site/palabra.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#111827">
<meta name="description" content="Palabra del día — GraceVerse.">
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
<span class="eyebrow">PALABRA DEL DÍA</span>
<h1>Una palabra para tu día.</h1>
<p>Leé, reflexioná y compartila con alguien que pueda necesitarla.</p>
</section>

<article class="verse-card">
<span class="eyebrow">PALABRA</span>
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
<strong>PUBLICIDAD</strong>
<p>
La publicidad ayuda a cubrir los costos de GraceVerse y permite mantener
gratuito el acceso a la Palabra y a las herramientas del ministerio.
</p>
<div class="ad-placeholder">ESPACIO SMARTLINK</div>
</section>

</main>

<footer>
<strong>✝ GRACEVERSE</strong>
<p>Ministerio Internacional Jesús Rey</p>
<a href="/apoyar.html">🤍 Apoyar el ministerio</a>
</footer>

<script src="/js/app.js"></script>
<script src="/js/verse.js"></script>
</body>
</html>
EOF

echo "5/9 — Creando Oración..."

cat > site/oracion.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#111827">
<meta name="description" content="Momento de oración — GraceVerse.">
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
<span class="eyebrow">UN MOMENTO CON DIOS</span>
<h1>Oremos juntos.</h1>
<p>Detenete un momento. Respir&aacute;. Y pon&eacute; delante de Dios aquello que llev&aacute;s en el coraz&oacute;n.</p>
</section>

<article class="prayer-card">
<p id="prayer-text">
Señor Jesús, gracias por este nuevo momento.
Danos sabiduría para tomar buenas decisiones,
fuerza para continuar cuando sea difícil
y un corazón dispuesto a amar y ayudar.
Acompañá a cada persona que llegó hasta acá
y permitile encontrar paz, esperanza y dirección.
Amén.
</p>

<div class="actions">
<button class="button primary" id="share-prayer">📲 Compartir oración</button>
<button class="button secondary" id="copy-prayer">Copiar oración</button>
</div>
</article>

<section class="ad-box">
<strong>PUBLICIDAD</strong>
<p>
Los espacios publicitarios ayudan a financiar servidores, mantenimiento
y desarrollo para que podamos seguir ofreciendo este contenido gratuitamente.
</p>
<div class="ad-placeholder">ESPACIO SMARTLINK</div>
</section>

</main>

<footer>
<strong>✝ GRACEVERSE</strong>
<p>Ministerio Internacional Jesús Rey</p>
<a href="/apoyar.html">🤍 Apoyar</a>
</footer>

<script src="/js/app.js"></script>
<script src="/js/prayer.js"></script>
</body>
</html>
EOF

echo "6/9 — Creando Juegos..."

cat > site/juegos.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#111827">
<meta name="description" content="Juegos bíblicos de GraceVerse.">
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
<span class="eyebrow">GRACEVERSE JUEGOS</span>
<h1>¿Cuánto conocés de la Biblia?</h1>
<p>Aprendé jugando. Elegí A, B o C.</p>
</section>

<article class="quiz-card">

<div class="quiz-top">
<span id="quiz-progress">Pregunta 1</span>
<strong id="quiz-score">0 puntos</strong>
</div>

<h2 id="quiz-question"></h2>

<div id="quiz-options" class="quiz-options"></div>

<div id="quiz-result" class="quiz-result" hidden>
<h3 id="quiz-result-title"></h3>
<p id="quiz-result-text"></p>
<button class="button primary" id="quiz-next">Siguiente pregunta</button>
</div>

</article>

<section class="ad-box">
<strong>PUBLICIDAD</strong>
<p>
Si ves publicidad en GraceVerse, una parte de esos ingresos ayuda a mantener
el proyecto y sus contenidos gratuitos.
</p>
<div class="ad-placeholder">ESPACIO SMARTLINK</div>
</section>

</main>

<footer>
<strong>✝ GRACEVERSE</strong>
<p>Ministerio Internacional Jesús Rey</p>
<a href="/apoyar.html">🤍 Apoyar</a>
</footer>

<script src="/js/app.js"></script>
<script src="/js/quiz.js"></script>
</body>
</html>
EOF

echo "7/9 — Creando Historias..."

cat > site/historias.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#111827">
<meta name="description" content="Historias y testimonios — GraceVerse.">
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
<span class="eyebrow">GRACEVERSE HISTORIAS</span>
<h1>Compartí lo que Dios hizo en tu vida.</h1>
<p>
Podés dejar una historia, reflexión o palabra de esperanza.
Las publicaciones de esta V1 se mantienen durante 12 horas.
</p>
</section>

<section class="story-form-card">
<h2>Compartir una historia</h2>

<form id="story-form">

<label>
Nombre
<input id="story-name" maxlength="60" required placeholder="Tu nombre o cómo querés aparecer">
</label>

<label>
Tu historia
<textarea id="story-text" maxlength="1000" rows="7" required placeholder="Contanos algo que pueda darle esperanza a otra persona..."></textarea>
</label>

<label class="checkbox">
<input id="story-agree" type="checkbox" required>
<span>Confirmo que tengo derecho a publicar este contenido y acepto que aparezca públicamente durante 12 horas.</span>
</label>

<button class="button primary" type="submit">❤️ Publicar por 12 horas</button>

</form>

<p id="story-status" class="status"></p>
</section>

<section>
<div class="section-title">
<span class="eyebrow">HISTORIAS RECIENTES</span>
<h2>Personas compartiendo esperanza.</h2>
</div>

<div id="stories-list" class="stories-list"></div>
</section>

<section class="ad-box">
<strong>PUBLICIDAD</strong>
<p>
La publicidad nos ayuda a mantener esta plataforma disponible.
Gracias a quienes permiten que podamos continuar sirviendo.
</p>
<div class="ad-placeholder">ESPACIO SMARTLINK</div>
</section>

</main>

<footer>
<strong>✝ GRACEVERSE</strong>
<p>Ministerio Internacional Jesús Rey</p>
<a href="/apoyar.html">🤍 Apoyar el ministerio</a>
</footer>

<script src="/js/app.js"></script>
<script src="/js/stories.js"></script>
</body>
</html>
EOF

echo "8/9 — Creando Connect y Apoyar..."

cat > site/connect.html <<'EOF'
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#111827">
<meta name="description" content="GraceVerse Connect — Ministerio Internacional Jesús Rey.">
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
<span class="eyebrow">GRACEVERSE CONNECT</span>
<h1>Una persona para otra persona.</h1>
<p>
Un espacio para pedir oración, ofrecer acompañamiento y encontrar
personas dispuestas a ayudar.
</p>
</section>

<section class="connect-grid">

<article class="connect-card">
<span>🙏</span>
<h2>Necesito oración</h2>
<p>Podés dejar tu pedido para que otras personas puedan orar por vos.</p>
<button class="button primary" id="need-prayer">Quiero pedir oración</button>
</article>

<article class="connect-card">
<span>🤝</span>
<h2>Quiero ayudar</h2>
<p>Si tenés disposición para escuchar y acompañar, podés ofrecerte.</p>
<button class="button secondary" id="offer-help">Quiero ayudar</button>
</article>

</section>

<div id="connect-form" class="connect-form" hidden>
<h2 id="connect-title"></h2>

<form id="connect-form-element">
<label>
Nombre
<input id="connect-name" maxlength="60" required>
</label>

<label>
Mensaje
<textarea id="connect-message" maxlength="500" rows="5" required></textarea>
</label>

<button class="button primary">Enviar</button>
</form>

<p id="connect-status" class="status"></p>
</div>

<section class="notice">
<strong>Importante</strong>
<p>
Connect no reemplaza atención médica, psicológica, legal ni servicios
de emergencia. Nunca compartas contraseñas, datos bancarios ni información
privada con desconocidos.
</p>
</section>

</main>

<footer>
<strong>✝ GRACEVERSE</strong>
<p>Ministerio Internacional Jesús Rey</p>
<a href="/apoyar.html">🤍 Apoyar</a>
</footer>

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
<meta name="theme-color" content="#111827">
<meta name="description" content="Apoyá GraceVerse y al Ministerio Internacional Jesús Rey.">
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
<span class="eyebrow">APOYAR EL MINISTERIO</span>
<h1>Si esto te ayuda, podés ayudarnos a continuar.</h1>
<p>
GraceVerse busca mantener sus contenidos principales disponibles para todos.
Para hacerlo necesitamos cubrir infraestructura, dominio, herramientas,
seguridad, desarrollo y producción de contenido.
</p>
</section>

<section class="support-grid">

<article class="support-card">
<span>📢</span>
<h2>Publicidad</h2>
<p>
Los espacios publicitarios y Smartlink pueden generar ingresos que ayudan
a mantener la plataforma. Por eso, cuando veas publicidad dentro de
GraceVerse, entendé que también forma parte de la manera en que sostenemos
este servicio.
</p>
</article>

<article class="support-card">
<span>🤍</span>
<h2>Ofrendas</h2>
<p>
Si sentís en tu corazón colaborar, podés realizar una ofrenda voluntaria.
No es obligatorio pagar para acceder a la Palabra, las oraciones o los
juegos.
</p>

<a class="button primary"
href="https://paypal.me/OMGJESUSREY"
target="_blank"
rel="noopener noreferrer">
🅿️ Ofrendar por PayPal
</a>
</article>

</section>

<section class="support-message">
<h2>Gracias por servir con nosotros.</h2>
<p>
Cada aporte, grande o pequeño, ayuda a que podamos seguir desarrollando
este espacio. También podés colaborar compartiendo GraceVerse con alguien
que necesite una palabra de esperanza.
</p>

<button class="button secondary" id="share-graceverse">
📲 Compartir GraceVerse
</button>
</section>

<section class="ad-box">
<strong>PUBLICIDAD</strong>
<p>
Este espacio está destinado a publicidad/Smartlink. Los ingresos generados
por publicidad ayudan a financiar el funcionamiento de GraceVerse.
</p>
<div class="ad-placeholder">ESPACIO SMARTLINK</div>
</section>

</main>

<footer>
<strong>✝ GRACEVERSE</strong>
<p>Ministerio Internacional Jesús Rey</p>
<a href="/">Volver al inicio</a>
</footer>

<script src="/js/app.js"></script>
</body>
</html>
EOF

echo "9/9 — Creando PWA, estilos y JavaScript..."

cat > site/manifest.json <<'EOF'
{
  "name": "GraceVerse — Ministerio Internacional Jesús Rey",
  "short_name": "GraceVerse",
  "description": "Una palabra. Una oración. Una esperanza.",
  "start_url": "/",
  "display": "standalone",
  "background_color": "#0b1220",
  "theme_color": "#111827",
  "lang": "es",
  "icons": []
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

cat > site/css/styles.css <<'EOF'
:root{
  --bg:#0b1220;
  --bg2:#111827;
  --card:#151f31;
  --card2:#1b273c;
  --text:#f5f7fb;
  --muted:#aab5c8;
  --gold:#e5b95c;
  --gold2:#f3d38a;
  --border:rgba(255,255,255,.09);
  --max:1120px;
}

*{box-sizing:border-box}

html{scroll-behavior:smooth}

body{
  margin:0;
  background:
    radial-gradient(circle at top right,rgba(229,185,92,.09),transparent 30%),
    var(--bg);
  color:var(--text);
  font-family:system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;
  line-height:1.6;
}

a{color:inherit;text-decoration:none}

button,input,textarea{font:inherit}

.header{
  min-height:76px;
  padding:14px 5%;
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:25px;
  border-bottom:1px solid var(--border);
  background:rgba(11,18,32,.94);
  position:sticky;
  top:0;
  z-index:20;
  backdrop-filter:blur(12px);
}

.logo{
  display:flex;
  align-items:center;
  gap:11px;
}

.logo>span{
  color:var(--gold);
  font-size:30px;
}

.logo strong{
  display:block;
  letter-spacing:2px;
}

.logo small{
  display:block;
  color:var(--muted);
  font-size:10px;
}

nav{
  display:flex;
  gap:17px;
  align-items:center;
}

nav a{
  color:var(--muted);
  font-size:14px;
}

nav a:hover{color:var(--gold)}

.menu-button{
  display:none;
  background:none;
  color:white;
  border:1px solid var(--border);
  border-radius:8px;
  padding:8px 12px;
}

.hero{
  min-height:610px;
  display:flex;
  align-items:center;
  padding:80px 7%;
  background:
    linear-gradient(90deg,rgba(8,14,26,.98),rgba(8,14,26,.82),rgba(8,14,26,.48)),
    radial-gradient(circle at 80% 30%,rgba(229,185,92,.2),transparent 30%);
}

.hero-content{max-width:760px}

.eyebrow{
  color:var(--gold);
  font-size:12px;
  font-weight:800;
  letter-spacing:2px;
}

h1{
  font-size:clamp(42px,7vw,78px);
  line-height:1.02;
  margin:18px 0;
}

h2{
  font-size:clamp(28px,4vw,44px);
  line-height:1.15;
}

.hero p{
  color:var(--muted);
  font-size:19px;
  max-width:650px;
}

.container{
  width:min(var(--max),90%);
  margin:auto;
}

.intro{
  padding:90px 0 50px;
  text-align:center;
}

.intro p{
  color:var(--muted);
  max-width:700px;
  margin:auto;
}

.cards{
  display:grid;
  grid-template-columns:repeat(3,1fr);
  gap:18px;
  padding:30px 0 90px;
}

.feature-card,
.connect-card,
.support-card{
  display:block;
  background:linear-gradient(145deg,var(--card),var(--card2));
  border:1px solid var(--border);
  border-radius:18px;
  padding:28px;
  transition:.2s;
}

.feature-card:hover{
  transform:translateY(-4px);
  border-color:rgba(229,185,92,.45);
}

.feature-card span,
.connect-card span,
.support-card span{
  font-size:34px;
}

.feature-card p,
.connect-card p,
.support-card p{
  color:var(--muted);
}

.support-message{
  margin:20px auto 100px;
  padding:50px;
  text-align:center;
  border:1px solid rgba(229,185,92,.2);
  background:rgba(229,185,92,.05);
  border-radius:20px;
}

.support-message p{
  color:var(--muted);
  max-width:750px;
  margin:20px auto 30px;
}

.button{
  border:0;
  border-radius:10px;
  padding:13px 19px;
  cursor:pointer;
  display:inline-flex;
  align-items:center;
  justify-content:center;
  gap:8px;
  font-weight:750;
  transition:.2s;
}

.button:hover{transform:translateY(-1px)}

.primary{
  background:var(--gold);
  color:#15100a;
}

.secondary{
  background:transparent;
  color:var(--text);
  border:1px solid var(--border);
}

.actions{
  display:flex;
  flex-wrap:wrap;
  gap:12px;
  margin-top:28px;
}

.page{
  padding:80px 0 100px;
}

.page-header{
  max-width:780px;
  margin-bottom:45px;
}

.page-header h1{
  font-size:clamp(38px,6vw,65px);
}

.page-header p{
  color:var(--muted);
  font-size:18px;
}

.verse-card,
.prayer-card,
.quiz-card,
.story-form-card,
.connect-form{
  background:linear-gradient(145deg,var(--card),var(--card2));
  border:1px solid var(--border);
  border-radius:22px;
  padding:clamp(25px,5vw,55px);
  margin-bottom:30px;
}

.verse-card blockquote{
  font-size:clamp(25px,4vw,43px);
  line-height:1.25;
  margin:25px 0;
}

.verse-card>strong{
  color:var(--gold2);
}

.verse-card p,
.prayer-card p{
  color:var(--muted);
  white-space:pre-line;
}

.status{
  color:var(--gold2);
  min-height:24px;
}

.ad-box{
  border:1px dashed rgba(255,255,255,.15);
  border-radius:15px;
  padding:25px;
  margin:45px 0;
  text-align:center;
  background:rgba(255,255,255,.025);
}

.ad-box p{
  color:var(--muted);
  max-width:700px;
  margin:10px auto 20px;
}

.ad-placeholder{
  min-height:90px;
  display:flex;
  align-items:center;
  justify-content:center;
  color:#69758a;
  font-size:11px;
  letter-spacing:2px;
  border:1px dashed rgba(255,255,255,.08);
}

.quiz-top{
  display:flex;
  justify-content:space-between;
  color:var(--gold2);
}

.quiz-card h2{
  font-size:clamp(25px,4vw,38px);
  margin-top:35px;
}

.quiz-options{
  display:grid;
  gap:12px;
  margin-top:25px;
}

.quiz-option{
  text-align:left;
  width:100%;
  padding:18px;
  border-radius:12px;
  border:1px solid var(--border);
  background:rgba(255,255,255,.03);
  color:white;
  cursor:pointer;
}

.quiz-option:hover{
  border-color:var(--gold);
}

.quiz-option:disabled{
  cursor:default;
  opacity:.8;
}

.quiz-result{
  margin-top:25px;
  padding:20px;
  border-radius:12px;
  background:rgba(229,185,92,.08);
}

.story-form-card label,
.connect-form label{
  display:block;
  margin:18px 0;
  color:var(--muted);
}

input,
textarea{
  display:block;
  width:100%;
  margin-top:7px;
  background:#0b1322;
  color:white;
  border:1px solid var(--border);
  border-radius:9px;
  padding:13px;
  outline:none;
}

input:focus,
textarea:focus{
  border-color:var(--gold);
}

.checkbox{
  display:flex!important;
  gap:10px;
  align-items:flex-start;
}

.checkbox input{
  width:auto;
  margin:5px 0;
}

.stories-list{
  display:grid;
  gap:15px;
}

.story{
  padding:22px;
  background:var(--card);
  border:1px solid var(--border);
  border-radius:15px;
}

.story header{
  position:static;
  padding:0;
  min-height:0;
  border:0;
  background:none;
}

.story header strong{color:var(--gold2)}

.story time{
  color:var(--muted);
  font-size:12px;
}

.story p{
  white-space:pre-wrap;
}

.empty{
  padding:40px;
  text-align:center;
  color:var(--muted);
  border:1px dashed var(--border);
  border-radius:15px;
}

.connect-grid,
.support-grid{
  display:grid;
  grid-template-columns:repeat(2,1fr);
  gap:20px;
}

.notice{
  padding:20px;
  border-left:3px solid var(--gold);
  background:rgba(229,185,92,.05);
  color:var(--muted);
  margin-top:40px;
}

footer{
  border-top:1px solid var(--border);
  padding:45px 5%;
  text-align:center;
  color:var(--muted);
}

footer strong{
  color:var(--text);
  letter-spacing:2px;
}

footer a{
  margin:0 8px;
  color:var(--muted);
}

footer a:hover{color:var(--gold)}

@media(max-width:850px){

  .header{
    flex-wrap:wrap;
  }

  .menu-button{
    display:block;
  }

  nav{
    display:none;
    width:100%;
    flex-direction:column;
    align-items:flex-start;
    padding:10px 0;
  }

  nav.open{display:flex}

  .cards{
    grid-template-columns:1fr;
  }

  .connect-grid,
  .support-grid{
    grid-template-columns:1fr;
  }

  .hero{
    min-height:540px;
    padding:65px 7%;
  }

  .support-message{
    padding:30px 20px;
  }
}
EOF

cat > site/js/app.js <<'EOF'
(() => {
  "use strict";

  const $ = id => document.getElementById(id);

  function setupMenu(){
    const button = $("menu-button");
    const nav = $("main-nav");

    if(!button || !nav) return;

    button.addEventListener("click", () => {
      nav.classList.toggle("open");
    });
  }

  async function share(title,text,url=location.href){
    const data = {title,text,url};

    try{
      if(navigator.share){
        await navigator.share(data);
        return true;
      }

      await navigator.clipboard.writeText(`${text}\n${url}`);
      alert("Enlace copiado.");
      return true;
    }catch{
      return false;
    }
  }

  function setupShareGraceVerse(){
    $("share-graceverse")?.addEventListener("click",() => {
      share(
        "GraceVerse",
        "Una palabra. Una oración. Una esperanza.",
        location.origin
      );
    });
  }

  function setupPWA(){
    if("serviceWorker" in navigator){
      window.addEventListener("load",() => {
        navigator.serviceWorker.register("/sw.js").catch(() => {});
      });
    }
  }

  function setupNotifications(){
    const key = "gv-notification-asked";

    if(
      !("Notification" in window) ||
      localStorage.getItem(key)
    ) return;

    setTimeout(() => {
      const allow = confirm(
        "GraceVerse puede avisarte cuando haya una nueva palabra o contenido. ¿Querés activar las notificaciones?"
      );

      localStorage.setItem(key,"1");

      if(allow){
        Notification.requestPermission().catch(() => {});
      }
    },8000);
  }

  window.GV = {
    $,
    share
  };

  setupMenu();
  setupShareGraceVerse();
  setupPWA();
  setupNotifications();

})();
EOF

cat > site/js/verse.js <<'EOF'
(() => {
  "use strict";

  const verses = [
    {
      text:"El Señor es mi pastor; nada me faltará.",
      reference:"Salmo 23:1",
      reflection:"No tenés que conocer todo el camino para dar el próximo paso. Confiá en Dios y avanzá."
    },
    {
      text:"Todo lo puedo en Cristo que me fortalece.",
      reference:"Filipenses 4:13",
      reflection:"La fortaleza no siempre significa que todo será fácil. A veces significa tener fuerzas para continuar."
    },
    {
      text:"No temas, porque yo estoy contigo.",
      reference:"Isaías 41:10",
      reflection:"Si hoy estás atravesando un momento difícil, recordá que no tenés que enfrentarlo solo."
    },
    {
      text:"Lámpara es a mis pies tu palabra, y lumbrera a mi camino.",
      reference:"Salmo 119:105",
      reflection:"Una decisión a la vez. Una palabra puede ayudarte a encontrar dirección cuando todo parece oscuro."
    },
    {
      text:"Encomienda a Jehová tus obras, y tus pensamientos serán afirmados.",
      reference:"Proverbios 16:3",
      reflection:"Poné tus proyectos delante de Dios y trabajá con responsabilidad, paciencia y fe."
    },
    {
      text:"Bienaventurados los pacificadores, porque ellos serán llamados hijos de Dios.",
      reference:"Mateo 5:9",
      reflection:"Hoy podés ser parte de la solución llevando paz donde otros llevan conflicto."
    }
  ];

  let index = Number(localStorage.getItem("gv-verse-index") || 0);

  function render(){
    const verse = verses[index];

    document.getElementById("verse-text").textContent = `“${verse.text}”`;
    document.getElementById("verse-reference").textContent = verse.reference;
    document.getElementById("verse-reflection").textContent = verse.reflection;

    const saved = JSON.parse(localStorage.getItem("gv-saved-verses") || "[]");

    document.getElementById("save-verse").textContent =
      saved.includes(verse.reference) ? "♥ Guardada" : "♡ Guardar";
  }

  function next(){
    index = (index + 1) % verses.length;
    localStorage.setItem("gv-verse-index",String(index));
    render();
  }

  function save(){
    const verse = verses[index];
    let saved = JSON.parse(localStorage.getItem("gv-saved-verses") || "[]");

    if(saved.includes(verse.reference)){
      saved = saved.filter(x => x !== verse.reference);
    }else{
      saved.push(verse.reference);
    }

    localStorage.setItem("gv-saved-verses",JSON.stringify(saved));
    render();
  }

  document.addEventListener("DOMContentLoaded",() => {
    render();

    document.getElementById("new-verse")?.addEventListener("click",next);
    document.getElementById("save-verse")?.addEventListener("click",save);

    document.getElementById("share-verse")?.addEventListener("click",() => {
      const verse = verses[index];

      window.GV?.share(
        "GraceVerse — Palabra",
        `“${verse.text}” — ${verse.reference}\n\n${verse.reflection}`
      );
    });
  });

})();
EOF

cat > site/js/prayer.js <<'EOF'
(() => {
  "use strict";

  document.addEventListener("DOMContentLoaded",() => {

    const prayer = document.getElementById("prayer-text")?.textContent.trim();

    document.getElementById("share-prayer")?.addEventListener("click",() => {
      window.GV?.share(
        "GraceVerse — Oración",
        prayer
      );
    });

    document.getElementById("copy-prayer")?.addEventListener("click",async() => {
      try{
        await navigator.clipboard.writeText(prayer);
        document.getElementById("copy-prayer").textContent = "✓ Copiada";
      }catch{
        alert("No se pudo copiar automáticamente.");
      }
    });

  });

})();
EOF

cat > site/js/quiz.js <<'EOF'
(() => {
  "use strict";

  const questions = [
    {
      q:"¿Quién construyó el arca?",
      options:["Moisés","Noé","Abraham"],
      correct:1,
      explanation:"Noé construyó el arca siguiendo las instrucciones de Dios. Génesis 6–9."
    },
    {
      q:"¿En qué ciudad nació Jesús?",
      options:["Belén","Jerusalén","Nazaret"],
      correct:0,
      explanation:"Jesús nació en Belén de Judea. Mateo 2:1."
    },
    {
      q:"¿Quién fue lanzado al foso de los leones?",
      options:["Daniel","David","Pedro"],
      correct:0,
      explanation:"Daniel fue arrojado al foso de los leones y Dios lo protegió. Daniel 6."
    },
    {
      q:"¿Cuántos discípulos escogió Jesús?",
      options:["7","10","12"],
      correct:2,
      explanation:"Jesús escogió a doce apóstoles. Mateo 10:1–4."
    },
    {
      q:"¿Quién derrotó a Goliat?",
      options:["David","Salomón","Josué"],
      correct:0,
      explanation:"David derrotó a Goliat confiando en Dios. 1 Samuel 17."
    },
    {
      q:"¿Cuál es el primer libro de la Biblia?",
      options:["Éxodo","Génesis","Mateo"],
      correct:1,
      explanation:"Génesis es el primer libro de la Biblia."
    },
    {
      q:"¿Quién recibió los Diez Mandamientos?",
      options:["Moisés","Isaías","Samuel"],
      correct:0,
      explanation:"Dios entregó los Diez Mandamientos a Moisés. Éxodo 20."
    },
    {
      q:"¿Quién bautizó a Jesús?",
      options:["Pedro","Juan el Bautista","Pablo"],
      correct:1,
      explanation:"Juan el Bautista bautizó a Jesús en el río Jordán. Mateo 3."
    }
  ];

  let index = 0;
  let score = 0;
  let answered = false;

  function render(){

    const q = questions[index];

    document.getElementById("quiz-progress").textContent =
      `Pregunta ${index + 1} de ${questions.length}`;

    document.getElementById("quiz-score").textContent =
      `${score} puntos`;

    document.getElementById("quiz-question").textContent = q.q;

    const options = document.getElementById("quiz-options");
    options.innerHTML = "";

    q.options.forEach((option,i) => {
      const button = document.createElement("button");

      button.className = "quiz-option";
      button.type = "button";
      button.textContent = `${String.fromCharCode(65+i)}) ${option}`;

      button.addEventListener("click",() => answer(i));

      options.appendChild(button);
    });

    document.getElementById("quiz-result").hidden = true;
    answered = false;
  }

  function answer(choice){

    if(answered) return;

    answered = true;

    const q = questions[index];
    const correct = choice === q.correct;

    if(correct) score += 100;

    document.querySelectorAll(".quiz-option")
      .forEach(button => button.disabled = true);

    document.getElementById("quiz-result-title").textContent =
      correct ? "✅ ¡Correcto!" : "❌ Esta vez no.";

    document.getElementById("quiz-result-text").textContent =
      correct
        ? `${q.explanation} Ganaste 100 puntos.`
        : `${q.explanation} La respuesta correcta era ${q.options[q.correct]}.`;

    document.getElementById("quiz-result").hidden = false;

    document.getElementById("quiz-score").textContent =
      `${score} puntos`;

    if(index === questions.length - 1){
      document.getElementById("quiz-next").textContent = "🏆 Ver resultado";
    }
  }

  function next(){

    if(index >= questions.length - 1){

      document.getElementById("quiz-result-title").textContent =
        "🏆 Desafío terminado";

      document.getElementById("quiz-result-text").textContent =
        `Terminaste las ${questions.length} preguntas con ${score} puntos.`;

      document.getElementById("quiz-next").textContent =
        "Jugar nuevamente";

      index = 0;
      score = 0;

      return;
    }

    index++;
    render();
  }

  document.addEventListener("DOMContentLoaded",() => {
    render();
    document.getElementById("quiz-next")?.addEventListener("click",next);
  });

})();
EOF

cat > site/js/stories.js <<'EOF'
(() => {
  "use strict";

  const KEY = "gv-stories-v1";
  const TTL = 12 * 60 * 60 * 1000;

  function load(){
    try{
      return JSON.parse(localStorage.getItem(KEY) || "[]");
    }catch{
      return [];
    }
  }

  function clean(stories){
    const now = Date.now();
    const valid = stories.filter(s => now - s.createdAt < TTL);

    localStorage.setItem(KEY,JSON.stringify(valid));

    return valid;
  }

  function render(){

    const list = document.getElementById("stories-list");
    if(!list) return;

    const stories = clean(load());

    list.innerHTML = "";

    if(!stories.length){

      list.innerHTML =
        '<div class="empty">Todavía no hay historias publicadas en este dispositivo. Sé la primera persona en compartir esperanza.</div>';

      return;
    }

    stories
      .sort((a,b) => b.createdAt - a.createdAt)
      .forEach(story => {

        const article = document.createElement("article");
        article.className = "story";

        const header = document.createElement("header");

        const name = document.createElement("strong");
        name.textContent = story.name;

        const time = document.createElement("time");
        time.textContent =
          ` · ${new Date(story.createdAt).toLocaleString("es-AR")}`;

        header.append(name,time);

        const text = document.createElement("p");
        text.textContent = story.text;

        article.append(header,text);
        list.appendChild(article);
      });
  }

  document.addEventListener("DOMContentLoaded",() => {

    render();

    document.getElementById("story-form")?.addEventListener("submit",event => {

      event.preventDefault();

      const name =
        document.getElementById("story-name").value.trim();

      const text =
        document.getElementById("story-text").value.trim();

      if(!name || !text) return;

      const stories = clean(load());

      stories.push({
        id: crypto.randomUUID?.() || String(Date.now()),
        name,
        text,
        createdAt:Date.now()
      });

      localStorage.setItem(KEY,JSON.stringify(stories));

      document.getElementById("story-form").reset();

      document.getElementById("story-status").textContent =
        "❤️ Tu historia fue publicada durante 12 horas en este dispositivo.";

      render();
    });

    setInterval(render,60 * 1000);
  });

})();
EOF

cat > site/js/connect.js <<'EOF'
(() => {
  "use strict";

  let mode = "";

  function openForm(title){

    mode = title;

    document.getElementById("connect-title").textContent = title;
    document.getElementById("connect-form").hidden = false;
    document.getElementById("connect-form").scrollIntoView({
      behavior:"smooth",
      block:"center"
    });
  }

  document.addEventListener("DOMContentLoaded",() => {

    document.getElementById("need-prayer")
      ?.addEventListener("click",() => {
        openForm("🙏 Quiero pedir oración");
      });

    document.getElementById("offer-help")
      ?.addEventListener("click",() => {
        openForm("🤝 Quiero ayudar");
      });

    document.getElementById("connect-form-element")
      ?.addEventListener("submit",event => {

        event.preventDefault();

        const name =
          document.getElementById("connect-name").value.trim();

        const message =
          document.getElementById("connect-message").value.trim();

        const payload = {
          mode,
          name,
          message,
          createdAt:new Date().toISOString()
        };

        localStorage.setItem(
          "gv-connect-last",
          JSON.stringify(payload)
        );

        document.getElementById("connect-status").textContent =
          "Gracias. Tu solicitud quedó guardada en este dispositivo. En la V1 pública Connect funciona como prototipo local; la conexión entre personas requiere un backend seguro que agregaremos en la siguiente etapa.";

        event.target.reset();
      });

  });

})();
EOF

cat > site/sw.js <<'EOF'
const CACHE = "graceverse-v1";

const ASSETS = [
  "/",
  "/palabra.html",
  "/oracion.html",
  "/juegos.html",
  "/historias.html",
  "/connect.html",
  "/apoyar.html",
  "/css/styles.css",
  "/js/app.js",
  "/js/verse.js",
  "/js/prayer.js",
  "/js/quiz.js",
  "/js/stories.js",
  "/js/connect.js",
  "/manifest.json"
];

self.addEventListener("install",event => {
  event.waitUntil(
    caches.open(CACHE)
      .then(cache => cache.addAll(ASSETS))
      .then(() => self.skipWaiting())
  );
});

self.addEventListener("activate",event => {
  event.waitUntil(
    caches.keys()
      .then(keys =>
        Promise.all(
          keys
            .filter(key => key !== CACHE)
            .map(key => caches.delete(key))
        )
      )
      .then(() => self.clients.claim())
  );
});

self.addEventListener("fetch",event => {

  if(event.request.method !== "GET") return;

  event.respondWith(
    fetch(event.request)
      .then(response => {

        const copy = response.clone();

        caches.open(CACHE)
          .then(cache => cache.put(event.request,copy))
          .catch(() => {});

        return response;
      })
      .catch(() => caches.match(event.request))
  );

});
EOF

echo
echo "===== LIMPIEZA DE ARCHIVOS OCULTOS ANTIGUOS ====="

rm -f .gitignore README.md package.json package-lock.json

echo
echo "===== ARCHIVOS V1 ====="

find . -not -path "./.git/*" -type f | sort

echo
echo "===== VALIDANDO JAVASCRIPT ====="

node --check site/js/app.js
node --check site/js/verse.js
node --check site/js/prayer.js
node --check site/js/quiz.js
node --check site/js/stories.js
node --check site/js/connect.js

echo
echo "===== VALIDANDO REFERENCIAS ====="

for file in \
  site/index.html \
  site/palabra.html \
  site/oracion.html \
  site/juegos.html \
  site/historias.html \
  site/connect.html \
  site/apoyar.html
do
  test -f "$file" || {
    echo "ERROR: falta $file"
    exit 1
  }
done

echo
echo "===== VALIDANDO CONTENIDO VIEJO ====="

if grep -RniE \
'verse-engine|graceverse-v6|graceverse-v7|graceverse-v8|10\.000\.000|personas alcanzadas|youtube-nocookie|youtube.com|community-count|goal-progress|audit-v7|backups/' \
site netlify.toml 2>/dev/null
then
  echo "ERROR: apareció contenido viejo."
  exit 1
fi

echo "OK — no se detectó contenido viejo."

echo
echo "===== GIT LIMPIO ====="

git add -A

git status --short

echo
echo "===== COMMIT V1 ====="

git commit -m "GraceVerse V1 - Ministerio Internacional Jesus Rey"

echo
echo "===== PUSH ====="

git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin git@github.com:fbseguridad/graceverse.git

git push -u origin main --force

echo
echo "=================================================="
echo "       GRACEVERSE V1 INSTALADO"
echo "=================================================="
echo
echo "Web:"
echo "https://graceverse.netlify.app/"
echo
echo "Páginas:"
echo "https://graceverse.netlify.app/palabra.html"
echo "https://graceverse.netlify.app/oracion.html"
echo "https://graceverse.netlify.app/juegos.html"
echo "https://graceverse.netlify.app/historias.html"
echo "https://graceverse.netlify.app/connect.html"
echo "https://graceverse.netlify.app/apoyar.html"
echo
echo "=================================================="
