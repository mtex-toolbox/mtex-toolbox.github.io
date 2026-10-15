---
title: 'orientation.byScreenAlignment'
sidebar: function_reference_sidebar
permalink: orientation.byScreenAlignment_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.byScreenAlignment.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

construct the orientation that makes two frames appear aligned on screen.

## Syntax

<div class="mx-form" markdown="1">

```python
relation = orientation.byScreenAlignment(frameA, frameB)
```

</div>

## Description

The rotation is inferred from the east and out-of-screen directions of the frames'
plotting conventions. The result maps frameA to frameB. Use [`orientation.align`](orientation.align_py.html) when
the relation should be determined from the lattice bases instead.

## See also

[plottingConvention](plottingConvention_index_py.html), [orientation.align](orientation.align_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
orientation.byScreenAlignment(frA, frB)
```

</div>

MATLAB's [orientation.byScreenAlignment](orientation.byScreenAlignment.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L1025">source</a></font>
{% endraw %}
