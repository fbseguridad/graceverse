(() => {
  const form = document.querySelector('#story-form');
  const list = document.querySelector('#stories-list');
  const status = document.querySelector('#story-status');

  if (!form || !list) return;

  const KEY = 'graceverse_stories_v1';
  const TTL = 12 * 60 * 60 * 1000;

  function load() {
    try {
      return JSON.parse(localStorage.getItem(KEY) || '[]');
    } catch {
      return [];
    }
  }

  function save(data) {
    localStorage.setItem(KEY, JSON.stringify(data));
  }

  function cleanExpired() {
    const now = Date.now();
    const stories = load().filter(item => now - item.createdAt < TTL);

    save(stories);
    return stories;
  }

  function render() {
    const stories = cleanExpired();

    list.innerHTML = '';

    if (!stories.length) {
      const empty = document.createElement('p');
      empty.className = 'empty-state';
      empty.textContent = 'Todavía no hay historias publicadas en este dispositivo.';
      list.appendChild(empty);
      return;
    }

    stories.reverse().forEach(story => {
      const article = document.createElement('article');
      article.className = 'story-card';

      const name = document.createElement('strong');
      name.textContent = story.name;

      const text = document.createElement('p');
      text.textContent = story.text;

      const time = document.createElement('small');
      const remaining = Math.max(0, TTL - (Date.now() - story.createdAt));
      const hours = Math.ceil(remaining / 3600000);

      time.textContent = `Disponible aproximadamente ${hours} h más.`;

      article.append(name, text, time);
      list.appendChild(article);
    });
  }

  form.addEventListener('submit', event => {
    event.preventDefault();

    const name = document.querySelector('#story-name').value.trim();
    const text = document.querySelector('#story-text').value.trim();

    if (!name || !text) return;

    const stories = cleanExpired();

    stories.push({
      id: crypto.randomUUID ? crypto.randomUUID() : String(Date.now()),
      name,
      text,
      createdAt: Date.now()
    });

    save(stories);

    form.reset();

    status.textContent = 'Tu historia quedó publicada durante 12 horas en este dispositivo.';

    render();
  });

  render();

  setInterval(render, 60000);
})();
