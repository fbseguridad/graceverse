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
