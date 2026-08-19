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
