---
title: 'pos2ind'
sidebar: function_reference_sidebar
permalink: pos2ind_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
convert physical image positions to pixel indices.

## Syntax

<div class="mx-form" markdown="1">

```python
indices = pos2ind(image, pos)
```

</div>

## Description

For an MTEX object, pos2ind(x, ...) calls x.pos2ind(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
pos2ind(x, *args, **kwargs)
```

</div>

## Methods it calls

| [mapImage](mapImage.pos2ind_py.html) | the pixel of the image covering each position |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
