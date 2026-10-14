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
the coincidence site lattice misorientations of order sigma - an integer or a list of them -
of the lattice of the crystal frame cs, as misorientations from cs to cs with grain exchange,
ascending in sigma and then in angle: CSL(3, cs) is the twin of a cubic lattice. Any lattice
is searched, a coincidence being a rotation that takes sigma times every lattice vector onto a
lattice vector (Grimmer, Bollmann, Warrington 1974; Grimmer 1984). The lattice is the Bravais
lattice of cs, centred as cs.centering says - the letter of its space group - or as a letter
given, CSL(sigma, cs, 'I'); the cubic P, I and F lattices share their coincidences. A metric
with rational ratios, a cubic one or a hexagonal one with c^2/a^2 rational, has exact
coincidences; with a misfit delta > 0 the metric is replaced by the one of the smallest
denominators within the relative misfit delta, and its coincidences are the near ones of the
real lattice (the constrained coincidence site lattices of a hexagonal metal: c^2/a^2 = 2.52
of titanium is 5/2 within delta = 0.01)

## Syntax

The twin of a cubic lattice:

```python
mori = CSL(3, cs)
```

Several orders at once:

```python
mori = CSL([3, 5, 7], cs)
```

Of the lattice centred I:

```python
mori = CSL(sigma, cs, 'I')
```

Near coincidences within a misfit of the metric:

```python
mori = CSL(7, cs, delta=0.01)
```

## Signature

```python
CSL(sigma, CS, *args, delta=0)
```

## Used on

[CSLBoundaries](CSLBoundaries_py.html), [Twinning](Twinning_py.html)

MATLAB's [CSL](CSL.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/csl.py#L143">source</a></font>
{% endraw %}
