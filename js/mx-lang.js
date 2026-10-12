/* The MATLAB | Python switch of the top bar.
 *
 * A documentation page <Page>.html has a Python version <Page>_py.html when
 * pymtex docs/site.py exported one; window.MX_PY lists those pages (from
 * _data/python_pages.yml). The choice is remembered in the browser. Switching
 * opens the other version of the current page at the same section, and every
 * link to a documentation page follows the chosen language from then on. A
 * page without a Python version stays as it is.
 */
(function () {
  'use strict';

  var KEY = 'mx-lang';
  var py = {};
  (window.MX_PY || []).forEach(function (n) { py[n] = true; });

  // the remembered choice, or null when the visitor has never chosen
  function stored() { try { var v = localStorage.getItem(KEY); return v === 'python' || v === 'matlab' ? v : null; } catch (e) { return null; } }
  function set(l) { try { localStorage.setItem(KEY, l); } catch (e) {} }

  // "EBSDKAM" for EBSDKAM.html and EBSDKAM_py.html, null for anything else
  function pageOf(href) {
    var m = /^(?:\.?\/)?([^\/?#]+?)(_py)?\.html(#.*)?$/.exec(href || '');
    return m && py[m[1]] ? { name: m[1], python: !!m[2], hash: m[3] || '' } : null;
  }
  function target(p, lang) { return p.name + (lang === 'python' ? '_py' : '') + '.html' + p.hash; }

  var here = pageOf(location.pathname.split('/').pop() + location.hash);
  // Without a remembered choice, a Python page opened from a link (a search
  // result, the pymtex docs) makes Python the choice; everything else is MATLAB.
  var requestedLang = new URLSearchParams(location.search).get('lang');
  var lang = requestedLang === 'python' || requestedLang === 'matlab' ? requestedLang : stored();
  if (requestedLang === lang) set(lang);
  if (!lang && here && here.python) { lang = 'python'; set(lang); }
  lang = lang || 'matlab';

  // a remembered choice opens the matching version of this page
  if (here && here.python !== (lang === 'python')) {
    location.replace(target(here, lang));
    return;
  }

  // links to documentation pages follow the choice
  document.addEventListener('click', function (e) {
    var a = e.target.closest && e.target.closest('a[href]');
    if (!a) { return; }
    var requested = a.getAttribute('data-page-lang');
    if (requested) choose(requested, false);
    var p = pageOf(a.getAttribute('href'));
    if (p && p.python !== (lang === 'python')) { a.setAttribute('href', target(p, lang)); }
  }, true);

  function mark() {
    document.querySelectorAll('.mx-lang-switch button').forEach(function (b) {
      b.setAttribute('aria-pressed', String(b.getAttribute('data-lang') === lang));
    });
    document.documentElement.setAttribute('data-lang', lang);
  }

  function choose(value, navigate) {
    if (value !== 'python' && value !== 'matlab') return;
    lang = value;
    set(lang);
    mark();
    if (here && navigate !== false) {
      location.href = target({ name: here.name, python: false, hash: location.hash }, lang);
    }
    document.dispatchEvent(new CustomEvent('mx-lang', { detail: lang }));
  }
  window.MtexLanguage = { set: choose, current: function () { return lang; } };

  document.addEventListener('DOMContentLoaded', function () {
    mark();
    // a documentation page that has no Python version yet says so
    var side = document.getElementById('mx-side'), title = document.querySelector('.mx-article .post-header');
    if (lang === 'python' && !here && title && side && side.getAttribute('data-sidebar') === 'documentation_sidebar') {
      var note = document.createElement('p');
      note.className = 'mx-langnote';
      note.textContent = 'This page has no Python version yet.' +
        (document.querySelector('.mx-article figure.highlight') ? ' Its code is MATLAB.' : '');
      title.parentNode.insertBefore(note, title.nextSibling);
    }
    document.querySelectorAll('.mx-lang-switch button').forEach(function (b) {
      b.addEventListener('click', function () {
        choose(b.getAttribute('data-lang'));
      });
    });
  });
})();
