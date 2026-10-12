/* The dialogs of the 2026 pages. A link or button with data-dialog-open="<id>"
   opens the dialog of that id instead of following its href, an element with
   data-dialog-close or a click beside the dialog closes it, and a dialog with
   data-hash="name" opens when the page is called as <page>#name. */
(function () {
  'use strict';
  if (!window.HTMLDialogElement) return;
  document.querySelectorAll('[data-dialog-open]').forEach(function (a) {
    var dialog = document.getElementById(a.getAttribute('data-dialog-open'));
    if (!dialog) return;
    a.addEventListener('click', function (ev) { ev.preventDefault(); dialog.showModal(); });
  });
  document.querySelectorAll('dialog.mx-dialog').forEach(function (dialog) {
    dialog.addEventListener('click', function (ev) {
      if (ev.target === dialog || ev.target.closest('[data-dialog-close]')) dialog.close();
    });
    if (dialog.getAttribute('data-hash') && location.hash === '#' + dialog.getAttribute('data-hash')) dialog.showModal();
  });
})();
