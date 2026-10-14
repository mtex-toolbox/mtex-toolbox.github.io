---
title: 'grainBoundary.cat'
sidebar: function_reference_sidebar
permalink: grainBoundary.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the segments of several parts of one boundary, MATLAB's [gB1, gB2]: the parts share the
vertices of the boundary they were taken from; a segment in more than one part is kept
once, and the chains are walked again

## Syntax

<div class="mx-form" markdown="1">

```python
gB = grainBoundary.cat(gB1, gB2)
gB = cat(gB['Forsterite', 'Forsterite'], gB['Forsterite', 'Enstatite'])
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
grainBoundary.cat(*parts)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L357">source</a></font>
{% endraw %}
