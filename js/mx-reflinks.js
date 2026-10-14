/* The names in the code of a Python page link to their page of the Python
 * function reference: a function or class of mtex (calcGrains, orientation),
 * and Class.member (orientation.byEuler). A method called on a variable stays
 * unlinked, the code does not say its class, and so do a keyword argument and
 * the name an assignment binds. python_refs.json, written by pymtex
 * docs/site.py, names the page of every Python name. Loaded by the layout on
 * the pages whose front matter says lang: python.
 */
(function () {
  'use strict';
  var blocks = document.querySelectorAll('.mx-article .language-python code');
  if (!blocks.length || !window.fetch) { return; }

  // the text of an element that is a token of the given Rouge classes, or null
  function token(el, classes) {
    return el && el.tagName === 'SPAN' && classes.indexOf(el.className) >= 0 ? el.textContent : null;
  }

  function link(span, page) {
    var a = document.createElement('a');
    a.className = 'mx-ref';
    a.href = page + '_py.html';
    span.parentNode.insertBefore(a, span);
    a.appendChild(span);
  }

  fetch('python_refs.json').then(function (r) { return r.ok ? r.json() : {}; }).then(function (refs) {
    // every link is decided before any is made, as a link moves its name out of the token row
    var links = [];
    blocks.forEach(function (code) {
      code.querySelectorAll('span.n, span.nf, span.nc').forEach(function (span) {
        var name = span.textContent, prev = span.previousElementSibling, next = span.nextElementSibling;
        // a keyword argument or an assigned name
        if (token(next, ['o']) === '=') { return; }
        if (token(prev, ['p']) === '.') {
          var owner = token(prev.previousElementSibling, ['n', 'nc']);
          if (owner && refs.hasOwnProperty(owner + '.' + name)) { links.push([span, refs[owner + '.' + name]]); }
          return;
        }
        if (refs.hasOwnProperty(name)) { links.push([span, refs[name]]); }
      });
    });
    links.forEach(function (l) { link(l[0], l[1]); });
  }).catch(function () {});
})();
