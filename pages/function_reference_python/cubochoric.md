---
title: 'cubochoric'
sidebar: function_reference_sidebar
permalink: cubochoric_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
express rotations in equal-volume cubochoric coordinates.

## Syntax

<div class="mx-form" markdown="1">

```python
c = cubochoric(rot)
```

</div>

## Description

For an MTEX object, cubochoric(x, ...) calls x.cubochoric(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
cubochoric(x, *args, **kwargs)
```

</div>

## Methods it calls

| [quaternion](quaternion.cubochoric_py.html) | express rotations as equal-volume coordinates in a cube |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
