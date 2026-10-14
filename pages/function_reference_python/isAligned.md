---
title: 'isAligned'
sidebar: function_reference_sidebar
permalink: isAligned_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
test whether two reference frames have aligned basis vectors.

## Syntax

<div class="mx-form" markdown="1">

```python
aligned = isAligned(frame1, frame2)
```

</div>

## Description

For an MTEX object, isAligned(x, ...) calls x.isAligned(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
isAligned(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.isAligned_py.html) | whether two frames have the same basis, up to a relative tolerance on the basis vectors |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
