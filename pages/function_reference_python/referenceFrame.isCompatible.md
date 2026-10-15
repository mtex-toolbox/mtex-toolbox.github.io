---
title: 'referenceFrame.isCompatible'
sidebar: function_reference_sidebar
permalink: referenceFrame.isCompatible_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: referenceFrame.isCompatible.html
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

whether a transition between the frames exists, and the transition; MATLAB's isCompatible

## Syntax

<div class="mx-form" markdown="1">

```python
ok, M = cs1.isCompatible(cs2)
```

The transition from cs1 to cs2.

</div>

<div class="mx-form" markdown="1">

```python
ok, M = cs1.isCompatible(cs2, tol=1e-3)
```

With another tolerance.

</div>

## Description

Two frames are compatible when the transition between them is close to orthogonal: the
same data can be expressed in either. The lengths of the basis vectors do not enter, the
transition is computed on normalised bases.

## Input

| `cs1, cs2` | referenceFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `None` | the tolerance on the orthogonality defect of M; by default referenceFrame.tolCompatible, 0.1 |

## Output

| `ok` | bool |
| `M` | the 3 x 3 transition matrix from cs1 to cs2 |

## See also

[referenceFrame.isAligned](referenceFrame.isAligned_py.html), [referenceFrame.transformationMatrix](referenceFrame.transformationMatrix_py.html)

MATLAB's [referenceFrame.isCompatible](referenceFrame.isCompatible.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/__init__.py#L520">source</a></font>
{% endraw %}
