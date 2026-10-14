---
title: 'SO3Fun.entropy'
sidebar: function_reference_sidebar
permalink: SO3Fun.entropy_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.entropy.html
status: Reference
---
{% raw %}
the entropy -int f log f of a function on SO(3) or on the sphere; MATLAB's entropy

## Syntax

<div class="mx-form" markdown="1">

```python
e = odf.entropy()
```

At twice the bandwidth, at least 64 (128 on the sphere).

</div>

<div class="mx-form" markdown="1">

```python
e = odf.entropy(bandwidth=128)
```

The quadrature of another bandwidth.

</div>

## Description

The integral is computed by the exact quadrature rule of a raised bandwidth, since f log f
is not bandlimited; points where f is not positive contribute zero. On the sphere it is the
mean over the sphere, as MATLAB divides by 4 pi.

## Input

| `f` | SO3Fun or S2Fun |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the quadrature grid, at most twice the preference maxSO3Bandwidth (maxS2Bandwidth on the sphere) |

## Output

| `e` | the entropy, a number |

## See also

[textureIndex](textureIndex_py.html), [SO3FunHarmonic.norm](SO3FunHarmonic.norm_py.html)

## Used on

[ODFCharacteristics](ODFCharacteristics_py.html)

MATLAB's [SO3Fun.entropy](SO3Fun.entropy.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L71">source</a></font>
{% endraw %}
