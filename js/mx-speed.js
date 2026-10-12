/* The speed chart of _includes/speed-chart.html: a log-log scatter of the
   operation times in _data/version_speeds.json, with a legend that switches
   versions on and off, a tooltip on the nearest point, and the two tables of
   the speed page. */
(function () {
  'use strict';
  var root = document.getElementById('mx-speed');
  var source = document.getElementById('mx-speed-data');
  if (!root || !source) return;
  var data = JSON.parse(source.textContent);
  var times = data.times, base = data.base, ops = Object.keys(times);
  var names = { pymtex: 'MTEX for Python' };
  var colors = { 'pymtex': '#d23b3b', '7.2': '#8a5cc7', '7.1.0': '#2f74c0', '7.0.0': '#2c9f5a', '5.11.2': '#8c564b' };
  // drawn in this order, so that the Python points lie on top; the legend lists them first
  var series = data.versions.filter(function (v) { return v !== base; });
  var shown = {};
  series.forEach(function (v) { shown[v] = true; });
  function label(v) { return names[v] || 'MTEX ' + v; }
  function format(x) { return x >= 1000 ? (x / 1000).toPrecision(3) + ' s' : x.toPrecision(3) + ' ms'; }
  function factor(a, b) { return a >= b ? (a / b).toFixed(1) + '× faster' : (b / a).toFixed(1) + '× slower'; }

  var svg = root.querySelector('svg'), tip = root.querySelector('.mx-speed-tip');
  var NS = 'http://www.w3.org/2000/svg';
  var W = 640, H = 560, L = 72, R = 34, T = 14, B = 54;
  // log10 of milliseconds: 0.1 ms to 1000 s
  var lo = -1, hi = 6, ticks = ['0.1 ms', '1 ms', '10 ms', '0.1 s', '1 s', '10 s', '100 s', '1000 s'];
  function X(e) { return L + (e - lo) / (hi - lo) * (W - L - R); }
  function Y(e) { return H - B - (e - lo) / (hi - lo) * (H - T - B); }
  function el(name, attrs, text) {
    var n = document.createElementNS(NS, name);
    for (var k in attrs) n.setAttribute(k, attrs[k]);
    if (text != null) n.textContent = text;
    svg.appendChild(n);
    return n;
  }

  // a label written along a line of slope one, ending shortly before the line's end at (ex, ey)
  var slope = -Math.atan2(H - T - B, W - L - R) * 180 / Math.PI;
  function along(ex, ey, text) {
    var x = X(ex - 0.12), y = Y(ey - 0.12);
    el('text', { x: x, y: y, dy: -5, 'text-anchor': 'end', 'class': 'mx-speed-note', transform: 'rotate(' + slope + ' ' + x + ' ' + y + ')' }, text);
  }

  var points = [], mark = null;
  function draw() {
    svg.replaceChildren();
    points = [];
    for (var e = lo; e <= hi; e++) {
      el('line', { x1: X(e), x2: X(e), y1: Y(lo), y2: Y(hi), 'class': 'mx-speed-grid' });
      el('line', { x1: X(lo), x2: X(hi), y1: Y(e), y2: Y(e), 'class': 'mx-speed-grid' });
      el('text', { x: X(e), y: H - B + 18, 'text-anchor': 'middle', 'class': 'mx-speed-tick' }, ticks[e - lo]);
      el('text', { x: L - 8, y: Y(e) + 4, 'text-anchor': 'end', 'class': 'mx-speed-tick' }, ticks[e - lo]);
    }
    el('line', { x1: X(lo), y1: Y(lo + 1), x2: X(hi - 1), y2: Y(hi), 'class': 'mx-speed-decade' });
    el('line', { x1: X(lo + 1), y1: Y(lo), x2: X(hi), y2: Y(hi - 1), 'class': 'mx-speed-decade' });
    el('line', { x1: X(lo), y1: Y(lo), x2: X(hi), y2: Y(hi), 'class': 'mx-speed-equal' });
    along(hi, hi, 'same speed');
    along(hi, hi - 1, '10× faster');
    along(hi - 1, hi, '10× slower');
    el('text', { x: (L + W - R) / 2, y: H - 10, 'text-anchor': 'middle', 'class': 'mx-speed-axis' }, 'time in MTEX ' + base);
    var my = (T + H - B) / 2;
    el('text', { x: 16, y: my, 'text-anchor': 'middle', 'class': 'mx-speed-axis', transform: 'rotate(-90 16 ' + my + ')' }, 'time in the other version');
    series.forEach(function (v) {
      if (!shown[v]) return;
      ops.forEach(function (o) {
        var a = times[o][base], b = times[o][v];
        if (a == null || b == null) return;
        var p = { x: X(Math.log10(a)), y: Y(Math.log10(b)), op: o, v: v, a: a, b: b };
        points.push(p);
        el('circle', { cx: p.x, cy: p.y, r: 4.5, fill: colors[v], 'class': 'mx-speed-point' });
      });
    });
    mark = el('circle', { r: 7.5, 'class': 'mx-speed-mark', visibility: 'hidden' });
  }

  // the point nearest the pointer, within reach, gets the ring and the tooltip
  function hover(ev) {
    var box = svg.getBoundingClientRect(), scale = W / box.width;
    var x = (ev.clientX - box.left) * scale, y = (ev.clientY - box.top) * scale;
    var best = null, reach = 18 * 18;
    points.forEach(function (p) {
      var d = (p.x - x) * (p.x - x) + (p.y - y) * (p.y - y);
      if (d < reach) { reach = d; best = p; }
    });
    if (!best) return leave();
    mark.setAttribute('cx', best.x);
    mark.setAttribute('cy', best.y);
    mark.setAttribute('stroke', colors[best.v]);
    mark.setAttribute('visibility', 'visible');
    tip.replaceChildren();
    var head = document.createElement('b'), line = document.createElement('span');
    head.textContent = best.op;
    line.textContent = label(best.v) + ': ' + format(best.b) + ', MTEX ' + base + ': ' + format(best.a) + ' (' + factor(best.a, best.b) + ')';
    tip.append(head, line);
    tip.hidden = false;
    var left = best.x / scale, top = best.y / scale;
    tip.style.left = Math.min(Math.max(left, tip.offsetWidth / 2 + 4), box.width - tip.offsetWidth / 2 - 4) + 'px';
    tip.style.top = (top > tip.offsetHeight + 24 ? top - tip.offsetHeight - 14 : top + 16) + 'px';
  }
  function leave() {
    tip.hidden = true;
    if (mark) mark.setAttribute('visibility', 'hidden');
  }
  svg.addEventListener('pointermove', hover);
  svg.addEventListener('pointerdown', hover);
  svg.addEventListener('pointerleave', leave);

  var legend = root.querySelector('.mx-speed-legend');
  series.slice().reverse().forEach(function (v) {
    var b = document.createElement('button'), dot = document.createElement('span');
    b.type = 'button';
    b.setAttribute('aria-pressed', 'true');
    dot.className = 'mx-speed-dot';
    dot.style.background = colors[v];
    b.append(dot, label(v));
    b.addEventListener('click', function () {
      shown[v] = !shown[v];
      b.setAttribute('aria-pressed', shown[v]);
      leave();
      draw();
    });
    legend.appendChild(b);
  });
  draw();

  // the ratio of a version's time to the base's, over the operations both ran
  var summary = document.querySelector('#mx-speed-summary tbody');
  if (summary) series.slice().reverse().forEach(function (v) {
    var r = ops.filter(function (o) { return times[o][base] != null && times[o][v] != null; })
      .map(function (o) { return times[o][base] / times[o][v]; }).sort(function (a, b) { return a - b; });
    var n = r.length, median = n % 2 ? r[(n - 1) / 2] : (r[n / 2 - 1] + r[n / 2]) / 2;
    var mean = Math.exp(r.reduce(function (s, x) { return s + Math.log(x); }, 0) / n);
    var cells = [n, median.toFixed(median < 10 ? 2 : 1) + '×', mean.toFixed(mean < 10 ? 2 : 1) + '×',
      r.filter(function (x) { return x > 1; }).length, r.filter(function (x) { return x > 2; }).length,
      r.filter(function (x) { return x < 0.5; }).length];
    var tr = document.createElement('tr'), th = document.createElement('th'), dot = document.createElement('span');
    dot.className = 'mx-speed-dot';
    dot.style.background = colors[v];
    th.scope = 'row';
    th.append(dot, label(v));
    tr.appendChild(th);
    cells.forEach(function (c) { var td = document.createElement('td'); td.textContent = c; tr.appendChild(td); });
    summary.appendChild(tr);
  });

  var table = document.getElementById('mx-speed-table');
  if (table) {
    var head = table.tHead.insertRow(), body = table.tBodies[0];
    ['operation'].concat(data.versions.map(label)).forEach(function (t) {
      var th = document.createElement('th');
      th.scope = 'col';
      th.textContent = t;
      head.appendChild(th);
    });
    ops.forEach(function (o) {
      var tr = body.insertRow();
      tr.insertCell().textContent = o;
      data.versions.forEach(function (v) {
        var x = times[o][v];
        tr.insertCell().textContent = x == null ? '–' : x >= 100 ? x.toFixed(0) : x >= 10 ? x.toFixed(1) : x >= 1 ? x.toFixed(2) : x.toPrecision(2);
      });
    });
    var filter = document.getElementById('mx-speed-filter');
    if (filter) filter.addEventListener('input', function () {
      var q = filter.value.trim().toLowerCase();
      Array.prototype.forEach.call(body.rows, function (tr) {
        tr.hidden = q !== '' && tr.cells[0].textContent.toLowerCase().indexOf(q) < 0;
      });
    });
  }
})();
