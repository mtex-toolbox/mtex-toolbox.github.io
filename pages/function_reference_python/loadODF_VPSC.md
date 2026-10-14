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

A VPSC texture file:

```python
odf = loadODF('TEX_PH1.OUT', cs)
```

Its densities with another kernel:

```python
odf = loadODF('TEX_PH1.OUT', cs, halfwidth=5*degree)
```

A function through the values of a table:

```python
odf = loadODF('odf.txt', CS=cs, columnNames=['phi1', 'Phi', 'phi2', 'value'])
```

Kernels centred at the orientations of a table:

```python
odf = loadODF('ori.txt', cs, 'density', halfwidth=10*degree)
```

A file whose fourth line names a convention letter (B, K or R) and a count is a VPSC texture
file: every block of weighted orientations becomes one density, calcDensity with the
weights, a list of them for several blocks, the strain, the ellipsoid, the orientations and
the further columns kept in odf.opt; the crystal frame is cubic unless given, since the file
carries none. Any other file is a generic table of Euler angles and one more column:
'interp' fits a function through the values (interpolate, with bandwidth, lambda_, maxIter
and tol), 'density' centres kernels of those masses (halfwidth, resolution); without
either, varying values mean 'interp' and equal ones 'density'. The angles are degrees when
one exceeds 15 unless radians=True; columnNames name the columns and columns, counted from
0 where MATLAB counts from 1, place them; 'Bunge' (the default), 'ZYZ', ... the convention.
The crystal frame is passed positionally or as CS=, the specimen frame as SS=.

## Input

| | |
|---|---|
| `fname` | the name of the file |

## Output

| | |
|---|---|
| `odf` | an SO3Fun, or a list of them for a VPSC file of several blocks |

## Keywords

| | default | |
|---|---|---|
| `interface` | `None` | 'VPSC' or 'generic', which the content decides when not given; the other keywords go to the reader of the interface |

## See also

[exportODF](exportODF_py.html), [calcDensity](calcDensity_py.html), [interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [loadOrientation](loadOrientation_py.html)

MATLAB's [loadODF_VPSC](loadODF_VPSC.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/loadodf.py#L143">source</a></font>
{% endraw %}
