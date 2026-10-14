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

<div class="mx-form" markdown="1">

```python
rgb = rI.spectralTransmission(vprop, thickness)
```

Polariser at 45 degree to the fast wave.

</div>

<div class="mx-form" markdown="1">

```python
rgb = rI.spectralTransmission(vprop, thickness, polarizationDirection=p)
```

A polariser direction.

</div>

<div class="mx-form" markdown="1">

```python
rgb = rI.spectralTransmission(vprop, thickness, tau=30*degree, phi=90*degree)
```

The angles given.

</div>

<div class="mx-form" markdown="1">

```python
r, g, b = rI.spectralTransmission(thickness, bandwidth=64)
```

Functions of the propagation direction.

</div>

## Description

The light propagates along vprop through a plate of the given thickness. The two waves the
refractive index tensor allows along it leave with a retardation, the birefringence times
the thickness, and the analyser lets through what their interference leaves of every
wavelength.

The transmitted spectrum is weighted with the CIE 1931 colour matching functions and given
as Adobe RGB, one colour per direction. The values are not clipped: a channel may lie
slightly below 0 or above 1.

With the thickness alone the three channels are S2FunHarmonic of the propagation
direction, which plot draws as the interference colours of every direction. MATLAB
returns them as one vector valued function.

## Input

| `rI` | refractiveIndexTensor |
| `vprop` | vector3d or Miller, the propagation direction of the light, in the frame of rI |
| `thickness` | the thickness of the plate in nanometres (30 micrometre = 30000) |

## Keywords

| keyword | default | description |
|---|---|---|
| `polarizationDirection` | `None` | vector3d, the direction of the polariser; the angle between it and the fast wave replaces tau |
| `tau` | `45*degree` | the angle between the polariser and the vibration direction of the fast wave |
| `phi` | `90*degree` | the angle between the polariser and the analyser; 90 degree for crossed polarisers |
| `bandwidth` | `32` | the bandwidth of the three functions when no direction is given |

## Output

| `rgb` | (..., 3) array, the colour of every direction |
| `r, g, b` | S2FunHarmonic, the channels as functions of the propagation direction |

## See also

[refractiveIndexTensor.birefringence](refractiveIndexTensor.birefringence_py.html), [refractiveIndexTensor.refractiveIndex](refractiveIndexTensor.refractiveIndex_py.html), [refractiveIndexTensor.opticalAxis](refractiveIndexTensor.opticalAxis_py.html), [refractiveIndexTensor](refractiveIndexTensor_index_py.html), [BirefringenceDemo](BirefringenceDemo_py.html)

## Used on

[BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [refractiveIndexTensor.spectralTransmission](refractiveIndexTensor.spectralTransmission.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/optics.py#L135">source</a></font>
{% endraw %}
