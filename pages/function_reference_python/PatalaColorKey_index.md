---
title: 'The class PatalaColorKey'
sidebar: function_reference_sidebar
permalink: PatalaColorKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PatalaColorKey_index.html
status: Reference
---
{% raw %}
the misorientation key of Patala, Mason and Schuh for m-3m, m-3, mmm, 4/mmm and 6/mmm

## Syntax

<div class="mx-form" markdown="1">

```python
PatalaColorKey(cs), PatalaColorKey(cs1, cs2), PatalaColorKey(gB)
```

From a grain boundary.

</div>

<div class="mx-form" markdown="1">

```python
rgb = key.orientation2color(mori)
```

</div>

## Members

| [orientation2color](PatalaColorKey.orientation2color_py.html) | the colours of misorientations, (..., 3) RGB: the Rodrigues vectors in the fundamental zone with grain exchange, the a axis along x, looked up in the map of the Laue group |
| [PatalaColorKey](PatalaColorKey.PatalaColorKey_py.html) | the misorientation key of Patala, Mason and Schuh for m-3m, m-3, mmm, 4/mmm and 6/mmm |

## Used on

[BoundaryPlots](BoundaryPlots_py.html)

MATLAB's [PatalaColorKey_index](PatalaColorKey_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/patalakey.py#L170">source</a></font>
{% endraw %}
