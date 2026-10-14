---
title: 'huberFilter.smooth'
sidebar: function_reference_sidebar
permalink: huberFilter.smooth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [huberFilter](huberFilter_index_py.html).

the minimiser of |V - V0|^2 plus alpha times the Huber penalty of the curvature L V, by
reweighting the sparse system until nothing moves, the fixed vertices kept

## Syntax

<div class="mx-form" markdown="1">

```python
huberFilter.smooth(self, V, net, h)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing.py#L276">source</a></font>
{% endraw %}
