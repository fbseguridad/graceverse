(() => {
  const $ = (s) => document.querySelector(s);

  const menu = $('#menu-button');
  const nav = $('#main-nav');

  if (menu && nav) {
    menu.addEventListener('click', () => {
      nav.classList.toggle('open');
      menu.setAttribute('aria-expanded', nav.classList.contains('open'));
    });
  }

  // Compartir contenido
  window.graceShare = async ({ title, text, url = location.href }) => {
    try {
      if (navigator.share) {
        await navigator.share({ title, text, url });
        return true;
      }

      await navigator.clipboard.writeText(`${text}\n\n${url}`);
      alert('Enlace copiado. Ahora podés compartirlo.');
      return true;
    } catch {
      return false;
    }
  };

  // Instalar GraceVerse como aplicación
  let deferredPrompt = null;

  window.addEventListener('beforeinstallprompt', (event) => {
    event.preventDefault();
    deferredPrompt = event;

    document.querySelectorAll('[data-install-app]').forEach(btn => {
      btn.hidden = false;

      btn.addEventListener('click', async () => {
        if (!deferredPrompt) return;

        deferredPrompt.prompt();
        await deferredPrompt.userChoice;
        deferredPrompt = null;
      }, { once: true });
    });
  });

  // Registro del Service Worker
  if ('serviceWorker' in navigator) {
    window.addEventListener('load', () => {
      navigator.serviceWorker.register('/sw.js')
        .then(() => console.log('GraceVerse SW activo'))
        .catch(err => console.warn('SW:', err));
    });
  }

  // Aviso discreto
  setTimeout(() => {
    const popup = document.querySelector('[data-grace-popup]');
    if (!popup) return;

    if (!sessionStorage.getItem('grace_popup_seen')) {
      popup.hidden = false;

      const close = popup.querySelector('[data-close-popup]');
      if (close) {
        close.addEventListener('click', () => {
          popup.hidden = true;
          sessionStorage.setItem('grace_popup_seen', '1');
        });
      }
    }
  }, 12000);

  // Compartir GraceVerse
  const shareGrace = $('#share-graceverse');

  if (shareGrace) {
    shareGrace.addEventListener('click', () => {
      graceShare({
        title: 'GraceVerse — Ministerio Internacional Jesús Rey',
        text: 'Una palabra. Una oración. Una esperanza.'
      });
    });
  }

  // Botón de instalación
  document.querySelectorAll('[data-install-app]').forEach(btn => {
    btn.hidden = true;
  });
})();
