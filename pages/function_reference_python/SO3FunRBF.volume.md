---
title: 'SO3FunRBF.volume'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.volume_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.volume.html
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the share of orientations within a radius of a centre: the integral of f over the ball,
int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations; MATLAB's volume

## Syntax

<div class="mx-form" markdown="1">

```python
v = volume(odf, ori, 20*degree)
```

Around an orientation.

</div>

<div class="mx-form" markdown="1">

```python
v = volume(odf, ori, 20*degree, resolution=1*degree)
```

A finer local grid.

</div>

<div class="mx-form" markdown="1">

```python
v = volume(odf, f, 10*degree)
```

Around a fibre.

</div>

<div class="mx-form" markdown="1">

```python
v = volume(sF, xvector, 20*degree)
```

A spherical function around a direction.

</div>

<div class="mx-form" markdown="1">

```python
v = volume(ori, center, 10*degree)
```

The share of a list of orientations.

</div>

## Description

The volume is the mean of f on a local grid in the ball times the ball's share of the
fundamental region (its Haar measure times the number of symmetric copies, at most one).
On the sphere it is the same over a spherical cap; an antipodal function over a cap of 90
degree gives its mean value. A fibre as the centre gives fibreVolume; a list of
orientations gives the share of them within the radius; a list of centres a value each.
The spherical form is a function only, not a method of the spherical functions.

## Input

| `f` | SO3Fun, S2Fun or orientation |
| `center` | orientation, fibre, or vector3d on the sphere |
| `radius` | the radius of the ball, an angle |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `None` | the spacing of the local grid, by default the smaller of 1.25 degree and a thirtieth of the radius (on the sphere 0.1 degree and a two hundredth) |

## Output

| `v` | the share of the volume, a number, or an array of one per centre |

## See also

[fibreVolume](SO3Fun.fibreVolume_py.html), [entropy](SO3Fun.entropy_py.html), [SO3FunHarmonic.mean](SO3FunHarmonic.mean_py.html)

MATLAB's [SO3FunRBF.volume](SO3FunRBF.volume.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L103">source</a></font>
{% endraw %}
