---
title: 'orthProj'
sidebar: function_reference_sidebar
permalink: orthProj_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
project vectors onto the plane perpendicular to a given normal.

## Syntax

<div class="mx-form" markdown="1">

```python
inPlane = orthProj(v, normal)
```

</div>

## Description

For an MTEX object, orthProj(x, ...) calls x.orthProj(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
orthProj(x, *args, **kwargs)
```

</div>

## Methods it calls

| [vector3d](vector3d.orthProj_py.html) | project each vector onto the plane perpendicular to a normal |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
