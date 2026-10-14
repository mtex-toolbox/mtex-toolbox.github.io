---
title: 'refractiveIndexTensor.spectralTransmission'
sidebar: function_reference_sidebar
permalink: refractiveIndexTensor.spectralTransmission_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: refractiveIndexTensor.spectralTransmission.html
status: Reference
---
{% raw %}
A method of [refractiveIndexTensor](refractiveIndexTensor_index_py.html).

the rgb colour of light along vprop through a plate of thickness nanometres between a
polariser and an analyser at the angle phi, the fast wave at the angle tau to the
polariser or, given the polarizationDirection, at the angle it makes with it; a list of
directions gives one colour per direction; with the thickness alone, the three channels
as functions on the sphere of the bandwidth given

## Syntax

```python
refractiveIndexTensor.spectralTransmission(rI, vprop, thickness=None, *, polarizationDirection=None, tau=45*degree, phi=90*degree, bandwidth=32)
```

```python
rgb = spectralTransmission(rI, vprop, thickness)
rgb = spectralTransmission(rI, vprop, thickness, polarizationDirection=p)
rgb = spectralTransmission(rI, vprop, thickness, tau=30*degree, phi=90*degree)
r, g, b = rI.spectralTransmission(thickness, bandwidth=64)  # functions of the propagation direction
```

## Used on

[BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [refractiveIndexTensor.spectralTransmission](refractiveIndexTensor.spectralTransmission.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/optics.py#L101">source</a></font>
{% endraw %}
