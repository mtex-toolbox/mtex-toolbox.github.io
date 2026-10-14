---
title: 'aspectRatio'
sidebar: function_reference_sidebar
permalink: aspectRatio_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
measure the ratio of the longest to shortest fitted half axis of each grain.

## Syntax

<div class="mx-form" markdown="1">

```python
ratio = aspectRatio(grains)
```

</div>

## Description

For an MTEX object, aspectRatio(x, ...) calls x.aspectRatio(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
aspectRatio(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.aspectRatio_py.html) | the ratio of the two half axes, one for a circle |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
