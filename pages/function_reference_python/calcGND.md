---
title: 'calcGND'
sidebar: function_reference_sidebar
permalink: calcGND_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
estimate geometrically necessary dislocation content from orientation gradients.

## Syntax

<div class="mx-form" markdown="1">

```python
gnd, rho = calcGND(ebsd, dS)
```

</div>

## Description

For an MTEX object, calcGND(x, ...) calls x.calcGND(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
calcGND(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.calcGND_py.html) | the geometrically necessary dislocation content of every pixel after Pantleon (2008) |
| [EBSD3](EBSD3square.calcGND_py.html) | the geometrically necessary dislocation content of every pixel after Pantleon (2008) |

## Used on

[GND](GND_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
