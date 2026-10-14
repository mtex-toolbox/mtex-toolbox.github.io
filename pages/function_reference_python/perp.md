---
title: 'perp'
sidebar: function_reference_sidebar
permalink: perp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
fit an axis perpendicular to a collection of directions.

## Syntax

<div class="mx-form" markdown="1">

```python
normal = perp(v)
```

</div>

## Description

For an MTEX object, perp(x, ...) calls x.perp(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
perp(x, *args, **kwargs)
```

</div>

## Methods it calls

| [vector3d](vector3d.perp_py.html) | the axis best orthogonal to a list of directions, the smallest principal axis |

## Used on

[EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
