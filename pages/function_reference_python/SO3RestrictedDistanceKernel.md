---
title: 'The class SO3RestrictedDistanceKernel'
sidebar: function_reference_sidebar
permalink: SO3RestrictedDistanceKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3RestrictedDistanceKernel.html
status: Reference
---
{% raw %}
the restricted distance kernel on SO(3), -sqrt(8) sin(acos(t)), cut at the degree N: negative,
a distance between orientations that makes points repel each other

## Syntax

<div class="mx-form" markdown="1">

```python
psi = SO3RestrictedDistanceKernel()
```

</div>

## Description

This negative kernel measures separation between orientations and is used in
point-repulsion objectives. It is not a probability density. Direct evaluation uses
the distance formula; N limits the harmonic representation.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `N` |  | maximum harmonic degree; the maxSO3Bandwidth preference when omitted |

## Output

| `psi` | SO3RestrictedDistanceKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [bandwidth](SO3RestrictedDistanceKernel.bandwidth_py.html) | the degree N the kernel is cut at |

MATLAB's [SO3RestrictedDistanceKernel](SO3RestrictedDistanceKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L735">source</a></font>
{% endraw %}
