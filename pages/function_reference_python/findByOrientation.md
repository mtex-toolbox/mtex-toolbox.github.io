---
title: 'findByOrientation'
sidebar: function_reference_sidebar
permalink: findByOrientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
select measurements or grains close to an orientation or fibre.

## Syntax

<div class="mx-form" markdown="1">

```python
selection = findByOrientation(ebsd, ori, epsilon)
```

</div>

## Description

For an MTEX object, findByOrientation(x, ...) calls x.findByOrientation(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
findByOrientation(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.findByOrientation_py.html) | select measurements close to a reference orientation or an orientation fibre |
| [grain2d](grain2d.findByOrientation_py.html) | select grains whose mean orientation is close to a reference orientation or fibre |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
