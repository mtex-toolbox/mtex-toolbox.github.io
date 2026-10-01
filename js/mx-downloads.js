// download counts of the release table on the download page, from the GitHub API
//
// Only the .zip asset is counted: since 7.0 the mex binaries are assets of the
// release too, and every installation fetches them one by one, so the total of
// all assets would count each installation some twenty times. Without an answer
// from the API the column stays empty.
(function () {
  var cells = document.querySelectorAll('[data-dl-tag]');
  if (!cells.length || !window.fetch) return;
  fetch('https://api.github.com/repos/mtex-toolbox/mtex/releases?per_page=100')
    .then(function (r) { return r.ok ? r.json() : []; })
    .then(function (releases) {
      var count = {}, total = 0;
      releases.forEach(function (r) {
        var n = 0;
        r.assets.forEach(function (a) { if (/\.zip$/.test(a.name)) n += a.download_count; });
        count[r.tag_name] = n;
        total += n;
      });
      cells.forEach(function (td) {
        var n = count[td.getAttribute('data-dl-tag')];
        if (n !== undefined) td.textContent = n.toLocaleString('en-GB');
      });
      var sum = document.getElementById('mx-dl-total');
      if (sum && total) sum.textContent = ', downloaded ' + total.toLocaleString('en-GB') + ' times';
    })
    .catch(function () {});
})();
