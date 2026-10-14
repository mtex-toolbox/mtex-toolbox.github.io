---
title: 'orientation.calcTensor'
sidebar: function_reference_sidebar
permalink: orientation.calcTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.calcTensor.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the texture average of a single crystal tensor

## Syntax

```python
orientation.calcTensor(x, *args, average='Voigt', weights=None)
```

```python
calcTensor(odf, T)                       over an ODF, the Voigt average
calcTensor(odf, T, 'Reuss'), 'Hill'      the inverse averaged and inverted, and the mean of the two
calcTensor(ori, T, weights=w)            over a list of orientations
calcTensor(ebsd, T1, T2, 'all')          over a map, one tensor per phase, the triple Voigt, Reuss, Hill
```

MATLAB's [orientation.calcTensor](orientation.calcTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/texture.py#L59">source</a></font>
{% endraw %}
