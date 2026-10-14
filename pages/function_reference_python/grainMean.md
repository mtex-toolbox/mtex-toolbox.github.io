---
title: 'grainMean'
sidebar: function_reference_sidebar
permalink: grainMean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
average a map property separately within each grain.

## Syntax

<div class="mx-form" markdown="1">

```python
values = grainMean(ebsd, propertyValues)
```

</div>

## Description

For an MTEX object, grainMean(x, ...) calls x.grainMean(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
grainMean(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.grainMean_py.html) | the average of a property over each grain |

## Used on

[EBSDGROD](EBSDGROD_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [GrainSpatialPlots](GrainSpatialPlots_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
