/* Visible controls for horizontally overflowing navigation and hero tabs. */
(function () {
  'use strict';
  document.querySelectorAll('[data-scroll-target]').forEach(function (button) {
    var bar = document.getElementById(button.getAttribute('data-scroll-target'));
    if (!bar) return;
    function update() {
      var overflow = bar.scrollWidth > bar.clientWidth + 1;
      button.hidden = !overflow;
      bar.parentElement.classList.toggle('mx-overflow', overflow);
      var end = bar.scrollLeft >= bar.scrollWidth - bar.clientWidth - 2;
      button.textContent = end ? '‹' : '›';
      button.setAttribute('aria-label', end ? 'Back to the first links' : 'Show more links');
    }
    button.addEventListener('click', function () {
      var end = bar.scrollLeft >= bar.scrollWidth - bar.clientWidth - 2;
      bar.scrollLeft = end ? 0 : bar.scrollLeft + bar.clientWidth * 0.75;
      update();
    });
    bar.addEventListener('scroll', update, { passive: true });
    new ResizeObserver(update).observe(bar);
    update();
  });
})();
