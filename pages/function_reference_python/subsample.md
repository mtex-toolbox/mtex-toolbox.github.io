---
title: 'subsample'
sidebar: function_reference_sidebar
permalink: subsample_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
keep every n-th map measurement along each lattice direction.

## Syntax

<div class="mx-form" markdown="1">

```python
coarse = subsample(ebsd, 2)
```

</div>

## Description

For an MTEX object, subsample(x, ...) calls x.subsample(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
subsample(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.reduce_py.html) | every n-th measurement along each lattice direction, which is the map at a coarser step |
| [EBSD3](EBSD3.reduce_py.html) | every n-th measurement along each lattice direction, which is the map at a coarser step |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
