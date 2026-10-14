---
title: 'plotSymmetry'
sidebar: function_reference_sidebar
permalink: plotSymmetry_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the elements of the point group of a frame drawn on the upper hemisphere, as the
international tables draw them; MATLAB's referenceFrame.plot

## Syntax

The symmetry elements:

```python
plot(cs)
```

Larger symbols, thinner mirrors:

```python
plot(cs, symbolSize=2, mirrorLineWidth=1.5)
```

The same by name:

```python
plotSymmetry(crystalFrame('-3m'))
```

A mirror plane is a great circle, an n-fold rotation axis a filled polygon of n corners (a
lens for a twofold), a rotoinversion axis a hollow one around the polygon of its proper
part, and the inversion of a Laue group a hollow circle at the centre. The projection
follows the keywords of the spherical plots.

## Input

| | |
|---|---|
| `fr` | crystalFrame or specimenFrame |

## Output

| | |
|---|---|
| `sP` | the spherical plot drawn into |

## Keywords

| | default | |
|---|---|---|
| `symbolSize` | `None` | a factor on the size of the symbols, by default a third of the chart's extent |
| `mirrorLineWidth` | `2.5` | the width of the great circles of the mirror planes |

## See also

[plotHKL](crystalSymmetry.plotHKL_py.html), [crystalFrame](crystalFrame_index_py.html), [fundamentalSector](fundamentalSector_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L1111">source</a></font>
{% endraw %}
