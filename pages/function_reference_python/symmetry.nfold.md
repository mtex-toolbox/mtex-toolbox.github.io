---
title: 'symmetry.nfold'
sidebar: function_reference_sidebar
permalink: symmetry.nfold_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.nfold.html
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

the maximal n-fold of the group, and about given axes, symmetry/nfold

## Syntax

<div class="mx-form" markdown="1">

```python
n = cs.sym.nfold()
```

The highest order of any axis.

</div>

<div class="mx-form" markdown="1">

```python
n = cs.sym.nfold(vector3d(0, 0, 1))
```

About z, 1 when it is no axis.

</div>

## Input

| `pg` | symmetry |
| `axis` | vector3d, the axes asked about |

## Output

| `n` | an integer, or one per axis |

## See also

[symmetry.elements](symmetry.elements_py.html), [symmetry.multiplicityZ](symmetry.multiplicityZ_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
symmetry.nfold(self, axis=None)
```

</div>

MATLAB's [symmetry.nfold](symmetry.nfold.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L375">source</a></font>
{% endraw %}
