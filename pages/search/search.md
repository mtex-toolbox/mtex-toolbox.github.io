---
title: Search
search: exclude
hide_sidebar: true
permalink: search.html
folder: search
toc: false
---

<div class="ms-page">
	<form class="ms-form ms-form-page" method="get" action="search.html" role="search">
		<input type="text" name="q" id="ms-page-input" class="ms-page-input"
		       placeholder="{{ site.data.strings.search_placeholder_text }}"
		       aria-label="Search MTEX documentation">
	</form>
	<p id="ms-page-count" class="ms-count"></p>
	<ol id="ms-page-results" class="ms-results" role="listbox" aria-label="Search results"></ol>
</div>

<script>
// js/mtex-search.js is loaded with `defer` from head.html, so it has run by
// DOMContentLoaded but not while this script is being parsed.
document.addEventListener('DOMContentLoaded', function () {
	var input = document.getElementById('ms-page-input');
	if (!input || !window.MtexSearch) { return; }

	var api = MtexSearch.attach(input, {
		container: document.getElementById('ms-page-results'),
		countEl: document.getElementById('ms-page-count'),
		mode: 'page',
		group: true,
		limit: 0,
		noResultsText: '{{ site.data.strings.search_no_results_text }}',
		onQuery: function (q) {
			// keep the URL shareable without adding a history entry per keystroke
			var url = q ? 'search.html?q=' + encodeURIComponent(q) : 'search.html';
			window.history.replaceState(null, '', url);
		}
	});

	// ?q= lets the nav box hand off to this page, and makes searches linkable
	var match = /[?&]q=([^&]*)/.exec(window.location.search);
	if (match) {
		input.value = decodeURIComponent(match[1].replace(/\+/g, ' '));
		api.run();
	}
	input.focus();
});
</script>
