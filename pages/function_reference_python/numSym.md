---
title: 'numSym'
sidebar: function_reference_sidebar
permalink: numSym_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
count all operations in a point group.

## Syntax

<div class="mx-form" markdown="1">

```python
n = numSym(cs)
```

</div>

## Description

For an MTEX object, numSym(x, ...) calls x.numSym(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
numSym(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.numSym_py.html) | the number of elements of the point group |
| [symmetry](symmetry.numSym_py.html) | the number of elements of the group |

## Used on

[SpecimenSymmetry](SpecimenSymmetry_py.html), [SO3FunConcept](SO3FunConcept_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
