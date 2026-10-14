---
title: 'symmetry.elements'
sidebar: function_reference_sidebar
permalink: symmetry.elements_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.elements.html
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

the rotational axes and their multiplicities, both signs, symmetry/elements

## Syntax

Every axis with its order:

```python
axes, mult = cs.sym.elements()
```

The two-fold axes alone:

```python
axes = cs.sym.elements(multiplicity=2)
```

Every axis of a rotation or rotoinversion of order above one, with the highest order
about it, and its antipode with the same order, as MATLAB lists them.

## Input

| | |
|---|---|
| `pg` | symmetry |

## Output

| | |
|---|---|
| `axes` | vector3d, antipodal |
| `mult` | the order of every axis |

## Keywords

| | default | |
|---|---|---|
| `multiplicity` | `None` | return the axes of this order alone |

## See also

[symmetry.nfold](symmetry.nfold_py.html), [symmetry.rotations](symmetry.rotations_py.html)

MATLAB's [symmetry.elements](symmetry.elements.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L328">source</a></font>
{% endraw %}
