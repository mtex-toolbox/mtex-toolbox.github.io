---
title: 'referenceFrame.isAligned'
sidebar: function_reference_sidebar
permalink: referenceFrame.isAligned_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: referenceFrame.isAligned.html
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

whether two frames have the same basis, up to a relative tolerance on the basis vectors;
MATLAB's isAligned

## Syntax

The same basis, no transition needed:

```python
b = cs1.isAligned(cs2)
```

Within another relative tolerance:

```python
b = cs1.isAligned(cs2, tol=1e-3)
```

## Input

| | |
|---|---|
| `cs1, cs2` | referenceFrame |

## Output

| | |
|---|---|
| `b` | bool |

## Keywords

| | default | |
|---|---|---|
| `tol` | `None` | the relative tolerance on the basis vectors; by default referenceFrame.tolAligned, 0.05 |

## See also

[referenceFrame.isCompatible](referenceFrame.isCompatible_py.html), [referenceFrame.transformationMatrix](referenceFrame.transformationMatrix_py.html)

MATLAB's [referenceFrame.isAligned](referenceFrame.isAligned.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L441">source</a></font>
{% endraw %}
