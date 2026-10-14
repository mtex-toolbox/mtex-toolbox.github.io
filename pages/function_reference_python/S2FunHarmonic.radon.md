---
title: 'S2FunHarmonic.radon'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.radon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.radon.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the Funk transform, the mean over the great circle perpendicular to every direction;
radon(delta) over the small circle at pi/2 + delta; MATLAB's radon

## Syntax

<div class="mx-form" markdown="1">

```python
sF = radon(sF)
```

The mean over the great circles.

</div>

<div class="mx-form" markdown="1">

```python
sF = radon(sF, 10*degree)
```

The mean over the small circles at 100 degree.

</div>

## Description

The transform is a convolution: the coefficients of degree n are multiplied by the Legendre
polynomial P_n(cos(pi/2 + delta)), for the great circle (-1)^(n/2) (n-1)!!/n!! of an even n
and zero of an odd one, so the odd part of a function is lost; invRadon inverts it on the
even functions.

## Input

| `sF` | S2FunHarmonic |

## Keywords

| keyword | default | description |
|---|---|---|
| `delta` | `None` | the angle by which the circle is moved from the great circle |

## Output

| `sF` | S2FunHarmonic |

## See also

[S2FunHarmonic.invRadon](S2FunHarmonic.invRadon_py.html), calcPDF

MATLAB's [S2FunHarmonic.radon](S2FunHarmonic.radon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L773">source</a></font>
{% endraw %}
