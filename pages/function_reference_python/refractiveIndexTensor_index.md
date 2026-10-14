---
title: 'The class refractiveIndexTensor'
sidebar: function_reference_sidebar
permalink: refractiveIndexTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: refractiveIndexTensor_index.html
status: Reference
---
{% raw %}
the rank two symmetric refractive index tensor, whose anisotropy makes a crystal birefringent

```python
rI = refractiveIndexTensor(M, cs)
```

## Members

| | |
|---|---|
| [birefringence](refractiveIndexTensor.birefringence_py.html) | the birefringence for light along vprop: the index difference and the fast and the slow polarisation axis |
| [opticalAxis](refractiveIndexTensor.opticalAxis_py.html) | the optical axes of a refractive index tensor: the directions along which the two indices coincide, one for a uniaxial and two for a biaxial crystal |
| [refractiveIndex](refractiveIndexTensor.refractiveIndex_py.html) | the refractive index in the direction v, n_ij v_i v_j |
| [refractiveIndexTensor](refractiveIndexTensor.refractiveIndexTensor_py.html) | the rank two symmetric refractive index tensor, whose anisotropy makes a crystal birefringent |
| [spectralTransmission](refractiveIndexTensor.spectralTransmission_py.html) | the rgb colour of light along vprop through a plate of thickness nanometres between a polariser and an analyser at the angle phi, the fast wave at the angle tau to the polariser or, given the polarizationDirection, at the angle it makes with it |

## Used on

[BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [refractiveIndexTensor_index](refractiveIndexTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1187">source</a></font>
{% endraw %}
