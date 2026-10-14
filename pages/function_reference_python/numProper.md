---
title: 'numProper'
sidebar: function_reference_sidebar
permalink: numProper_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
count the proper rotations in a point group.

## Syntax

<div class="mx-form" markdown="1">

```python
n = numProper(cs)
```

</div>

## Description

For an MTEX object, numProper(x, ...) calls x.numProper(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
numProper(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.numProper_py.html) | the number of proper rotations in the point group |
| [symmetry](symmetry.numProper_py.html) | the number of proper rotations of the group |

## Used on

[SpecimenSymmetry](SpecimenSymmetry_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
