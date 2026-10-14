---
title: 'tilesSphere'
sidebar: function_reference_sidebar
permalink: tilesSphere_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
whether the region is a fundamental domain of the point group: n evenly spread directions
folded into it all land inside, and it covers the share of one element; cached

## Syntax

True for every crystal frame:

```python
tilesSphere(cs.fundamentalSector(), cs.sym)
```

More test directions:

```python
tilesSphere(sR, cs.sym, n=20000)
```

The region covers the share of one element when the fraction of the test directions
inside it times the order of the group is 1 up to 0.15. The answer is kept per group and
region, so n matters only on the first call.

## Input

| | |
|---|---|
| `sR` | sphericalRegion |
| `pg` | the point group, or a frame holding it |

## Output

| | |
|---|---|
| `b` | True or False |

## Keywords

| | default | |
|---|---|---|
| `n` | `6000` | the number of test directions, a Fibonacci lattice |

## See also

[fundamentalSector](fundamentalSector_py.html), [dirichletSector](dirichletSector_py.html), [projectIntoRegion](projectIntoRegion_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L505">source</a></font>
{% endraw %}
