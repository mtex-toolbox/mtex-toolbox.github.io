---
title: 'fillByGrainId'
sidebar: function_reference_sidebar
permalink: fillByGrainId_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
replace map measurements by the mean orientations assigned to their grain ids.

## Syntax

<div class="mx-form" markdown="1">

```python
filled = fillByGrainId(ebsd, grains)
```

</div>

## Description

For an MTEX object, fillByGrainId(x, ...) calls x.fillByGrainId(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
fillByGrainId(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.fillByGrainId_py.html) | the map with every pixel of a grain given the mean orientation of that grain, which is the map the grains describe rather than the one they were built from |
| [EBSD3](EBSD3.fillByGrainId_py.html) | the map with every pixel of a grain given the mean orientation of that grain, which is the map the grains describe rather than the one they were built from |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
