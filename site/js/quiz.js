(() => {
  const questions = [
    {
      q: '¿Quién construyó el arca?',
      a: ['Moisés', 'Noé', 'David'],
      correct: 1
    },
    {
      q: '¿Cuántos discípulos principales tuvo Jesús?',
      a: ['10', '12', '20'],
      correct: 1
    },
    {
      q: '¿Quién derrotó a Goliat?',
      a: ['David', 'Salomón', 'Pedro'],
      correct: 0
    },
    {
      q: '¿Dónde nació Jesús?',
      a: ['Jerusalén', 'Belén', 'Nazaret'],
      correct: 1
    },
    {
      q: '¿Quién recibió los Diez Mandamientos?',
      a: ['Moisés', 'Pablo', 'Juan'],
      correct: 0
    },
    {
      q: '¿Cuál es el primer libro de la Biblia?',
      a: ['Éxodo', 'Génesis', 'Mateo'],
      correct: 1
    },
    {
      q: '¿Quién fue arrojado al foso de los leones?',
      a: ['Daniel', 'Isaac', 'Josué'],
      correct: 0
    },
    {
      q: '¿Qué discípulo negó a Jesús tres veces?',
      a: ['Pedro', 'Tomás', 'Andrés'],
      correct: 0
    }
  ];

  const question = document.querySelector('#quiz-question');
  const options = document.querySelector('#quiz-options');
  const progress = document.querySelector('#quiz-progress');
  const scoreEl = document.querySelector('#quiz-score');
  const result = document.querySelector('#quiz-result');
  const resultTitle = document.querySelector('#quiz-result-title');
  const resultText = document.querySelector('#quiz-result-text');
  const next = document.querySelector('#quiz-next');

  if (!question) return;

  let index = 0;
  let score = 0;

  function render() {
    const item = questions[index];

    question.textContent = item.q;
    progress.textContent = `Pregunta ${index + 1} de ${questions.length}`;
    scoreEl.textContent = `${score} puntos`;
    result.hidden = true;
    options.innerHTML = '';

    item.a.forEach((answer, i) => {
      const button = document.createElement('button');

      button.className = 'quiz-option';
      button.textContent = `${String.fromCharCode(65 + i)}. ${answer}`;

      button.addEventListener('click', () => {
        if (i === item.correct) {
          score++;
          resultTitle.textContent = '¡Correcto! 🙌';
          resultText.textContent = 'Muy bien. Seguimos aprendiendo.';
        } else {
          resultTitle.textContent = 'Casi. ❤️';
          resultText.textContent = `La respuesta correcta era: ${item.a[item.correct]}.`;
        }

        options.querySelectorAll('button').forEach(b => {
          b.disabled = true;
        });

        scoreEl.textContent = `${score} puntos`;
        result.hidden = false;
      });

      options.appendChild(button);
    });
  }

  next?.addEventListener('click', () => {
    index++;

    if (index >= questions.length) {
      index = 0;
      score = 0;
    }

    render();
  });

  render();
})();
