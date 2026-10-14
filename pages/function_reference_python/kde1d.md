---
title: 'kde1d'
sidebar: function_reference_sidebar
permalink: kde1d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a kernel density estimate of one dimensional data by diffusion, the Gaussian kernel's
bandwidth chosen from the data

## Syntax

<div class="mx-form" markdown="1">

```python
bw, density, xmesh = kde1d(data)
```

The density on 2^14 points.

</div>

<div class="mx-form" markdown="1">

```python
bw, density, xmesh = kde1d(data, 2 ** 10, lo, hi)
```

On 2^10 points of [lo, hi].

</div>

<div class="mx-form" markdown="1">

```python
bw, density, xmesh = kde1d(data, weights=w, bandwidth=2.0) # weighted data, a bandwidth chosen
```

</div>

## Description

The data are binned on n cells of [lo, hi] and the histogram is smoothed by the heat
kernel, which is the Gaussian kernel of the bandwidth sqrt(t) (hi - lo). The time t is the
fixed point of Botev, Grotowski and Kroese's equation, which does not assume a parametric
model and so does not deteriorate for multimodal data with widely separated modes. The
density integrates to one over [lo, hi].

MATLAB's kde1d takes the bandwidth option as the diffusion time t; here it is the
bandwidth in the units of the data. MATLAB's magicNumber, its fourth output, the
cumulative distribution, and its plot when no output is asked are not ported.

## Input

| `data` | array, the samples |

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `16384` | the number of cells, rounded up to a power of two |
| `lo` | `None` | the lower end of the interval; with hi, by default the range of the data widened by half of it on each side |
| `hi` | `None` | the upper end of the interval |
| `weights` | `None` | the weights of the samples |
| `bandwidth` | `None` | the bandwidth of the kernel instead of the one chosen from the data |

## Output

| `bw` | the bandwidth of the Gaussian kernel, in the units of the data |
| `density` | array of length n, the density estimate at the points of xmesh |
| `xmesh` | array of length n, the centres of the cells of [lo, hi] |

## References

- Z. I. Botev, J. F. Grotowski, D. P. Kroese, Kernel density estimation via diffusion, Annals of Statistics 38 (2010) 2916-2957

## See also

[kdeN](kdeN_py.html), [calcDensity](calcDensity_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kde.py#L131">source</a></font>
{% endraw %}
