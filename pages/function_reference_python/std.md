---
title: 'std'
sidebar: function_reference_sidebar
permalink: std_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
measure the angular spread of rotations about their mean.

## Syntax

<div class="mx-form" markdown="1">

```python
spread = std(ori)
```

</div>

## Description

For an MTEX object, std(x, ...) calls x.std(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.std.

## Signature

<div class="mx-form" markdown="1">

```python
std(x, *args, **kwargs)
```

</div>

## Methods it calls

| [quaternion](quaternion.std_py.html) | the mean angular deviation of a list of rotations from their mean |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [MartensiteVariants](MartensiteVariants_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
