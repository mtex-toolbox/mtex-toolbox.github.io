/* Documentation pages in the 2026 design (_layouts/default.html).
 *
 * The sidebar tree of a section is published once as /sidebars/<name>.html
 * (_includes/sidebar_tree.html) and fetched here, so that 2,700 pages do not
 * each carry a copy. From it this script builds
 *   - the sidebar: one collapsible block per chapter, the current one open,
 *     with a filter over all pages of the section; on a function reference
 *     page only the methods of the page's own class,
 *   - the breadcrumbs above the title,
 *   - the previous and next page of the chapter at the foot,
 * and from the page itself the "On this page" list of its headings.
 */
(function () {
  'use strict';

  var side = document.getElementById('mx-side');
  var tree = document.getElementById('mx-side-tree');
  var article = document.getElementById('mx-article');
  var rail = document.getElementById('mx-rail');
  if (!article) { return; }

  function strip(path) { return (path || '').split('#')[0].split('/').pop().replace(/\.html$/, ''); }
  // the Python version <Page>_py.html has the place of <Page>.html
  var here = (strip(location.pathname) || 'index').replace(/_py$/, '');

  function el(tag, attrs, text) {
    var e = document.createElement(tag);
    for (var k in attrs) { if (attrs[k] != null) { e.setAttribute(k, attrs[k]); } }
    if (text != null) { e.textContent = text; }
    return e;
  }

  /* ------------------------------------------------------------ on this page */

  function buildRail() {
    if (!rail) { return; }
    var heads = Array.prototype.filter.call(article.querySelectorAll('h2[id]'), function (h) {
      return !h.closest('.mtex-attribution') && h.textContent.trim();
    });
    if (heads.length < 2) { return; }
    rail.appendChild(el('h4', null, 'On this page'));
    var ul = el('ul');
    var links = heads.map(function (h) {
      var a = el('a', { href: '#' + h.id }, h.textContent.trim());
      var li = el('li'); li.appendChild(a); ul.appendChild(li);
      return a;
    });
    rail.appendChild(ul);
    rail.hidden = false;

    if (!('IntersectionObserver' in window)) { return; }
    var current = null;
    var obs = new IntersectionObserver(function (entries) {
      entries.forEach(function (e) {
        if (e.isIntersecting) { current = heads.indexOf(e.target); }
      });
      links.forEach(function (a, i) { a.classList.toggle('mx-on', i === current); });
    }, { rootMargin: '-90px 0px -70% 0px' });
    heads.forEach(function (h) { obs.observe(h); });
  }

  /* ----------------------------------------------------------------- sidebar */

  // parse the fetched fragment into [{title, url, items:[{title,url,items?}]}]
  function parse(html) {
    var box = document.createElement('ul');
    box.innerHTML = html;
    var chapters = [];
    Array.prototype.forEach.call(box.children, function (li) {
      if (li.classList.contains('sidebarTitle')) { return; }
      var a = li.querySelector(':scope > a');
      if (!a) { return; }
      var ch = { title: a.textContent.trim(), url: a.getAttribute('href'), items: [] };
      var ul = li.querySelector(':scope > ul');
      if (ul) {
        Array.prototype.forEach.call(ul.children, function (sub) {
          var sa = sub.querySelector(':scope > a');
          if (!sa) { return; }
          var item = { title: sa.textContent.trim(), url: sa.getAttribute('href') };
          var sul = sub.querySelector(':scope > ul');
          if (sul) {
            item.items = Array.prototype.map.call(sul.querySelectorAll(':scope > li > a'), function (x) {
              return { title: x.textContent.trim(), url: x.getAttribute('href') };
            });
          }
          ch.items.push(item);
        });
      }
      chapters.push(ch);
    });
    return chapters;
  }

  function link(item, extraClass) {
    var a = el('a', { href: item.url }, item.title);
    if (strip(item.url) === here) { a.setAttribute('aria-current', 'page'); }
    if (extraClass) { a.className = extraClass; }
    return a;
  }

  function renderChapters(chapters) {
    tree.textContent = '';
    chapters.forEach(function (ch) {
      var isHere = strip(ch.url) === here || ch.items.some(function (i) { return strip(i.url) === here; });
      var d = el('details', { 'data-chapter': ch.title });
      if (isHere) { d.open = true; }
      var s = el('summary');
      s.appendChild(el('span', null, ch.title));
      s.appendChild(el('small', null, String(ch.items.length)));
      d.appendChild(s);
      var ul = el('ul');
      if (ch.url && ch.url !== '#') {
        var li0 = el('li', { class: 'mx-side-over' }); li0.appendChild(link({ title: 'Overview', url: ch.url })); ul.appendChild(li0);
      }
      ch.items.forEach(function (i) { var li = el('li', i.isCase ? { class: 'mx-side-case' } : null); li.appendChild(link(i)); ul.appendChild(li); });
      d.appendChild(ul);
      tree.appendChild(d);
    });
  }

  // function reference: only the class of the current page
  function renderClass(chapters) {
    var found = null;
    chapters.forEach(function (ch) {
      ch.items.forEach(function (cls) {
        if (cls.items && (strip(cls.url) === here || cls.items.some(function (m) { return strip(m.url) === here; }))) {
          found = { section: ch, cls: cls };
        }
      });
    });
    if (!found) { renderChapters(chapters); return null; }
    tree.textContent = '';
    var head = el('div', { class: 'mx-side-class' });
    head.appendChild(link({ title: found.cls.title, url: found.cls.url }, 'mx-side-classname'));
    head.appendChild(el('small', null, found.cls.items.length + ' methods'));
    tree.appendChild(head);
    var ul = el('ul', { class: 'mx-side-methods' });
    found.cls.items.forEach(function (m) {
      var li = el('li'); li.appendChild(link({ title: m.title, url: m.url })); ul.appendChild(li);
    });
    tree.appendChild(ul);
    var back = el('p', { class: 'mx-side-back' });
    back.appendChild(link({ title: '← ' + found.section.title, url: found.section.url }));
    tree.appendChild(back);
    document.getElementById('mx-side-filter').placeholder = 'Filter the methods of ' + found.cls.title;
    return found;
  }

  // documentation: sections (Start, Concepts, Tasks) hold chapters, which hold
  // pages. Only the section of the current page is shown; a chapter page lists
  // its pages.
  function renderSection(sections, sec) {
    // case studies: the worked examples of a chapter, listed after its pages
    var cases = window.MX_CASES || {};
    sections.forEach(function (s) {
      s.items.forEach(function (c) {
        c.cases = (cases[strip(c.url)] || []).map(function (x) { return { title: x.title, url: x.page + '.html', isCase: true }; });
      });
    });
    var holds = function (c) {
      return strip(c.url) === here || (c.items || []).concat(c.cases || []).some(function (i) { return strip(i.url) === here; });
    };
    var section = sections.find(function (s) { return strip(s.url) === here || s.items.some(holds); });
    if (!section) { renderChapters(sections); return; }
    var chapters = section.items.map(function (c) { return { title: c.title, url: c.url, items: (c.items || []).concat(c.cases) }; });
    renderChapters(chapters);
    var head = el('div', { class: 'mx-side-class' });
    head.appendChild(link({ title: section.title, url: section.url }, 'mx-side-sectionname'));
    tree.insertBefore(head, tree.firstChild);
    document.getElementById('mx-side-filter').placeholder = 'Filter ' + section.title;
    var ch = chapters.find(holds);
    var trail = [{ title: sec[0], url: sec[1] }, { title: section.title, url: section.url }];
    if (ch && strip(ch.url) !== here) { trail.push({ title: ch.title, url: ch.url }); }
    crumbs(trail);
    if (ch && strip(ch.url) === here) { listChapter(ch); } else if (ch) { nextPrev(ch.items); }
  }

  function renderSectionTree(sections) {
    var saveCrumbs = crumbs, saveList = listChapter, saveNP = nextPrev;
    crumbs = function () {}; listChapter = function () {}; nextPrev = function () {};
    renderSection(sections, [null, null]);
    crumbs = saveCrumbs; listChapter = saveList; nextPrev = saveNP;
  }

  // the pages of a chapter, on the chapter's own page
  function listChapter(ch) {
    var body = article.querySelector('.post-content') || article;
    var cite = body.querySelector('.mtex-attribution');
    var add = function (list, cls, heading) {
      if (!list.length) { return; }
      if (heading) { body.insertBefore(el('h2', { class: 'mx-chapter-head' }, heading), cite || null); }
      var box = el('ol', { class: cls });
      list.forEach(function (p) {
        var li = el('li');
        li.appendChild(el('a', { href: p.url }, p.title));
        box.appendChild(li);
      });
      body.insertBefore(box, cite || null);
    };
    add(ch.items.filter(function (p) { return !p.isCase; }), 'mx-chapter-list', null);
    add(ch.items.filter(function (p) { return p.isCase; }), 'mx-chapter-list mx-chapter-cases', 'Case studies');
  }

  function filter(q) {
    q = q.trim().toLowerCase();
    tree.querySelectorAll('li').forEach(function (li) {
      li.hidden = q && li.textContent.toLowerCase().indexOf(q) < 0;
    });
    tree.querySelectorAll('details').forEach(function (d) {
      var any = d.querySelectorAll('li:not([hidden])').length > 0;
      d.hidden = q && !any;
      if (q && any) { d.open = true; }
    });
  }

  /* -------------------------------------------------- breadcrumbs, next/prev */

  function crumbs(parts) {
    var nav = el('nav', { class: 'mx-crumbs', 'aria-label': 'Breadcrumb' });
    parts.forEach(function (p, i) {
      if (i) { nav.appendChild(document.createTextNode(' › ')); }
      nav.appendChild(p.url ? el('a', { href: p.url }, p.title) : el('span', null, p.title));
    });
    article.insertBefore(nav, article.firstChild);
  }

  function nextPrev(list) {
    var i = list.findIndex(function (x) { return strip(x.url) === here; });
    if (i < 0) { return; }
    var box = el('nav', { class: 'mx-nextprev', 'aria-label': 'Previous and next page' });
    [[i - 1, 'Previous'], [i + 1, 'Next']].forEach(function (p) {
      var x = list[p[0]];
      if (!x) { box.appendChild(el('span')); return; }
      var a = el('a', { href: x.url });
      a.appendChild(el('small', null, p[1]));
      a.appendChild(el('span', null, x.title));
      box.appendChild(a);
    });
    var cite = article.querySelector('.mtex-attribution');
    (cite ? cite.parentNode : article).insertBefore(box, cite || null);
  }

  var SECTION = {
    documentation_sidebar: ['Documentation', 'docs.html'],
    function_reference_sidebar: ['Documentation', 'docs.html'],
    examples_sidebar: ['Examples', 'examples.html'],
    workshops_sidebar: ['Workshops', null]
  };

  // the other tab of the documentation sidebar: the whole tree, collapsed
  function showTab(name) {
    side.querySelectorAll('.mx-side-tabs button').forEach(function (b) {
      b.setAttribute('aria-selected', String(b.getAttribute('data-tab') === name));
    });
    var filterBox = document.getElementById('mx-side-filter');
    filterBox.value = '';
    if (name === side.getAttribute('data-sidebar')) { tree.textContent = ''; return build(true); }
    fetch('sidebars/' + name + '.html').then(function (r) { return r.text(); }).then(function (html) {
      var parts = parse(html);
      if (name === 'function_reference_sidebar') {
        renderChapters(parts);
        filterBox.placeholder = 'Filter the classes';
      } else {
        renderChapters(parts.map(function (s) { return { title: s.title, url: s.url, items: s.items.map(function (c) { return { title: c.title, url: c.url }; }) }; }));
        filterBox.placeholder = 'Filter the chapters';
      }
    });
  }

  function buildSidebar() {
    if (!side || !tree) { return; }
    build(false);
    side.querySelectorAll('.mx-side-tabs button').forEach(function (b) {
      b.addEventListener('click', function () { showTab(b.getAttribute('data-tab')); });
    });
    wire();
  }

  // the tree of the page's own sidebar; the first time also the breadcrumbs
  // and the previous and next page
  function build(again) {
    var name = side.getAttribute('data-sidebar');
    var crumbsOnce = again ? function () {} : crumbs;
    var nextPrevOnce = again ? function () {} : nextPrev;
    return fetch(side.getAttribute('data-sidebar-url')).then(function (r) { return r.text(); }).then(function (html) {
      var chapters = parse(html);
      var sec = SECTION[name] || [null, null];
      if (name === 'function_reference_sidebar') {
        var f = renderClass(chapters);
        if (f) {
          crumbsOnce([{ title: sec[0], url: sec[1] }, { title: 'Function reference', url: 'function_reference.html' }, { title: f.section.title, url: f.section.url }, { title: f.cls.title, url: f.cls.url }]);
          nextPrevOnce(f.cls.items);
        }
      } else if (name === 'documentation_sidebar') {
        if (again) { renderSectionTree(chapters); } else { renderSection(chapters, sec); }
      } else {
        renderChapters(chapters);
        var ch = chapters.find(function (c) { return strip(c.url) === here || c.items.some(function (i) { return strip(i.url) === here; }); });
        if (ch && sec[0]) {
          crumbs([{ title: sec[0], url: sec[1] }, { title: ch.title, url: ch.url }]);
          nextPrev(ch.items);
        }
      }
      var cur = tree.querySelector('[aria-current="page"]');
      if (cur && cur.scrollIntoView && window.innerWidth > 820) {
        var top = cur.getBoundingClientRect().top - tree.getBoundingClientRect().top;
        if (top > side.clientHeight - 80) { side.scrollTop = top - 120; }
      }
    }).catch(function () {
      tree.appendChild(el('p', { class: 'mx-side-none' }, 'The contents could not be loaded.'));
    });
  }

  function wire() {
    document.getElementById('mx-side-filter').addEventListener('input', function (e) { filter(e.target.value); });
    var toggle = side.querySelector('.mx-side-toggle');
    toggle.addEventListener('click', function () {
      var open = !side.classList.contains('mx-open');
      side.classList.toggle('mx-open', open);
      toggle.setAttribute('aria-expanded', String(open));
    });
  }

  buildRail();
  buildSidebar();
})();
