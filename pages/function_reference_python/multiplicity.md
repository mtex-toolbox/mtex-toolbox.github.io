---
title: 'multiplicity'
sidebar: function_reference_sidebar
permalink: multiplicity_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
count distinct symmetry-equivalent directions or fibres.

## Syntax

<div class="mx-form" markdown="1">

```python
n = multiplicity(h)
```

</div>

## Description

For an MTEX object, multiplicity(x, ...) calls x.multiplicity(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
multiplicity(x, *args, **kwargs)
```

</div>

## Methods it calls

| [fibre](fibre.multiplicity_py.html) | the number of distinct symmetrically equivalent fibres |
| [vector3d](Miller.multiplicity_py.html) | the number of distinct directions symmetrically equivalent to each vector, of axes under antipodal |

## Used on

[CrystalOperations](CrystalOperations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
