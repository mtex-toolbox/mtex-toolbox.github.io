---
title: 'grain3Boundary.hasPhase'
sidebar: function_reference_sidebar
permalink: grain3Boundary.hasPhase_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [grain3Boundary](grain3Boundary_index_py.html).

the boundary faces with a phase on one side, or between two phases; MATLAB's hasPhase
of the boundaries

## Syntax

<div class="mx-form" markdown="1">

```python
ind = gB.hasPhase('Iron')
```

A face of an Iron grain.

</div>

<div class="mx-form" markdown="1">

```python
ind = gB.hasPhase('Iron', 'Iron')
```

Between two Iron grains.

</div>

<div class="mx-form" markdown="1">

```python
ind = gB.hasPhase('notIndexed')
```

At the outside or a not indexed region.

</div>

<div class="mx-form" markdown="1">

```python
ind = gB.hasPhase(1)
```

A phase by its number.

</div>

## Description

A phase is given by its mineral name, its crystal frame or its number in gB.CSList.
'indexed', when no mineral has the name, selects the faces with both sides indexed and
'notIndexed' the others, those with a side of phase 0: the outside of the volume or a not
indexed region.

## Input

| `gB` | grain3Boundary |
| `a` | a phase: mineral name, crystalFrame or phase number |

## Keywords

| keyword | default | description |
|---|---|---|
| `b` | `None` | a second phase: the faces between a and b |

## Output

| `ind` | boolean mask of the faces |

## See also

[grain3Boundary.hasGrain](grain3Boundary.hasGrain_py.html), [grainBoundary.hasPhase](grainBoundary.hasPhase_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3boundary.py#L165">source</a></font>
{% endraw %}
