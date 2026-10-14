---
title: 'orth'
sidebar: function_reference_sidebar
permalink: orth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
choose a unit direction perpendicular to each vector.

## Syntax

<div class="mx-form" markdown="1">

```python
normal = orth(v)
```

</div>

## Description

For an MTEX object, orth(x, ...) calls x.orth(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
orth(x, *args, **kwargs)
```

</div>

## Methods it calls

| [vector3d](vector3d.orth_py.html) | choose a unit vector perpendicular to each input vector |

## Used on

[S2FunRadon](S2FunRadon_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
