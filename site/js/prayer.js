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
