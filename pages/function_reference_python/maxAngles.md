---
title: 'maxAngles'
sidebar: function_reference_sidebar
permalink: maxAngles_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the largest rotation angle inside the region about every axis of an (n, 3) array, zero
where the axis lies outside the sector the region is cut down to: the bound
dot(q, N_i) <= 0 at q = (cos(w/2), sin(w/2) v) reads tan(w/2) dot(v, a_i) <= tan(w_i/4)

## Syntax

<div class="mx-form" markdown="1">

```python
maxAngles(oR, V)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L118">source</a></font>
{% endraw %}
