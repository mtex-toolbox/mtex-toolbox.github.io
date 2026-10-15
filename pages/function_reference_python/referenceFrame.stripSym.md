---
title: 'referenceFrame.stripSym'
sidebar: function_reference_sidebar
permalink: referenceFrame.stripSym_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

return an interned sibling frame with the same basis and no nontrivial symmetry.

## Syntax

<div class="mx-form" markdown="1">

```python
plain = cs.stripSym()
```

</div>

## Description

The trivial group contains only the identity. Lattice axes, frame type and descriptive
metadata are retained; the original frame is unchanged.

## See also

[referenceFrame.sibling](referenceFrame.sibling_py.html), [referenceFrame.Laue](referenceFrame.Laue_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
referenceFrame.stripSym(self)
```

</div>

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/__init__.py#L306">source</a></font>
{% endraw %}
