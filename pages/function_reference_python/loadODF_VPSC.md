---
title: 'loadODF_VPSC'
sidebar: function_reference_sidebar
permalink: loadODF_VPSC_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: loadODF_VPSC.html
status: Reference
---
{% raw %}
the ODF a file holds, the interface told by its content: a VPSC texture file or a generic
table; MATLAB's SO3Fun.load, loadODF_generic and loadODF_VPSC

## Syntax

<div class="mx-form" markdown="1">

```python
odf = loadODF('TEX_PH1.OUT', cs)
```

A VPSC texture file.

</div>

<div class="mx-form" markdown="1">

```python
odf = loadODF('TEX_PH1.OUT', cs, halfwidth=5*degree)
```

Its densities with another kernel.

</div>

<div class="mx-form" markdown="1">

```python
odf = loadODF('odf.txt', CS=cs, columnNames=['phi1', 'Phi', 'phi2', 'value'])
```

A function through the values of a table.

</div>

<div class="mx-form" markdown="1">

```python
odf = loadODF('ori.txt', cs, 'density', halfwidth=10*degree)
```

Kernels centred at the orientations of a table.

</div>

## Description

The content decides the interface:

- 'VPSC': a file whose fourth line names a convention letter (B, K or R) and a count. Every
block of weighted orientations becomes one density, calcDensity with the weights, a list
of them for several blocks. The strain, the ellipsoid, the orientations and the further
columns are kept in odf.opt. The file names no crystal frame, so it is cubic unless given.
- 'generic': a table of Euler angles and one more column; it needs the crystal frame.

A generic table is read as one of two kinds. 'interp' fits a function through the values
(interpolate, with bandwidth, lambda_, maxIter and tol); 'density' centres kernels of those
masses (halfwidth, resolution). Without either, varying values mean 'interp' and equal ones
'density'.

The angles of a table are degrees when one exceeds 15, unless radians=True. columnNames
name the columns and columns place them, counted from 0 where MATLAB counts from 1; 'Bunge'
(the default), 'ZYZ', ... give the convention. The crystal frame is passed positionally or
as CS=, the specimen frame as SS=.

## Input

| `fname` | the name of the file |

## Keywords

| keyword | default | description |
|---|---|---|
| `interface` | `None` | 'VPSC' or 'generic', which the content decides when not given; the other keywords go to the reader of the interface |

## Output

| `odf` | an SO3Fun, or a list of them for a VPSC file of several blocks |

## See also

[exportODF](exportODF_py.html), [calcDensity](calcDensity_py.html), [interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [loadOrientation](loadOrientation_py.html)

MATLAB's [loadODF_VPSC](loadODF_VPSC.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/loadodf.py#L143">source</a></font>
{% endraw %}
