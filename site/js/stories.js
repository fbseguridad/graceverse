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
