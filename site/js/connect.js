(() => {
  const formBox = document.querySelector('#connect-form');
  const title = document.querySelector('#connect-title');
  const form = document.querySelector('#connect-form-element');
  const status = document.querySelector('#connect-status');

  const prayerButton = document.querySelector('#need-prayer');
  const helpButton = document.querySelector('#offer-help');

  if (!formBox || !form) return;

  let mode = '';

  function openForm(type) {
    mode = type;

    title.textContent =
      type === 'prayer'
        ? 'Quiero pedir oración'
        : 'Quiero ofrecer ayuda';

    formBox.hidden = false;
    form.scrollIntoView({ behavior: 'smooth', block: 'center' });
  }

  prayerButton?.addEventListener('click', () => openForm('prayer'));
  helpButton?.addEventListener('click', () => openForm('help'));

  form.addEventListener('submit', event => {
    event.preventDefault();

    const name = document.querySelector('#connect-name').value.trim();
    const message = document.querySelector('#connect-message').value.trim();

    if (!name || !message) return;

    const data = {
      type: mode,
      name,
      message,
      createdAt: Date.now()
    };

    const requests = JSON.parse(
      localStorage.getItem('graceverse_connect_v1') || '[]'
    );

    requests.push(data);

    localStorage.setItem(
      'graceverse_connect_v1',
      JSON.stringify(requests)
    );

    form.reset();

    status.textContent =
      'Recibimos tu mensaje en este dispositivo. La conexión pública entre personas se habilitará en la próxima etapa.';
  });
})();
