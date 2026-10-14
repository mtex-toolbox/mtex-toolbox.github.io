---
title: 'KAM'
sidebar: function_reference_sidebar
permalink: KAM_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
measure the mean misorientation angle from each map measurement to its neighbours.

## Syntax

<div class="mx-form" markdown="1">

```python
omega = KAM(ebsd)
```

</div>

## Description

For an MTEX object, KAM(x, ...) calls x.KAM(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
KAM(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.KAM_py.html) | the kernel average misorientation: the mean misorientation angle of every pixel to its neighbours |
| [EBSD3](EBSD3.KAM_py.html) | the kernel average misorientation of a volume: the mean misorientation angle of every voxel to its neighbours |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
