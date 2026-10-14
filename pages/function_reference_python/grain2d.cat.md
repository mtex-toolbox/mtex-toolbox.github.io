---
title: 'grain2d.cat'
sidebar: function_reference_sidebar
permalink: grain2d.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.cat.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the grains of several parts of one segmentation, MATLAB's [grains1, grains2]: the parts
share its phases, frame and boundary vertices; a grain in more than one part is kept once,
the boundaries are joined as grainBoundary.cat joins them

## Syntax

<div class="mx-form" markdown="1">

```python
grains = grain2d.cat(grains['Forsterite'], grains['Enstatite'])
grains = cat(grains[:100], grains[500:])
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
grain2d.cat(*parts)
```

</div>

MATLAB's [grain2d.cat](grain2d.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L448">source</a></font>
{% endraw %}
