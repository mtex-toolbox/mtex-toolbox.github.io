---
title: 'SO3Fun.calcComponents'
sidebar: function_reference_sidebar
permalink: SO3Fun.calcComponents_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.calcComponents.html
status: Reference
---
{% raw %}
the modal orientations of an orientation density, the components: their orientations, their
volumes and the mode every seed flowed into

## Syntax

<div class="mx-form" markdown="1">

```python
modes, weights, centerId = calcComponents(odf)
```

The components from a grid of seeds.

</div>

<div class="mx-form" markdown="1">

```python
modes, weights, centerId = calcComponents(odf, seed=ori)
```

The modes the orientations ascend to.

</div>

<div class="mx-form" markdown="1">

```python
modes, weights, centerId = calcComponents(odf, seed=ori, radius=10*degree, exact=True)
```

Volumes within a radius, every mode kept.

</div>

## Description

Every seed climbs by steepest ascent to a local maximum of the function; maxima closer than
the tolerance are one mode, and its weight is the sum of the weights of the seeds that reached
it. The seeds are the centres of a radial function with their weights, else the nodes of a
2.5 degree grid, which first climb to their peaks on the grid. Modes of less than one percent
of the weight are dropped unless exact=True, and the seeds that reached them get centerId -1.
The modes are ordered by decreasing weight.

## Input

| `f` | SO3Fun |

## Keywords

| keyword | default | description |
|---|---|---|
| `seed` | `None` | orientation, the starting points of the ascent |
| `weights` | `None` | the weights of the seeds, equal by default |
| `tol` | `1.5*degree` | the angle within which modes merge, and the accuracy of the ascent |
| `maxIter` | `100` | the largest number of steps of the ascent |
| `radius` | `inf` | only the seeds within this angle of their mode count to its weight; MATLAB's 'angle' |
| `exact` | `False` | keep the modes of less than one percent |
| `verbose` | `True` | report the progress |

## Output

| `modes` | orientation, the modal orientations |
| `weights` | ndarray, the weight of every mode, the volume of the component |
| `centerId` | ndarray, the index of the mode every seed flowed into, numbered from 0, -1 for a dropped mode |

## See also

[SO3Fun.max](SO3Fun.max_py.html), [SO3Fun.volume](SO3Fun.volume_py.html), [ODFComponents](ODFComponents_py.html)

## Used on

[ODFComponents](ODFComponents_py.html)

MATLAB's [SO3Fun.calcComponents](SO3Fun.calcComponents.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L871">source</a></font>
{% endraw %}
