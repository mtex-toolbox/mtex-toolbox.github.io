---
title: 'characteristicShape'
sidebar: function_reference_sidebar
permalink: characteristicShape_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: characteristicShape.html
status: Reference
---
{% raw %}
combine grain boundary segments into a characteristic particle shape.

## Syntax

<div class="mx-form" markdown="1">

```python
outline = characteristicShape(grains)
```

</div>

## Description

For an MTEX object, characteristicShape(x, ...) calls x.characteristicShape(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
characteristicShape(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grainBoundary](grainBoundary.characteristicShape_py.html) | the characteristic shape of a set of boundary segments |

## Used on

[EllipseBasedParameters](EllipseBasedParameters_py.html), [ProjectionBasedParameters](ProjectionBasedParameters_py.html)

MATLAB's [characteristicShape](characteristicShape.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
