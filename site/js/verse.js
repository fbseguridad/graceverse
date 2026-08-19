(() => {
  const verses = [
    {
      text: 'Todo lo puedo en Cristo que me fortalece.',
      reference: 'Filipenses 4:13',
      reflection: 'No estás solo frente a lo que tenés que atravesar. Seguí adelante con fe.'
    },
    {
      text: 'El Señor es mi pastor; nada me faltará.',
      reference: 'Salmos 23:1',
      reflection: 'Descansá por un momento. Dios conoce tus necesidades y tu camino.'
    },
    {
      text: 'No temas, porque yo estoy contigo.',
      reference: 'Isaías 41:10',
      reflection: 'Aunque hoy tengas miedo o incertidumbre, podés dar el próximo paso acompañado por Dios.'
    },
    {
      text: 'Encomienda al Señor tus obras, y tus pensamientos serán afirmados.',
      reference: 'Proverbios 16:3',
      reflection: 'Poné tus proyectos delante de Dios y avanzá con responsabilidad y esperanza.'
    },
    {
      text: 'El Señor está cerca de los quebrantados de corazón.',
      reference: 'Salmos 34:18',
      reflection: 'Tu dolor no pasa desapercibido. Podés acercarte a Dios incluso desde tu momento más difícil.'
    }
  ];

  const text = document.querySelector('#verse-text');
  const reference = document.querySelector('#verse-reference');
  const reflection = document.querySelector('#verse-reflection');
  const status = document.querySelector('#verse-status');
  const next = document.querySelector('#new-verse');
  const share = document.querySelector('#share-verse');
  const save = document.querySelector('#save-verse');

  if (!text) return;

  let current = Number(localStorage.getItem('graceverse_verse')) || 0;

  function render() {
    const verse = verses[current];

    text.textContent = `“${verse.text}”`;
    reference.textContent = verse.reference;
    reflection.textContent = verse.reflection;

    if (status) status.textContent = '';
  }

  next?.addEventListener('click', () => {
    current = (current + 1) % verses.length;
    localStorage.setItem('graceverse_verse', current);
    render();
  });

  share?.addEventListener('click', () => {
    const verse = verses[current];

    graceShare({
      title: `GraceVerse — ${verse.reference}`,
      text: `“${verse.text}”\n\n${verse.reference}\n\n${verse.reflection}`
    });
  });

  save?.addEventListener('click', () => {
    const verse = verses[current];

    localStorage.setItem('graceverse_saved_verse', JSON.stringify(verse));

    if (status) {
      status.textContent = '♡ Palabra guardada en este dispositivo.';
    }
  });

  render();
})();
