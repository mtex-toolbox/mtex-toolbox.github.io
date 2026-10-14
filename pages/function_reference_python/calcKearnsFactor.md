---
title: 'calcKearnsFactor'
sidebar: function_reference_sidebar
permalink: calcKearnsFactor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: calcKearnsFactor.html
status: Reference
---
{% raw %}
the Kearns factor, the mean squared alignment of a crystal direction with the specimen
direction N; MATLAB's calcKearnsFactor

## Syntax

<div class="mx-form" markdown="1">

```python
k = calcKearnsFactor(odf, h, N)
```

Of the crystal direction h with N.

</div>

<div class="mx-form" markdown="1">

```python
k = calcKearnsFactor(odf, h)
```

With the z direction.

</div>

<div class="mx-form" markdown="1">

```python
k = calcKearnsFactor(pdf, N)
```

Of a pole figure.

</div>

## Description

The integral of the pole figure of h against (r . N)^2 over the sphere, normalised so that
a uniform texture gives 1/3. MATLAB's order is calcKearnsFactor(odf, N, h), the arguments
told apart by their class; here h comes first. MATLAB's default h = [0001] is not taken:
an ODF needs h.

## Input

| `f` | SO3Fun, an ODF, or S2Fun, a pole figure |
| `h` | Miller, the crystal direction (with an ODF); with a pole figure the place of N |
| `N` | vector3d, the specimen direction, z when left out |

## Output

| `k` | float |

## See also

[radon](radon_py.html), [calcLankford](calcLankford_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
calcKearnsFactor(f, h=None, N=None)
```

</div>

MATLAB's [calcKearnsFactor](calcKearnsFactor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/texture.py#L263">source</a></font>
{% endraw %}
