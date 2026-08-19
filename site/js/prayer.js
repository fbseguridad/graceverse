(() => {
  const prayer = document.querySelector('#prayer-text');
  const share = document.querySelector('#share-prayer');
  const copy = document.querySelector('#copy-prayer');

  if (!prayer) return;

  share?.addEventListener('click', () => {
    graceShare({
      title: 'Una oración — GraceVerse',
      text: prayer.innerText.trim()
    });
  });

  copy?.addEventListener('click', async () => {
    try {
      await navigator.clipboard.writeText(prayer.innerText.trim());
      alert('Oración copiada.');
    } catch {
      alert('No se pudo copiar automáticamente.');
    }
  });
})();
