---
title: Search
search: exclude
hide_sidebar: true
permalink: search.html
folder: search
toc: false
---

<!--start search-->
<input type="text" id="_search-input" placeholder="{{ site.data.strings.search_placeholder_text }}">
<ol id="onpage_results-container"></ol>

<script src="{{ 'js/jekyll-search.js' }}" type="text/javascript"></script>
<script type="text/javascript">
	SimpleJekyllSearch.init({
		searchInput: document.getElementById('_search-input'),
		resultsContainer: document.getElementById('onpage_results-container'),
		dataSource: '{{ "search.json" }}',
		searchResultTemplate: '<li><div class="entry-path">{url}</div><br><div class="entry-title"><a href="{url}">{title}</a></div><br><div class="entry-content">{content}</div><br><div class="entry-date">{date}</div></li>',
		noResultsText: '{{ site.data.strings.search_no_results_text }}',
		limit: 30,
		fuzzy: true
	})
</script>
<!--end search-->
