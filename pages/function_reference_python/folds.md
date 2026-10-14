---
title: 'folds'
sidebar: function_reference_sidebar
permalink: folds_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the z folds on the crystal and on the specimen side: the order of the rotation about z
that leaves the frame's group invariant

## Syntax

<div class="mx-form" markdown="1">

```python
rA, rB = folds(cs, ss)
```

The folds of both frames.

</div>

<div class="mx-form" markdown="1">

```python
rA, rB = folds(cs)
```

The specimen side the default frame.

</div>

## Description

A harmonic transform on SO(3) samples the Euler angles on grids these folds divide, so that
the symmetric equivalents of a node fall on nodes again.

## Input

| `CS` | referenceFrame, the crystal frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `SS` | `None` | the specimen frame, specimenFrame.default when not given |

## Output

| `rA, rB` | the orders of the rotations about z of the crystal and the specimen group |

## See also

[bandwidthFor](bandwidthFor_py.html), [quadratureSO3Grid](quadratureSO3Grid_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L74">source</a></font>
{% endraw %}
