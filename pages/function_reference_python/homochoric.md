---
title: 'homochoric'
sidebar: function_reference_sidebar
permalink: homochoric_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
express rotations as equal-volume coordinates inside the homochoric ball.

## Syntax

<div class="mx-form" markdown="1">

```python
h = homochoric(rot)
```

</div>

## Description

For an MTEX object, homochoric(x, ...) calls x.homochoric(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
homochoric(x, *args, **kwargs)
```

</div>

## Methods it calls

| [quaternion](quaternion.homochoric_py.html) | express rotations as equal-volume coordinates in a ball |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
