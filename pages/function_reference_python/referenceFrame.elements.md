---
title: 'referenceFrame.elements'
sidebar: function_reference_sidebar
permalink: referenceFrame.elements_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

the rotational axes of the group, both signs, and their multiplicities; MATLAB's elements

## Syntax

<div class="mx-form" markdown="1">

```python
axes, mult = cs.elements()
```

Every rotational axis and its multiplicity.

</div>

<div class="mx-form" markdown="1">

```python
axes = cs.elements(3)
```

The threefold axes.

</div>

## Description

Every axis appears with both signs; its multiplicity is the highest order of a rotation
about it.

## Input

| `cs` | referenceFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `multiplicity` | `None` | return only the axes of this order |

## Output

| `axes` | vector3d, the axes |
| `mult` | their multiplicities (without multiplicity) |

## See also

[referenceFrame.nfold](referenceFrame.nfold_py.html), [referenceFrame.rotations](referenceFrame.rotations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/__init__.py#L228">source</a></font>
{% endraw %}
