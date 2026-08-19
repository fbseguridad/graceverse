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
