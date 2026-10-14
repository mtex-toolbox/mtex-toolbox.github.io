---
title: 'refractiveIndexTensor.opticalAxis'
sidebar: function_reference_sidebar
permalink: refractiveIndexTensor.opticalAxis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: refractiveIndexTensor.opticalAxis.html
status: Reference
---
{% raw %}
A method of [refractiveIndexTensor](refractiveIndexTensor_index_py.html).

the optical axes of a refractive index tensor, the directions along which the two
refractive indices coincide and the birefringence vanishes; MATLAB's opticalAxis

## Syntax

One axis for a uniaxial, two for a biaxial crystal:

```python
oA = rI.opticalAxis()
```

Principal indices closer than 1e-4 taken as equal:

```python
oA = opticalAxis(rI, tol=1e-4)
```

An isotropic tensor, all three principal indices equal, has no optical axis and gives an
empty list.

## Input

| | |
|---|---|
| `rI` | refractiveIndexTensor |

## Output

| | |
|---|---|
| `oA` | the optical axes as axes in the frame of rI |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-08` | the difference below which two principal indices count as equal |

## See also

[refractiveIndexTensor.birefringence](refractiveIndexTensor.birefringence_py.html), [BirefringenceDemo](BirefringenceDemo_py.html)

## Used on

[BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [refractiveIndexTensor.opticalAxis](refractiveIndexTensor.opticalAxis.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/optics.py#L104">source</a></font>
{% endraw %}
