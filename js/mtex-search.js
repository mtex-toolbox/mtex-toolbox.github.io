/*
 * MTEX site search.
 *
 * Replaces Simple-Jekyll-Search, which ranked nothing (it returned whatever
 * order site.pages happened to be in), silently ignored its own `fuzzy` and
 * `limit` options, threw on queries containing regex metacharacters such as
 * "plot(", and injected results with innerHTML.
 *
 * The corpus is ~2740 records averaging ~84 characters, so a linear scan with
 * an explicit score ladder is both faster than a library's index construction
 * and easier to reason about: typing "smooth" must put EBSD.smooth first, and
 * a ladder guarantees that where a statistical ranker only tends to.
 *
 * Index rows are [title, url, folderIndex, description] -- see search.json.
 */
(function (window, document) {
    'use strict';

    var INDEX_URL = '/search.json';

    var FOLDERS = ['function_reference', 'documentation', 'examples', 'workshops', 'other'];
    var FOLDER_LABEL = ['Function reference', 'Documentation', 'Examples', 'Workshops', 'Other'];
    // Display order for grouped results; tutorials before the 2421 function pages.
    var FOLDER_ORDER = [1, 2, 0, 3, 4];
    // Nudge so a tutorial outranks a bare function page on an otherwise equal score.
    var FOLDER_PRIOR = [0, 30, 30, 0, -10];

    var TITLE_EXACT = 1000, METHOD_EXACT = 500, TITLE_PREFIX = 400, TITLE_WORD = 250, TITLE_SUB = 100;
    var URL_WORD = 120, URL_SUB = 60;
    var DESC_WORD = 40, DESC_SUB = 15;
    var Q_IS_TITLE = 1500, Q_IN_TITLE = 300, ALL_TERMS_IN_TITLE = 200;
    var PLURAL_WEIGHT = 0.8;

    var records = null;
    var loading = null;

    /* ---------------------------------------------------------------- index */

    function load() {
        if (loading) { return loading; }
        loading = fetch(INDEX_URL, { credentials: 'same-origin' })
            .then(function (r) {
                if (!r.ok) { throw new Error('search index ' + r.status); }
                return r.json();
            })
            .then(function (rows) {
                records = rows.map(function (row) {
                    var title = row[0] || '';
                    var url = row[1] || '';
                    var desc = row[3] || '';
                    return {
                        t: title,
                        u: url,
                        f: typeof row[2] === 'number' ? row[2] : 4,
                        d: desc,
                        tl: title.toLowerCase(),
                        // "EBSD.smooth" -> "smooth". Method names never sit at
                        // position 0, so without this a bare function called
                        // smoothn would outrank EBSD.smooth for "smooth".
                        ml: (title.indexOf('.') >= 0
                                ? title.slice(title.lastIndexOf('.') + 1)
                                : title).toLowerCase(),
                        // url stem, shown only when it adds something the title doesn't
                        stem: url.replace(/^\//, '').replace(/\.html$/, ''),
                        // "/EBSD.smooth.html" -> "ebsd smooth", so "smooth ebsd" matches
                        nl: url.replace(/^\//, '').replace(/\.html$/, '').replace(/[._\-\/]+/g, ' ').toLowerCase(),
                        dl: desc.toLowerCase()
                    };
                });
                return records;
            });
        return loading;
    }

    /* --------------------------------------------------------------- scoring */

    // True when `needle` starts a word in `hay`. Uses indexOf rather than a
    // RegExp so query text is never compiled as a pattern.
    function atWordStart(hay, needle) {
        var from = 0, i;
        while ((i = hay.indexOf(needle, from)) >= 0) {
            if (i === 0 || !/[a-z0-9]/.test(hay.charAt(i - 1))) { return true; }
            from = i + 1;
        }
        return false;
    }

    // Cheap singulariser: misorientations -> misorientation, boundaries ->
    // boundary. Applied only when a term would otherwise score zero.
    function depluralize(term) {
        if (term.length > 4 && /ies$/.test(term)) { return term.slice(0, -3) + 'y'; }
        if (term.length > 4 && /(ches|shes|sses|xes|zes)$/.test(term)) { return term.slice(0, -2); }
        if (term.length > 3 && /s$/.test(term) && !/ss$/.test(term)) { return term.slice(0, -1); }
        return null;
    }

    function scoreTerm(rec, term) {
        var best = 0, n;

        if (rec.tl === term) { best = TITLE_EXACT; }
        else if (rec.ml === term) { best = METHOD_EXACT; }
        else if (rec.tl.indexOf(term) === 0) { best = TITLE_PREFIX; }
        else if (atWordStart(rec.tl, term)) { best = TITLE_WORD; }
        else if (rec.tl.indexOf(term) >= 0) { best = TITLE_SUB; }

        n = atWordStart(rec.nl, term) ? URL_WORD : (rec.nl.indexOf(term) >= 0 ? URL_SUB : 0);
        if (n > best) { best = n; }

        n = atWordStart(rec.dl, term) ? DESC_WORD : (rec.dl.indexOf(term) >= 0 ? DESC_SUB : 0);
        if (n > best) { best = n; }

        return best;
    }

    // allowPartial relaxes the AND requirement; see search().
    function scoreRecord(rec, terms, query, allowPartial) {
        var total = 0, matched = 0, allInTitle = true, i, s, singular;

        for (i = 0; i < terms.length; i++) {
            s = scoreTerm(rec, terms[i]);
            if (!s) {
                singular = depluralize(terms[i]);
                if (singular) { s = scoreTerm(rec, singular) * PLURAL_WEIGHT; }
            }
            if (s) { total += s; matched++; }
            else if (!allowPartial) { return 0; }   // every term must hit (AND)
            if (rec.tl.indexOf(terms[i]) < 0) { allInTitle = false; }
        }
        if (!matched) { return 0; }
        // rank fuller matches above thinner ones when the AND pass found nothing
        if (allowPartial) { total = total * matched / terms.length; }

        if (rec.tl === query) { total += Q_IS_TITLE; }
        else if (rec.tl.indexOf(query) >= 0) { total += Q_IN_TITLE; }
        if (allInTitle) { total += ALL_TERMS_IN_TITLE; }

        total += FOLDER_PRIOR[rec.f] || 0;
        total -= rec.t.length * 0.5;     // prefer the more specific of two matches
        return total;
    }

    function search(query, limit) {
        query = (query || '').trim().toLowerCase();
        if (!query || !records) { return []; }

        var terms = query.split(/\s+/).filter(Boolean);

        function collect(allowPartial) {
            var res = [], i, s;
            for (i = 0; i < records.length; i++) {
                s = scoreRecord(records[i], terms, query, allowPartial);
                if (s > 0) { res.push({ rec: records[i], score: s }); }
            }
            return res;
        }

        // Requiring every term is what makes "smooth EBSD" precise, but it also
        // makes a near-miss like "import ang file" return nothing at all. Fall
        // back to partial matches rather than showing an empty page.
        var out = collect(false);
        if (!out.length && terms.length > 1) { out = collect(true); }

        out.sort(function (a, b) {
            return (b.score - a.score) || a.rec.t.localeCompare(b.rec.t);
        });
        return limit > 0 ? out.slice(0, limit) : out;
    }

    /* -------------------------------------------------------------- rendering */

    // Text with <mark> around matches, built from text nodes -- never innerHTML.
    function highlight(text, terms) {
        var frag = document.createDocumentFragment();
        var lower = text.toLowerCase();
        var ranges = [], merged = [], pos = 0;

        terms.forEach(function (t) {
            var from = 0, i;
            while (t && (i = lower.indexOf(t, from)) >= 0) {
                ranges.push([i, i + t.length]);
                from = i + t.length;
            }
        });
        if (!ranges.length) {
            frag.appendChild(document.createTextNode(text));
            return frag;
        }
        ranges.sort(function (a, b) { return a[0] - b[0]; });
        ranges.forEach(function (r) {
            var last = merged[merged.length - 1];
            if (last && r[0] <= last[1]) { last[1] = Math.max(last[1], r[1]); }
            else { merged.push(r.slice()); }
        });
        merged.forEach(function (r) {
            var m;
            if (r[0] > pos) { frag.appendChild(document.createTextNode(text.slice(pos, r[0]))); }
            m = document.createElement('mark');
            m.appendChild(document.createTextNode(text.slice(r[0], r[1])));
            frag.appendChild(m);
            pos = r[1];
        });
        if (pos < text.length) { frag.appendChild(document.createTextNode(text.slice(pos))); }
        return frag;
    }

    // showBadge is false for grouped results, where the section heading already
    // says "Function reference" and repeating it on every row is just noise.
    function renderResult(hit, terms, id, showBadge) {
        var rec = hit.rec;
        var li = document.createElement('li');
        var a = document.createElement('a');
        var title = document.createElement('span');
        var badge;

        li.className = 'ms-result';
        li.setAttribute('role', 'option');
        if (id) { li.id = id; }

        a.href = rec.u;

        // Title, stem and badge share a nowrap flex line of their own: with
        // flex-wrap the badge would drop to a second line before the title
        // ever shrank, leaving rows at uneven heights.
        var head = document.createElement('span');
        head.className = 'ms-head';
        a.appendChild(head);

        title.className = 'ms-title';
        title.appendChild(highlight(rec.t, terms));
        head.appendChild(title);

        // Eight different pages are titled "Statistics". Where the title does
        // not already say which page this is, the url stem does.
        if (rec.stem.toLowerCase() !== rec.t.toLowerCase()) {
            var stem = document.createElement('span');
            stem.className = 'ms-path';
            stem.appendChild(document.createTextNode(rec.stem));
            head.appendChild(stem);
        }

        if (showBadge) {
            badge = document.createElement('span');
            badge.className = 'ms-badge ms-badge-' + FOLDERS[rec.f];
            badge.appendChild(document.createTextNode(FOLDER_LABEL[rec.f]));
            head.appendChild(badge);
        }

        if (rec.d) {
            var d = document.createElement('span');
            d.className = 'ms-desc';
            d.appendChild(highlight(rec.d, terms));
            a.appendChild(d);
        }
        li.appendChild(a);
        return li;
    }

    /* ------------------------------------------------------------------- UI */

    function attach(input, opts) {
        opts = opts || {};
        var container = opts.container;
        var countEl = opts.countEl || null;
        var limit = opts.limit || 0;
        var grouped = !!opts.group;
        var dropdown = opts.mode === 'dropdown';
        var noResults = opts.noResultsText || 'No results found.';
        var onQuery = opts.onQuery || null;
        var timer = null, active = -1, items = [], lastQuery = '';

        function close() {
            container.innerHTML = '';
            items = [];
            active = -1;
            if (dropdown) { container.style.display = 'none'; }
            input.setAttribute('aria-expanded', 'false');
            input.removeAttribute('aria-activedescendant');
        }

        function setActive(i) {
            if (items[active]) { items[active].classList.remove('ms-active'); }
            active = i;
            if (items[active]) {
                items[active].classList.add('ms-active');
                input.setAttribute('aria-activedescendant', items[active].id);
                if (items[active].scrollIntoView) {
                    items[active].scrollIntoView({ block: 'nearest' });
                }
            }
        }

        function render(query) {
            var hits = search(query, limit);
            var terms = query.trim().toLowerCase().split(/\s+/).filter(Boolean);
            var frag = document.createDocumentFragment();
            var n = 0;

            container.innerHTML = '';
            items = [];
            active = -1;

            if (countEl) {
                countEl.textContent = query
                    ? hits.length + (hits.length === 1 ? ' result' : ' results')
                    : '';
            }

            if (!query) { close(); return; }

            if (!hits.length) {
                var empty = document.createElement('li');
                empty.className = 'ms-empty';
                empty.textContent = noResults;
                frag.appendChild(empty);
            } else if (grouped) {
                // Order sections by their best hit, not by a fixed sequence:
                // otherwise searching "smooth EBSD" buries EBSD.smooth under a
                // weaker tutorial just because Documentation sorts first.
                var present = FOLDER_ORDER.filter(function (f) {
                    return hits.some(function (h) { return h.rec.f === f; });
                });
                present.sort(function (a, b) {
                    var ba = 0, bb = 0;
                    hits.forEach(function (h) {
                        if (h.rec.f === a && h.score > ba) { ba = h.score; }
                        if (h.rec.f === b && h.score > bb) { bb = h.score; }
                    });
                    return (bb - ba) || (FOLDER_ORDER.indexOf(a) - FOLDER_ORDER.indexOf(b));
                });
                present.forEach(function (f) {
                    var inFolder = hits.filter(function (h) { return h.rec.f === f; });
                    var head = document.createElement('li');
                    head.className = 'ms-group';
                    head.textContent = FOLDER_LABEL[f] + ' (' + inFolder.length + ')';
                    frag.appendChild(head);
                    inFolder.forEach(function (h) {
                        var li = renderResult(h, terms, 'ms-r' + (n++), false);
                        items.push(li);
                        frag.appendChild(li);
                    });
                });
            } else {
                hits.forEach(function (h) {
                    var li = renderResult(h, terms, 'ms-r' + (n++), true);
                    items.push(li);
                    frag.appendChild(li);
                });
            }

            if (dropdown && hits.length === limit) {
                var more = document.createElement('li');
                var link = document.createElement('a');
                more.className = 'ms-more';
                link.href = 'search.html?q=' + encodeURIComponent(query);
                link.textContent = 'See all results';
                more.appendChild(link);
                frag.appendChild(more);
            }

            container.appendChild(frag);
            if (dropdown) { container.style.display = 'block'; }
            input.setAttribute('aria-expanded', 'true');
        }

        function run() {
            var query = input.value;
            if (query === lastQuery) { return; }
            lastQuery = query;
            load().then(function () { render(query); }).catch(function () { close(); });
            if (onQuery) { onQuery(query); }
        }

        input.setAttribute('autocomplete', 'off');
        input.setAttribute('role', 'combobox');
        input.setAttribute('aria-expanded', 'false');

        input.addEventListener('focus', load);
        input.addEventListener('input', function () {
            window.clearTimeout(timer);
            timer = window.setTimeout(run, 150);
        });

        input.addEventListener('keydown', function (e) {
            if (e.key === 'ArrowDown' && items.length) {
                e.preventDefault();
                setActive((active + 1) % items.length);
            } else if (e.key === 'ArrowUp' && items.length) {
                e.preventDefault();
                setActive(active <= 0 ? items.length - 1 : active - 1);
            } else if (e.key === 'Enter') {
                if (items[active]) {
                    e.preventDefault();
                    items[active].querySelector('a').click();
                }
                // otherwise fall through: the form submits to search.html?q=...
            } else if (e.key === 'Escape') {
                close();
                input.blur();
            }
        });

        if (dropdown) {
            document.addEventListener('click', function (e) {
                if (!container.contains(e.target) && e.target !== input) { close(); }
            });
        }

        return { render: render, run: run, close: close };
    }

    window.MtexSearch = {
        load: load,
        search: search,
        attach: attach,
        renderResult: renderResult,
        FOLDERS: FOLDERS,
        FOLDER_LABEL: FOLDER_LABEL
    };
}(window, document));
