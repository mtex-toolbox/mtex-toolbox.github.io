/* Homepage examples follow the language chosen in the top bar. */
(function () {
  'use strict';
  var card = document.getElementById('mx-card');
  if (!card) return;
  var tabs = Array.from(card.querySelectorAll('[role="tab"]'));
  var small = window.matchMedia('(max-width: 640px)');

  function pick(tab) {
    tabs.forEach(function (item) {
      var selected = item === tab;
      item.setAttribute('aria-selected', String(selected));
      item.tabIndex = selected ? 0 : -1;
      document.getElementById(item.getAttribute('aria-controls')).hidden = !selected;
    });
    var bar = document.getElementById('mx-hero-tabs');
    var box = tab.getBoundingClientRect(), bounds = bar.getBoundingClientRect();
    if (box.left < bounds.left) bar.scrollLeft += box.left - bounds.left;
    if (box.right > bounds.right) bar.scrollLeft += box.right - bounds.right;
  }

  tabs.forEach(function (tab, index) {
    tab.addEventListener('click', function () { pick(tab); });
    tab.addEventListener('keydown', function (event) {
      var next;
      if (event.key === 'ArrowRight') next = (index + 1) % tabs.length;
      if (event.key === 'ArrowLeft') next = (index + tabs.length - 1) % tabs.length;
      if (event.key === 'Home') next = 0;
      if (event.key === 'End') next = tabs.length - 1;
      if (next !== undefined) {
        event.preventDefault();
        pick(tabs[next]);
        tabs[next].focus();
      }
    });
  });

  function views() {
    card.querySelectorAll('[role="tabpanel"]').forEach(function (pane) {
      var selected = pane.querySelector('[data-view][aria-pressed="true"]');
      var index = selected ? Number(selected.getAttribute('data-view')) : 0;
      pane.querySelectorAll('figure').forEach(function (figure, position) {
        figure.hidden = small.matches && index !== position;
      });
    });
  }
  card.querySelectorAll('[data-view]').forEach(function (button) {
    button.addEventListener('click', function () {
      button.parentElement.querySelectorAll('button').forEach(function (item) {
        item.setAttribute('aria-pressed', String(item === button));
      });
      views();
    });
  });
  small.addEventListener('change', views);
  views();

  function language(lang) {
    lang = lang || 'matlab';
    document.querySelectorAll('[data-code]').forEach(function (pre) {
      pre.hidden = pre.getAttribute('data-code') !== lang;
    });
    document.querySelectorAll('.mx-lang button').forEach(function (button) {
      button.setAttribute('aria-pressed', String(button.getAttribute('data-lang') === lang));
    });
    document.getElementById('mx-code-name').textContent = lang === 'python' ?
      'compare_grain_size.py' : 'compareGrainSize.m';
  }
  document.querySelectorAll('.mx-lang button').forEach(function (button) {
    button.addEventListener('click', function () {
      window.MtexLanguage.set(button.getAttribute('data-lang'));
    });
  });
  document.addEventListener('mx-lang', function (event) { language(event.detail); });
  language(window.MtexLanguage.current());
})();
