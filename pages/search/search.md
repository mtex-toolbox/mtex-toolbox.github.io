---
title: Search
search: exclude
hide_sidebar: true
permalink: search.html
folder: search
toc: false
---

<!--start search-->
<input type="text" id="_search-input" placeholder="{{site.data.strings.search_placeholder_text}}">
<ul id="_results-container"></ul>
<script src="{{ "js/jekyll-search.js"}}" type="text/javascript"></script>
<script type="text/javascript">
		SimpleJekyllSearch.init({
			searchInput: document.getElementById('_search-input'),
			resultsContainer: document.getElementById('_results-container'),
			dataSource: '{{ "search.json" }}',
			searchResultTemplate: '<li><a href="{url}" title="{title}">{title}</a></li>',
			noResultsText: '{{site.data.strings.search_no_results_text}}',
			limit: 30,
			fuzzy: true
})
</script>
<!--end search-->
