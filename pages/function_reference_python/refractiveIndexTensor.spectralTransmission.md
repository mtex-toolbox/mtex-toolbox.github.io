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

the colour of white light passing a birefringent plate between a polariser and an analyser,
as a thin section shows it under the microscope

## Syntax

Polariser at 45 degree to the fast wave:

```python
rgb = rI.spectralTransmission(vprop, thickness)
```

A polariser direction:

```python
rgb = rI.spectralTransmission(vprop, thickness, polarizationDirection=p)
```

The angles given:

```python
rgb = rI.spectralTransmission(vprop, thickness, tau=30*degree, phi=90*degree)
```

Functions of the propagation direction:

```python
r, g, b = rI.spectralTransmission(thickness, bandwidth=64)
```

The light propagates along vprop through a plate of the given thickness; the two waves the
refractive index tensor allows along it leave with a retardation, the birefringence times
the thickness, and the analyser lets through what their interference leaves of every
wavelength. The spectrum is weighted with the CIE 1931 colour matching functions and given
as Adobe RGB. A list of directions gives one colour per direction. With the thickness alone
the three channels are S2FunHarmonic of the propagation direction, which plot draws as
the interference colours of every direction.

## Input

| | |
|---|---|
| `rI` | refractiveIndexTensor |
| `vprop` | vector3d or Miller, the propagation direction of the light, in the frame of rI |
| `thickness` | the thickness of the plate in nanometres (30 micrometre = 30000) |

## Output

| | |
|---|---|
| `rgb` | (..., 3) array, the colour of every direction |
| `r, g, b` | S2FunHarmonic, the channels as functions of the propagation direction |

## Keywords

| | default | |
|---|---|---|
| `polarizationDirection` | `None` | vector3d, the direction of the polariser; the angle between it and the fast wave replaces tau |
| `tau` | `45*degree` | the angle between the polariser and the vibration direction of the fast wave |
| `phi` | `90*degree` | the angle between the polariser and the analyser; 90 degree for crossed polarisers |
| `bandwidth` | `32` | the bandwidth of the three functions when no direction is given |

## See also

[refractiveIndexTensor.birefringence](refractiveIndexTensor.birefringence_py.html), [refractiveIndexTensor.refractiveIndex](refractiveIndexTensor.refractiveIndex_py.html), [refractiveIndexTensor.opticalAxis](refractiveIndexTensor.opticalAxis_py.html), [refractiveIndexTensor](refractiveIndexTensor_index_py.html), [BirefringenceDemo](BirefringenceDemo_py.html)

## Used on

[BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [refractiveIndexTensor.spectralTransmission](refractiveIndexTensor.spectralTransmission.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/optics.py#L101">source</a></font>
{% endraw %}
