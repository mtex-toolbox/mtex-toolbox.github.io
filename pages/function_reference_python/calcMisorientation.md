---
title: 'calcMisorientation'
sidebar: function_reference_sidebar
permalink: calcMisorientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
sample uncorrelated misorientations from separated pairs of map measurements.

## Syntax

<div class="mx-form" markdown="1">

```python
mori = calcMisorientation(ebsd)
```

</div>

## Description

For an MTEX object, calcMisorientation(x, ...) calls x.calcMisorientation(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
calcMisorientation(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.calcMisorientation_py.html) | uncorrelated misorientations: those of random pairs of measurements far enough apart that they say nothing about one another |

## Used on

[MisorientationDistributionFunction](MisorientationDistributionFunction_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
