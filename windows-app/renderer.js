const { themes } = window.hanziLessons;

const themeGrid = document.getElementById('theme-grid');
const lessonPanel = document.getElementById('lesson-panel');
const guide = document.getElementById('guide');
const openTutorial = document.getElementById('open-tutorial');
const openPackaging = document.getElementById('open-packaging');
const closeGuide = document.getElementById('close-guide');

function renderThemes() {
  themeGrid.innerHTML = '';
  themes.forEach((theme) => {
    const card = document.createElement('article');
    card.className = 'theme-card';
    card.style.borderColor = `${theme.accent}55`;
    card.innerHTML = `
      <p class="pill" style="background:${theme.accent}20;color:${theme.accent}">${theme.name}</p>
      <h3>${theme.description}</h3>
      <p>共 ${theme.lessons.length} 课 · ${theme.lessons[0].grade}起</p>
    `;
    card.addEventListener('click', () => renderLessons(theme));
    themeGrid.appendChild(card);
  });
}

function renderLessons(theme) {
  lessonPanel.innerHTML = '';
  const title = document.createElement('h2');
  title.textContent = `${theme.name} · ${theme.lessons.length} 节课程`;
  title.style.margin = '0';
  lessonPanel.appendChild(title);

  const sub = document.createElement('p');
  sub.textContent = '从故事导入到笔顺练习，再到复述挑战，一气呵成。';
  sub.style.color = '#94a3b8';
  lessonPanel.appendChild(sub);

  const tpl = document.getElementById('lesson-template');
  theme.lessons.forEach((lesson) => {
    const node = tpl.content.cloneNode(true);
    node.querySelector('.lesson-card').style.borderColor = `${theme.accent}55`;
    node.querySelector('.lesson-card').style.boxShadow = `0 12px 40px ${theme.accent}22`;
    node.querySelector('.grade').textContent = lesson.grade;
    node.querySelector('.lesson-title').textContent = lesson.title;
    node.querySelector('.story').textContent = lesson.story;
    node.querySelector('.practice-text').textContent = lesson.practice;
    node.querySelector('.challenge-text').textContent = lesson.challenge;

    const charWrap = node.querySelector('.characters');
    lesson.characters.forEach((c) => {
      const pill = document.createElement('div');
      pill.className = 'character-pill';
      pill.innerHTML = `
        <strong>${c.hanzi}</strong> <span style="color:${theme.accent}">${c.pinyin}</span><br />
        <small>${c.strokes}</small><br />
        <small>${c.meaning}</small>
      `;
      charWrap.appendChild(pill);
    });

    lessonPanel.appendChild(node);
  });
}

function showGuide() {
  guide.showModal();
}

function openPackagingSteps() {
  alert('在项目目录运行: npm install && npm run package\n输出: windows-app/HanziKids-win32-x64');
}

openTutorial.addEventListener('click', showGuide);
openPackaging.addEventListener('click', openPackagingSteps);
closeGuide.addEventListener('click', () => guide.close());

guide.addEventListener('cancel', (event) => {
  event.preventDefault();
  guide.close();
});

renderThemes();
renderLessons(themes[0]);
