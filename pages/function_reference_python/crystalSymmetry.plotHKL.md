---
title: 'crystalSymmetry.plotHKL'
sidebar: function_reference_sidebar
permalink: crystalSymmetry.plotHKL_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalSymmetry.plotHKL.html
status: Reference
---
{% raw %}
A method of [crystalFrame](crystalFrame_index_py.html).

the low index directions <100>, <110>, <111> of a crystal with all their symmetric
equivalents, labelled by their indices; MATLAB's crystalFrame.plotHKL

## Syntax

<div class="mx-form" markdown="1">

```python
plotHKL(cs)
```

On the upper hemisphere.

</div>

<div class="mx-form" markdown="1">

```python
cs.plotHKL(complete=True)
```

On the whole sphere.

</div>

## Description

Every family is scattered with symmetrised=True and labeled=True, <111>, <110>, <100> in
the colours of that order, with black marker edges over a grid; the other keywords go to
scatter and the spherical plots.

## Input

| `CS` | crystalFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `complete` | `False` | the whole sphere instead of the upper hemisphere |

## Output

| `h` | the matplotlib collections |

## See also

[plotSymmetry](plotSymmetry_py.html), [scatter](quaternion.scatter_py.html), [Miller.symmetrise](Miller.symmetrise_py.html)

MATLAB's [crystalSymmetry.plotHKL](crystalSymmetry.plotHKL.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L1070">source</a></font>
{% endraw %}
