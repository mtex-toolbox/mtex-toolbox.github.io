---
title: 'calcGROD'
sidebar: function_reference_sidebar
permalink: calcGROD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
compare every measurement with the reference orientation of its grain.

## Syntax

<div class="mx-form" markdown="1">

```python
mis2mean = calcGROD(ebsd, grains)
```

</div>

## Description

For an MTEX object, calcGROD(x, ...) calls x.calcGROD(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
calcGROD(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.calcGROD_py.html) | the grain reference orientation deviation, mis2mean: the misorientation of every pixel from the mean orientation of its grain, or from a given reference |

## Used on

[GrainOrientationParameters](GrainOrientationParameters_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
