---
title: 'stripSym'
sidebar: function_reference_sidebar
permalink: stripSym_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the same frame basis with the trivial symmetry group.

## Syntax

<div class="mx-form" markdown="1">

```python
plain = stripSym(cs)
```

</div>

## Description

For an MTEX object, stripSym(x, ...) calls x.stripSym(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
stripSym(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.stripSym_py.html) | return an interned sibling frame with the same basis and no nontrivial symmetry |

## Used on

[DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
