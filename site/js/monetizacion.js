(() => {
  "use strict";

  /*
   * GRACEVERSE — MONETIZACIÓN V1.4
   * Ministerio Internacional Jesús Rey
   *
   * Solo utiliza:
   * 1. Smartlink
   * 2. Popunder
   */

  const SMARTLINK =
    "https://dependedunmoved.com/afdzqgctg?key=6116f0259c9e49c639e3963bbaffbd4b";

  function crearBloqueApoyo() {
    if (document.querySelector(".gv-monetizacion-extra")) return;

    const bloque = document.createElement("section");

    bloque.className = "gv-monetizacion-extra";

    bloque.innerHTML = `
      <div class="gv-monetizacion-inner">

        <span class="gv-monetizacion-label">
          ✝ GRACEVERSE · MINISTERIO INTERNACIONAL JESÚS REY
        </span>

        <h2>Si esta palabra llegó a vos, compartila.</h2>

        <p>
          GraceVerse existe para llevar una palabra de esperanza a personas
          de distintos lugares del mundo. Miles de personas pueden aportar
          su granito de arena simplemente compartiendo este espacio.
        </p>

        <div class="gv-monetizacion-actions">

          <a
            class="gv-smartlink"
            href="${SMARTLINK}"
            target="_blank"
            rel="noopener noreferrer"
          >
            📖 Continuar y conocer más
          </a>

          <a
            class="gv-apoyar-link"
            href="/apoyar.html"
          >
            🤍 Apoyar el ministerio
          </a>

        </div>

        <small>
          La publicidad ayuda a cubrir los costos tecnológicos,
          mantenimiento y desarrollo de GraceVerse.
        </small>

      </div>
    `;

    document.body.appendChild(bloque);
  }

  function crearAvisoCompartir() {
    if (sessionStorage.getItem("gv_share_notice")) return;

    setTimeout(() => {

      const aviso = document.createElement("div");

      aviso.className = "gv-share-pop";

      aviso.innerHTML = `
        <button class="gv-share-close" aria-label="Cerrar">×</button>

        <strong>🙏 Una palabra puede cambiar un día.</strong>

        <p>
          Si GraceVerse te sirvió, compartilo con alguien.
          Quizás hoy haya una persona necesitando justamente esto.
        </p>

        <button class="gv-share-button">
          📲 Compartir GraceVerse
        </button>
      `;

      document.body.appendChild(aviso);

      aviso.querySelector(".gv-share-close").onclick = () => {
        aviso.remove();
        sessionStorage.setItem("gv_share_notice", "1");
      };

      aviso.querySelector(".gv-share-button").onclick = async () => {

        const shareData = {
          title: "GraceVerse — Ministerio Internacional Jesús Rey",
          text:
            "Encontré GraceVerse. Una palabra, una oración y una esperanza. 🙏",
          url: window.location.origin
        };

        try {

          if (navigator.share) {
            await navigator.share(shareData);
          } else {
            await navigator.clipboard.writeText(
              window.location.origin
            );

            alert("Enlace copiado. Compartilo con alguien que pueda necesitarlo.");
          }

          aviso.remove();
          sessionStorage.setItem("gv_share_notice", "1");

        } catch (error) {
          console.log("Compartir cancelado.");
        }
      };

    }, 12000);
  }

  function inicializar() {
    crearBloqueApoyo();
    crearAvisoCompartir();
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", inicializar);
  } else {
    inicializar();
  }

})();
