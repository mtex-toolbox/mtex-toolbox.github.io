---
title: 'mergeRuns'
sidebar: function_reference_sidebar
permalink: mergeRuns_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
every surviving head swallows the run of segments before it, so the boundary stays
connected and keeps its length up to the straightening of the dissolved corners. The per
segment data is inherited from the last segment of each run; a segment that swallowed a
run runs between no one pair of pixels any more and says so

## Syntax

```python
mergeRuns(gB, keep)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L107">source</a></font>
{% endraw %}
