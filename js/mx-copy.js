/* A copy button on every block of input code of an article; program output
 * takes none. Loaded by the layouts that hold an article (default, prose).
 */
(function () {
  'use strict';
  if (!navigator.clipboard) { return; }
  document.querySelectorAll('.mx-article .highlight > pre').forEach(function (pre) {
    if (pre.closest('.language-text') || pre.querySelector('code[data-lang="plaintext"]')) { return; }
    var button = document.createElement('button');
    button.className = 'mx-copy';
    button.type = 'button';
    button.textContent = 'Copy';
    button.addEventListener('click', function () {
      navigator.clipboard.writeText(pre.textContent.replace(/\n$/, '')).then(function () {
        button.textContent = 'Copied';
        setTimeout(function () { button.textContent = 'Copy'; }, 1500);
      });
    });
    pre.parentNode.classList.add('mx-copy-host');
    pre.parentNode.appendChild(button);
  });
})();
