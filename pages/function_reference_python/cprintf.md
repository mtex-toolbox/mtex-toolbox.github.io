---
title: 'cprintf'
sidebar: function_reference_sidebar
permalink: cprintf_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: cprintf.html
status: Reference
---
{% raw %}
MATLAB's cprintf(d, '-Lc', labels, '-Lr', rows): a matrix printed as a table, a vector as
one row

## Syntax

<div class="mx-form" markdown="1">

```python
cprintf(np.eye(2))
```

A matrix, the columns right aligned.

</div>

<div class="mx-form" markdown="1">

```python
cprintf([[1, 2], [3, 4]], Lc=['a', 'b'], Lr=['x', 'y'])
```

With column and row labels.

</div>

<div class="mx-form" markdown="1">

```python
cprintf([[1, 2], [3, 4]], '-Lc', ['a', 'b'])
```

MATLAB's option pairs.

</div>

## Description

The numbers are printed in the shortest form (%g), every column as wide as the widest. Of
MATLAB's options only the labels '-Lc' and '-Lr' are taken, as pairs or as keywords, and
the table is printed, not returned as a character array.

## Input

| `d` | a matrix or a vector of numbers |

## Keywords

| keyword | default | description |
|---|---|---|
| `Lc` | `None` | the labels of the columns |
| `Lr` | `None` | the labels of the rows |

## See also

[exportVector3d](exportVector3d_py.html)

## Used on

[IsotropicTheory](IsotropicTheory_py.html), [WaveVelocities](WaveVelocities_py.html)

MATLAB's [cprintf](cprintf.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/table.py#L161">source</a></font>
{% endraw %}
