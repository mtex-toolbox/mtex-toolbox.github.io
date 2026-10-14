---
title: 'simulateEBSD.simulateEBSD'
sidebar: function_reference_sidebar
permalink: simulateEBSD.simulateEBSD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: simulateEBSD.simulateEBSD.html
status: Reference
---
{% raw %}
a simulated map whose answer is known: a job holding the settings, the grid xdim, ydim and
stepSize, the orientations ori0, the noise and the features, and the map EBSDsim at the current
stage, which every verb rewrites

## Syntax

```python
eS = simulateEBSD()
eS.makeMap()
eS.addFeature('simpleGradient')
eS.addNoise()
```

## Signature

```python
simulateEBSD()
```

## Used on

[EBSDSimulation](EBSDSimulation_py.html)

MATLAB's [simulateEBSD.simulateEBSD](simulateEBSD.simulateEBSD.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/simulate.py#L38">source</a></font>
{% endraw %}
