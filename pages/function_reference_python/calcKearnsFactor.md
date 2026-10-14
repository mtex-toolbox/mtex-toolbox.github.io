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
k = calcKearnsFactor(odf)
```

Of (0001) with the z direction.

</div>

<div class="mx-form" markdown="1">

```python
k = calcKearnsFactor(pdf, N)
```

Of a pole figure.

</div>

## Description

The integral of the pole figure of h against (r . N)^2 over the sphere, normalised so that
a uniform texture gives 1/3. With an ODF the two directions are told apart by their class,
the Miller one the crystal direction, so MATLAB's order calcKearnsFactor(odf, N, h) gives
the same.

## Input

| `f` | SO3Fun, an ODF, or S2Fun, a pole figure |
| `h` | Miller, the crystal direction (with an ODF), (0001) when left out; with a pole figure the place of N |
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

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/texture.py#L271">source</a></font>
{% endraw %}
