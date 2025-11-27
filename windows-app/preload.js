const { contextBridge } = require('electron');
const lessons = require('./src/lessons');

contextBridge.exposeInMainWorld('hanziLessons', {
  themes: lessons.themes,
});
