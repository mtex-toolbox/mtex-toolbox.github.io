---
title: 'orientation.project2EulerFR'
sidebar: function_reference_sidebar
permalink: orientation.project2EulerFR_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.project2EulerFR.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

return Bunge Euler angles of symmetry-equivalent representatives in the plotting box.

## Syntax

<div class="mx-form" markdown="1">

```python
phi1, Phi, phi2 = ori.projectIntoEulerRegion()
```

</div>

## Description

The three numeric arrays are in radians and have the shape of ori. The bounds of the
Euler box follow the input symmetries. This returns coordinates rather than a modified
orientation container.

## See also

orientation.Euler, [orientation.projectIntoFundamentalRegion](orientation.project2FundamentalRegion_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
orientation.project2EulerFR(self)
```

</div>

MATLAB's [orientation.project2EulerFR](orientation.project2EulerFR.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L854">source</a></font>
{% endraw %}
