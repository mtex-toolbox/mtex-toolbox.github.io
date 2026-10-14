---
title: 'crystalSymmetry.load'
sidebar: function_reference_sidebar
permalink: crystalSymmetry.load_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalSymmetry.load.html
status: Reference
---
{% raw %}
A method of [crystalFrame](crystalFrame_index_py.html).

construct a registered crystal frame from a CIF structure file.

## Syntax

<div class="mx-form" markdown="1">

```python
cs = crystalFrame.load('structure.cif')
```

</div>

## Description

The CIF reader supplies the lattice dimensions, angles, symmetry and descriptive metadata.
Equivalent frame constructions are interned in the session register.

## See also

[loadCIF](loadCIF_py.html), [crystalFrame](crystalFrame_index_py.html), [referenceFrame.intern](referenceFrame.intern_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
crystalFrame.load(fname)
```

</div>

MATLAB's [crystalSymmetry.load](crystalSymmetry.load.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L904">source</a></font>
{% endraw %}
