---
title: 'refineBoundary'
sidebar: function_reference_sidebar
permalink: refineBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
subdivide boundary segments or triangular faces.

## Syntax

<div class="mx-form" markdown="1">

```python
fine = refineBoundary(grains)
```

</div>

## Description

For an MTEX object, refineBoundary(x, ...) calls x.refineBoundary(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
refineBoundary(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.refineBoundary_py.html) | the grains with their boundary and inner boundary refined, every segment split into pieces of about length delta |
| [grain3d](grain3d.refineBoundary_py.html) | the grains with their triangulated boundary refined, every triangle split into four at the midpoints of its edges, n times |

## Used on

[Grains3DSmoothing](Grains3DSmoothing_py.html), [GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
