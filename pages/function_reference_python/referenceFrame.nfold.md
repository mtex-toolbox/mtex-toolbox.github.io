---
title: 'referenceFrame.nfold'
sidebar: function_reference_sidebar
permalink: referenceFrame.nfold_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

the highest order of a symmetry axis of the group; with axes, the order about each of them;
MATLAB's nfold

## Syntax

<div class="mx-form" markdown="1">

```python
n = cs.nfold()
```

The highest order of a rotation axis.

</div>

<div class="mx-form" markdown="1">

```python
n = cs.nfold(Miller(0, 0, 1, cs, 'uvw'))
```

The order about an axis, 1 when it is none.

</div>

## Input

| `cs` | referenceFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `None` | directions, the order of the rotations about each of them |

## Output

| `n` | int, or an array of the shape of axis |

## See also

[referenceFrame.elements](referenceFrame.elements_py.html), [referenceFrame.numSym](referenceFrame.numSym_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L211">source</a></font>
{% endraw %}
