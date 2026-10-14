---
title: 'fibreODF'
sidebar: function_reference_sidebar
permalink: fibreODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibreODF.html
status: Reference
---
{% raw %}
a fibre ODF, symmetric about the fibre of the orientations taking a crystal direction to a
specimen direction, its shape a kernel on the sphere

## Syntax

The de la Vallee Poussin kernel of halfwidth 10 degree:

```python
odf = fibreODF(h, r)
```

Another halfwidth:

```python
odf = fibreODF(h, r, halfwidth=15*degree)
```

The S2 kernel psi, also kernel=psi:

```python
odf = fibreODF(h, r, psi)
```

The specimen frame named:

```python
odf = fibreODF(h, r, ss)
```

From a fibre f, one weight per fibre:

```python
odf = fibreODF(f, weights=w)
```

The ODF is SO3FunCBF, the kernel of the angle between g h and r, the weights normalised to a
mean of one. Several crystal and specimen directions give several fibres.

## Input

| | |
|---|---|
| `h` | Miller, the crystal directions, or a fibre |
| `r` | vector3d, the specimen directions |
| `args` | specimenFrame and an S2Kernel |

## Output

| | |
|---|---|
| `odf` | SO3FunCBF |

## Keywords

| | default | |
|---|---|---|
| `kernel` | `None` | S2Kernel, the shape; by default the de la Vallee Poussin kernel |
| `halfwidth` | `None` | the halfwidth of the default kernel, 10 degree unless given |
| `weights` | `None` | one weight per fibre |

## See also

[unimodalODF](unimodalODF_py.html), [uniformODF](uniformODF_py.html), [FourierODF](FourierODF_py.html), [BinghamODF](BinghamODF_py.html), [SO3FunCBF](SO3FunCBF_index_py.html), [FibreODFs](FibreODFs_py.html)

## Used on

[OrientationFibre](OrientationFibre_py.html), [ClusterDemo](ClusterDemo_py.html), [OptimalKernel](OptimalKernel_py.html), [BinghamODFs](BinghamODFs_py.html), [EulerAngleSections](EulerAngleSections_py.html), [FibreODFs](FibreODFs_py.html), [ODFCharacteristics](ODFCharacteristics_py.html), [ODFExport](ODFExport_py.html), [ODFInversePoleFigure](ODFInversePoleFigure_py.html), [ODFPlot](ODFPlot_py.html), [ODFPoleFigure](ODFPoleFigure_py.html), [RandomSampling](RandomSampling_py.html)

MATLAB's [fibreODF](fibreODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L989">source</a></font>
{% endraw %}
