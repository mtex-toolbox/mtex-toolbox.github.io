---
title: 'dspacing'
sidebar: function_reference_sidebar
permalink: dspacing_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the separation of lattice planes from their Miller normals.

## Syntax

<div class="mx-form" markdown="1">

```python
d = dspacing(h)
```

</div>

## Description

For an MTEX object, dspacing(x, ...) calls x.dspacing(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
dspacing(x, *args, **kwargs)
```

</div>

## Methods it calls

| [vector3d](Miller.dspacing_py.html) | return the spacing of the lattice planes represented by each Miller normal |

## Used on

[LatticeMetric](LatticeMetric_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
