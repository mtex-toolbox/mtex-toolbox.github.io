---
title: 'nfold'
sidebar: function_reference_sidebar
permalink: nfold_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the order of the rotational symmetry axes of a point group.

## Syntax

<div class="mx-form" markdown="1">

```python
order = nfold(cs)
```

</div>

## Description

For an MTEX object, nfold(x, ...) calls x.nfold(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
nfold(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.nfold_py.html) | the highest order of a symmetry axis of the group |
| [symmetry](symmetry.nfold_py.html) | the maximal n-fold of the group, and about given axes, symmetry/nfold |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
