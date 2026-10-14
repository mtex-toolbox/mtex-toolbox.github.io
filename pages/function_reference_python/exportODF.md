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

<div class="mx-form" markdown="1">

```python
export(odf, 'odf.txt', resolution=10*degree)
```

The values on a regular Euler grid.

</div>

<div class="mx-form" markdown="1">

```python
export(odf, 'odf.txt', 'ZYZ', radians=True)
```

In the ZYZ convention, the angles in radians.

</div>

<div class="mx-form" markdown="1">

```python
export(odf, 'odf.txt', S3G)
```

The values on a grid of orientations.

</div>

<div class="mx-form" markdown="1">

```python
export(odf, 'odf.mtex', interface='mtex')
```

The components, human readable.

</div>

<div class="mx-form" markdown="1">

```python
export(odf, 'odf-vpsc.txt', 'VPSC', points=5000)
```

A sample of orientations for VPSC.

</div>

## Description

The interface, by keyword or as a positional 'generic', 'mtex' or 'VPSC', chooses the file:

- 'generic', the default: a header naming the frames and the columns, then one row per node
with the Euler angles and the value. The nodes are those of an SO3Grid passed, else a
regular grid over the Euler box of the frames with the step resolution= (5 degree).
- 'mtex': the uniform, fibre and radial components with their kernels and weights, human
readable; a harmonic component is noted as not written.
- 'VPSC': the file of export(ori, fname, interface='VPSC') over points= (10000) orientations
drawn from the function.

The angles are in degrees unless radians=True, in the Bunge convention unless 'ZYZ' (or
'ABG', 'Matthies') is given. Keywords the interface does not know are ignored.

## Input

| `odf` | an SO3Fun |
| `fname` | the name of the file |

## Keywords

| keyword | default | description |
|---|---|---|
| `interface` | `None` | 'generic' (the default), 'mtex' or 'VPSC'; the other keywords, resolution, radians and points, go to the writer of the interface |

## See also

[loadODF](loadODF_VPSC_py.html), [exportOrientation](exportOrientation_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/exportodf.py#L117">source</a></font>
{% endraw %}
