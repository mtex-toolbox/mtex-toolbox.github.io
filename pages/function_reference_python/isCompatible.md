---
title: 'isCompatible'
sidebar: function_reference_sidebar
permalink: isCompatible_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
check whether a coordinate transition between two frames is available.

## Syntax

<div class="mx-form" markdown="1">

```python
compatible, transition = isCompatible(frame1, frame2)
```

</div>

## Description

For an MTEX object, isCompatible(x, ...) calls x.isCompatible(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
isCompatible(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.isCompatible_py.html) | whether a transition between the frames exists, and the transition |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
