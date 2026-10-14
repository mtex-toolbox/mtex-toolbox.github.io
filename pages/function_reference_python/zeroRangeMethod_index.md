---
title: 'The class zeroRangeMethod'
sidebar: function_reference_sidebar
permalink: zeroRangeMethod_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: zeroRangeMethod_index.html
status: Reference
---
{% raw %}
the zero range method of the pole figure inversion: where a pole figure vanishes, the ODF
vanishes on every fibre through it

## Syntax

The defaults:

```python
zrm = zeroRangeMethod(pf)
```

A wider kernel, a higher background:

```python
zrm = zeroRangeMethod(pf, halfwidth=10*degree, delta=0.01)
```

The orientations ruled out:

```python
isZero = zrm.checkZeroRange(ori)
```

The zero positions of the i-th pole figure:

```python
isZero = zrm.checkZeroRange(v, i)
```

The measurement positions are smoothed with a spherical kernel twice: unweighted, their
density, which says where the data backs a statement, and weighted by alpha where the
intensity exceeds the background bg and by -1 where it does not. A direction where the
density is above the threshold and the weighted sum below -0.1 of it counts as zero; an
orientation is ruled out when one of its symmetric poles falls on such a direction in some
pole figure. calcODF(pf, zeroRange=True) removes those orientations from the grid of the
ansatz functions; calcODF(pf, zeroRange=zrm) uses the method set up here.

## Input

| | |
|---|---|
| `pf` | PoleFigure |
| `psi` | S2Kernel, the smoothing kernel, given positionally |

## Output

| | |
|---|---|
| `zrm` | zeroRangeMethod |

## Keywords

| | default | |
|---|---|---|
| `halfwidth` |  | the halfwidth of the de la Vallee Poussin smoothing kernel, by default twice the resolution of the pole figures |
| `kernel` |  | S2Kernel, the smoothing kernel instead |
| `threshold` |  | the density below which the data says nothing, by default a tenth of the kernel's maximum |
| `delta` |  | the background as a fraction of the largest intensity, when bg is not given |
| `bg` |  | the background intensity, one number or one per pole figure |
| `alpha` |  | the weight of an intensity above the background against one below it |
| `bandwidth` |  | the bandwidth of the smoothed densities, by default the kernel's |

## See also

[calcODF](calcODF_py.html), [MLSSolver](MLSSolver_index_py.html), [PoleFigureDubna](PoleFigureDubna_py.html)

## Members

| | |
|---|---|
| [checkZeroRange](zeroRangeMethod.checkZeroRange_py.html) | which orientations the zero range method rules out: those some pole figure is zero at in one of their symmetric poles |
| [plot](zeroRangeMethod.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [zeroRangeMethod](zeroRangeMethod.zeroRangeMethod_py.html) | the zero range method of the pole figure inversion: where a pole figure vanishes, the ODF vanishes on every fibre through it |

MATLAB's [zeroRangeMethod_index](zeroRangeMethod_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L102">source</a></font>
{% endraw %}
