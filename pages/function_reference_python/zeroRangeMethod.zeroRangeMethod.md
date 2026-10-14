---
title: 'zeroRangeMethod.zeroRangeMethod'
sidebar: function_reference_sidebar
permalink: zeroRangeMethod.zeroRangeMethod_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: zeroRangeMethod.zeroRangeMethod.html
status: Reference
---
{% raw %}
the zero range method of the pole figure inversion: where a pole figure vanishes, the ODF
vanishes on every fibre through it

## Syntax

<div class="mx-form" markdown="1">

```python
zrm = zeroRangeMethod(pf)
```

The defaults.

</div>

<div class="mx-form" markdown="1">

```python
zrm = zeroRangeMethod(pf, halfwidth=10*degree, delta=0.01)
```

A wider kernel, a higher background.

</div>

<div class="mx-form" markdown="1">

```python
isZero = zrm.checkZeroRange(ori)
```

The orientations ruled out.

</div>

<div class="mx-form" markdown="1">

```python
isZero = zrm.checkZeroRange(v, i)
```

The zero positions of the i-th pole figure.

</div>

## Description

A direction of a pole figure is in its zero range where enough measurements surround it
and most of them lie below the background. Both are kernel sums over the measured
directions: their density, which must exceed the threshold, and a sum weighting an
intensity above the background bg by alpha - 1 and one below it by -1, which must be
below -0.1 times the density.

An orientation is ruled out when one of its symmetric poles falls into the zero range of
some pole figure. calcODF(pf, zeroRange=True) drops those orientations from the grid of
the ansatz functions; calcODF(pf, zeroRange=zrm) uses the method set up here.

## Input

| `pf` | PoleFigure |
| `psi` | S2Kernel, the smoothing kernel, given positionally |

## Keywords

| keyword | default | description |
|---|---|---|
| `halfwidth` | `None` | the halfwidth of the de la Vallee Poussin smoothing kernel, by default twice the resolution of the pole figures |
| `kernel` | `None` | S2Kernel, the smoothing kernel instead |
| `threshold` | `None` | the density below which the data says nothing, by default a tenth of the kernel's maximum |
| `delta` | `0.001` | the background as a fraction of the largest intensity, when bg is not given |
| `bg` | `None` | the background intensity, one number or one per pole figure |
| `alpha` | `10` | the weight of an intensity above the background against one below it |
| `bandwidth` | `None` | the bandwidth of the smoothed densities, by default the kernel's |

## Output

| `zrm` | zeroRangeMethod |

## See also

[calcODF](calcODF_py.html), [MLSSolver](MLSSolver_index_py.html), [PoleFigureDubna](PoleFigureDubna_py.html)

MATLAB's [zeroRangeMethod.zeroRangeMethod](zeroRangeMethod.zeroRangeMethod.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L102">source</a></font>
{% endraw %}
