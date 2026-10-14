---
title: 'The class S2RestrictedDistanceKernel'
sidebar: function_reference_sidebar
permalink: S2RestrictedDistanceKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2RestrictedDistanceKernel.html
status: Reference
---
{% raw %}
the restricted distance kernel on the sphere, -2 sin(acos(t) / 2), cut at the degree N:
negative, a distance between directions that makes points repel each other

## Syntax

<div class="mx-form" markdown="1">

```python
psi = S2RestrictedDistanceKernel()
```

</div>

## Description

This is the negative chord distance between unit directions. It is used in
point-repulsion objectives and is not a probability density. Direct evaluation uses
the distance formula; N limits the harmonic representation.

Evaluate psi at t=cos(theta), the cosine of the angular distance on the sphere.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `N` |  | maximum harmonic degree; the maxS2Bandwidth preference when omitted |

## Output

| `psi` | S2RestrictedDistanceKernel |

## See also

[S2Kernel](S2Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [bandwidth](S2RestrictedDistanceKernel.bandwidth_py.html) | the degree N the kernel is cut at |

MATLAB's [S2RestrictedDistanceKernel](S2RestrictedDistanceKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1232">source</a></font>
{% endraw %}
