---
title: 'CSL'
sidebar: function_reference_sidebar
permalink: CSL_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: CSL.html
status: Reference
---
{% raw %}
the coincidence site lattice misorientations of order sigma of the lattice of the crystal
frame cs, MATLAB's CSL

## Syntax

<div class="mx-form" markdown="1">

```python
mori = CSL(3, cs)
```

The twin of a cubic lattice.

</div>

<div class="mx-form" markdown="1">

```python
mori = CSL([3, 5, 7], cs)
```

Several orders at once.

</div>

<div class="mx-form" markdown="1">

```python
mori = CSL(5, cs, 'I')
```

Of the lattice centred I.

</div>

<div class="mx-form" markdown="1">

```python
mori = CSL(7, cs, delta=0.01)
```

Near coincidences within a misfit of the metric.

</div>

## Description

The misorientations are from cs to cs with grain exchange, one per coincidence class,
ascending in sigma and then in angle: CSL(3, cs) is the twin of a cubic lattice. An order
without coincidences, such as an even one of a cubic lattice, contributes none.

Any lattice is searched for the rotations that take sigma times every lattice vector onto a
lattice vector, where MATLAB reads a table of the cubic ones. The lattice is the Bravais
lattice of cs, centred as cs.centering says or as a letter given; the cubic P, I and F
lattices share their coincidences.

A metric with rational ratios, a cubic one or a hexagonal one with c^2/a^2 rational, has
exact coincidences. With a misfit delta > 0 the metric is replaced by the one of the
smallest denominators within the relative misfit delta, and its coincidences are the near
ones of the real lattice, the constrained coincidence site lattices of a hexagonal metal:
c^2/a^2 = 2.52 of titanium is 5/2 within delta = 0.01.

MATLAB's delta, a search radius about the angle or axis of its table, is not this one.

## Input

| `sigma` | the order, an integer or a list of them |
| `CS` | crystalFrame, whose lattice is searched |
| `args` | a letter P, I, F, A, B, C or R, the centring of the lattice instead of cs.centering |

## Keywords

| keyword | default | description |
|---|---|---|
| `delta` | `0` | the relative misfit of the metric within which rational ratios replace it; 0 keeps the metric as it is |

## Output

| `mori` | orientation from cs to cs, antipodal, one per coincidence class |

## References

- H. Grimmer, W. Bollmann, D. H. Warrington, Coincidence-site lattices and complete pattern-shift lattices in cubic crystals, Acta Cryst. A 30 (1974) 197-207
- H. Grimmer, Acta Cryst. A 40 (1984), the coincidence site lattices of any lattice

## See also

[orientation.byAxisAngle](orientation.byAxisAngle_py.html), [calcMisorientation](calcMisorientation_py.html)

## Used on

[CSLBoundaries](CSLBoundaries_py.html), [Twinning](Twinning_py.html)

MATLAB's [CSL](CSL.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/csl.py#L143">source</a></font>
{% endraw %}
