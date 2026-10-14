---
title: 'Rodrigues'
sidebar: function_reference_sidebar
permalink: Rodrigues_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
express rotations as axes scaled by the tangent of half the rotation angle.

## Syntax

<div class="mx-form" markdown="1">

```python
r = Rodrigues(rot)
```

</div>

## Description

For an MTEX object, Rodrigues(x, ...) calls x.Rodrigues(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
Rodrigues(x, *args, **kwargs)
```

</div>

## Methods it calls

| [quaternion](quaternion.Rodrigues_py.html) | express each rotation as an axis scaled by tan(omega/2) |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
