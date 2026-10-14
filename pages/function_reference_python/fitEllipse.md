---
title: 'fitEllipse'
sidebar: function_reference_sidebar
permalink: fitEllipse_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
fit an ellipse to each grain outline using its second area moments.

## Syntax

<div class="mx-form" markdown="1">

```python
center, long, short = fitEllipse(grains)
```

</div>

## Description

For an MTEX object, fitEllipse(x, ...) calls x.fitEllipse(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
fitEllipse(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.fitEllipse_py.html) | describe each outline by the ellipse with the same central second area moments |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
