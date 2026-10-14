---
title: 'weightedBurgersVec'
sidebar: function_reference_sidebar
permalink: weightedBurgersVec_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
estimate net Burgers vector per unit area from an orientation map.

## Syntax

<div class="mx-form" markdown="1">

```python
b = weightedBurgersVec(ebsd)
```

</div>

## Description

For an MTEX object, weightedBurgersVec(x, ...) calls x.weightedBurgersVec(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
weightedBurgersVec(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.weightedBurgersVec_py.html) | the weighted Burgers vector: the net Burgers vector of the dislocations crossing the map per unit area, by the integral or the gradient method |
| [EBSD3](EBSD3.weightedBurgersVec_py.html) | the weighted Burgers vector: the net Burgers vector of the dislocations crossing the map per unit area, by the integral or the gradient method |

## Used on

[WBV](WBV_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
