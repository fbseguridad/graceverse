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
