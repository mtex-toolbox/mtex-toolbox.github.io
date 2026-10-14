---
title: 'exportODF'
sidebar: function_reference_sidebar
permalink: exportODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
export(odf, fname, ...): the function on a grid, as its components, or as a VPSC sample;
MATLAB's SO3Fun/export

## Syntax

The values on a regular Euler grid:

```python
export(odf, 'odf.txt', resolution=10*degree)
```

In the ZYZ convention, the angles in radians:

```python
export(odf, 'odf.txt', 'ZYZ', radians=True)
```

The values on a grid of orientations:

```python
export(odf, 'odf.txt', S3G)
```

The components, human readable:

```python
export(odf, 'odf.mtex', interface='mtex')
```

A sample of orientations for VPSC:

```python
export(odf, 'odf-vpsc.txt', 'VPSC', points=5000)
```

The generic file has three header lines naming the frames and the columns and one row per
node, the Euler angles and the value: on an SO3Grid passed, else on a regular grid over the
Euler box of the frames with the step resolution= (5 degree). The angles are in degrees
unless radians=True, in the Bunge convention unless 'ZYZ' (or 'ABG', 'Matthies') is given.
The MTEX file lists the uniform, fibre and radial components with their kernels and weights;
a harmonic component is noted as not written. The VPSC file is the one of
export(ori, fname, interface='VPSC') over points= (10000) orientations drawn from the
function. The interface may also be named by a positional 'generic', 'mtex' or 'VPSC'.

## Input

| | |
|---|---|
| `odf` | an SO3Fun |
| `fname` | the name of the file |

## Keywords

| | default | |
|---|---|---|
| `interface` | `None` | 'generic' (the default), 'mtex' or 'VPSC'; the other keywords, resolution, radians and points, go to the writer of the interface |

## See also

[loadODF](loadODF_VPSC_py.html), [exportOrientation](exportOrientation_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/exportodf.py#L117">source</a></font>
{% endraw %}
