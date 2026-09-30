---
title: 'Exporting Vectors'
sidebar: documentation_sidebar
permalink: VectorsExport_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: VectorsExport.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/VectorsExport.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Vectors/VectorsExport.py">edit page</a></font>

<!--introduction-->

[export](vector3d.export.html) writes a `vector3d` array as a whitespace-separated text
table. Each vector occupies one row, and the first row names the columns.
[vector3d.load](vector3d.load.html) can read the table back, so the format is useful for
another program or a later MTEX session.

This page assumes that Cartesian components, polar angle, and azimuth are familiar. See
[Defining Three-Dimensional Vectors](VectorDefinition_py.html) for their definitions.

```python
import os
import tempfile
```

```python
import numpy as np
```

```python
from mtex import *
```

```python
plottingConvention.default('y↑→x')
```

```python
# five unit directions with distinct polar angles and azimuths
v = vector3d.byPolar(np.arange(10, 91, 20) * degree, np.arange(-80, 81, 40) * degree)
```

The examples deliberately reuse the same temporary filename. Each call to `export`
replaces the file instead of appending rows.

```python
fname = os.path.join(tempfile.mkdtemp(), 'vectors.txt')
```

## Cartesian Coordinates

By default, `export` writes the stored $$x$$, $$y$$, and $$z$$ components. Cartesian export
retains vector-length information.

```python
export(v, fname)
print(open(fname).read())
```

```text
        x         y           z
0.0301537  -0.17101    0.984808
 0.383022 -0.321394    0.866025
 0.766044         0    0.642788
 0.719846  0.604023     0.34202
 0.173648  0.984808 6.12323e-17
```

The heading identifies the three coordinate columns. The next five rows are the five
vectors in array order.

## Spherical Angles

The option `'polar'` writes polar angle and azimuth instead. Angles are in degrees by
default; add `radians=True` to write radians.

This representation contains directions only. It does not include vector length, so use
Cartesian coordinates when magnitudes matter.

```python
export(v, fname, 'polar')
print(open(fname).read())
```

```text
polar angle azimuth angle
         10           280
         30           320
         50             0
         70            40
         90            80
```

The two headings remain `polar angle` and `azimuth angle` for either angular unit. Record
the unit with the file because the table does not.

## Additional Columns

Values that belong to the vectors, such as an intensity, weight, or density, can travel
in the same table. Pass them in a dict with one value per vector. Each entry becomes a
column with its key as the heading.

```python
S = {'weight': np.arange(1, 6) / 15}
```

```python
export(v, fname, S)
print(open(fname).read())
```

```text
        x         y           z    weight
0.0301537  -0.17101    0.984808 0.0666667
 0.383022 -0.321394    0.866025  0.133333
 0.766044         0    0.642788       0.2
 0.719846  0.604023     0.34202  0.266667
 0.173648  0.984808 6.12323e-17  0.333333
```

The `weight` column is fourth, and its row order remains aligned with the Cartesian
coordinates.

## Reading the File Back

Supply every column name to recover both the vectors and their associated values.
`loadVector3d` returns the columns that are not coordinates as its second output, a dict
like the one that was written.

```python
vNew, SNew = loadVector3d(fname, columnNames=['x', 'y', 'z', 'weight'])
```

```python
maxAngleError = np.max(angle(v, vNew)) / degree
maxAngleError
```

```text
3.3451e-05
```

---

```python
maxWeightError = np.max(np.abs(S['weight'] - SNew['weight']))
maxWeightError
```

```text
3.3333e-07
```

The maximum angular error is $$3.3461 \times 10^{-5}$$ degrees, and the maximum weight
error is $$3.3333 \times 10^{-7}$$. Both come from the six significant digits written by
the default `%g` numeric format rather than from the in-memory values.

```python
# remove the temporary file
os.remove(fname)
```

## What the Table Does Not Record

A reference frame is the coordinate system in which data are expressed. It has an
identity, a basis, and a default convention for drawing it. The text table records none
of these, and it does not say whether opposite directions represent the same physical
axis. Keep that information with the exported file before exchanging or archiving it.

For a higher-precision text representation, extract the coordinate arrays and use a
writer with an explicit numeric format.

## Further Reading

* N. I. Fisher, T. Lewis, and B. J. J. Embleton,
  [Statistical Analysis of Spherical Data](https://doi.org/10.1017/CBO9780511623059),
  Cambridge University Press, 1987. Chapter 2 defines spherical coordinate systems and
  distinguishes directed from undirected data.
* D. Goldberg, [What Every Computer Scientist Should Know About Floating-Point Arithmetic](https://doi.org/10.1145/103162.103163),
  _ACM Computing Surveys_ 23(1), 1991, explains rounding and conversion between binary
  floating-point values and decimal text.
* [IEEE 754-2019, Standard for Floating-Point Arithmetic](https://standards.ieee.org/ieee/754/6210/)
  specifies binary and decimal floating-point formats and their interchange.
* M. D. Wilkinson et al., [The FAIR Guiding Principles for scientific data management and stewardship](https://doi.org/10.1038/sdata.2016.18),
  _Scientific Data_ 3, 160018, 2016, explains why reusable data need machine-readable
  context as well as numeric values.

## Next

[Import](VectorsImport_py.html) develops column mappings and associated data in more detail.
Continue through this chapter with [Vector Operations](VectorsOperations_py.html). To save a
whole figure rather than its underlying data, read
[Exporting Figures](PlottingExport_py.html).

## Technical Details

The azimuth written by `'polar'` is derived from the components and lies in
$$[0, 360)$$ degrees, so the two negative azimuths above appear as $$280$$ and $$320$$. MATLAB
remembers the angle a vector was constructed with and writes $$-80$$ and $$-40$$; the
directions are the same.
{% endraw %}
