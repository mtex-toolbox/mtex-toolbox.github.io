---
title: 'The class simulateEBSD'
sidebar: function_reference_sidebar
permalink: simulateEBSD_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: simulateEBSD_index.html
status: Reference
---
{% raw %}
a simulated map whose answer is known: a job holding the settings, the grid xdim, ydim and
stepSize, the orientations ori0, the noise and the features, and the map EBSDsim at the current
stage, which every verb rewrites

## Syntax

<div class="mx-form" markdown="1">

```python
eS = simulateEBSD()
eS.makeMap()
eS.addFeature('simpleGradient')
eS.addNoise()
```

</div>

## Members

| [addFeature](simulateEBSD.addFeature_py.html) | a known feature added to the map: 'singleStep', a domain turned by moriAngle about axS |
| [addNoise](simulateEBSD.addNoise_py.html) | every orientation turned on the specimen side about a random axis by a random angle: uniform up to noiseMax, or lognormal scaled so that the largest is noiseMax (MATLAB's addnoise) |
| [CS](simulateEBSD.CS_py.html) | the crystal frame is the one of ori0 |
| [makeMap](simulateEBSD.makeMap_py.html) | the map of ori0 over the grid, every measurement of the one phase, gridded |
| [simulateEBSD](simulateEBSD.simulateEBSD_py.html) | a simulated map whose answer is known: a job holding the settings, the grid xdim, ydim and stepSize, the orientations ori0, the noise and the features, and the map EBSDsim at the current stage, which every verb rewrites |

## Used on

[EBSDSimulation](EBSDSimulation_py.html)

MATLAB's [simulateEBSD_index](simulateEBSD_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/simulate.py#L38">source</a></font>
{% endraw %}
