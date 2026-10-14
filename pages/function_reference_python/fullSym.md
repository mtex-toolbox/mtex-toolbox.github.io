---
title: 'fullSym'
sidebar: function_reference_sidebar
permalink: fullSym_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the largest registered symmetry group for the same frame basis.

## Syntax

<div class="mx-form" markdown="1">

```python
full = fullSym(cs)
```

</div>

## Description

For an MTEX object, fullSym(x, ...) calls x.fullSym(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
fullSym(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.fullSym_py.html) | the largest group registered over this basis |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
