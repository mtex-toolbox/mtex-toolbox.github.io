---
title: 'S2FunTri.mean'
sidebar: function_reference_sidebar
permalink: S2FunTri.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunTri.mean.html
status: Reference
---
{% raw %}
A method of [S2FunTri](S2FunTri_index_py.html).

estimate the spherical mean using Voronoi areas around the sample vertices.

## Syntax

<div class="mx-form" markdown="1">

```python
average = f.mean()
```

</div>

## Description

Each vertex value is weighted by the area represented by that vertex. Return one
number per stored function. The mean is normalised by the total area, so a constant
function has its constant value rather than that value times `4*pi`.

## See also

[S2FunHarmonic.mean](S2FunHarmonic.mean_py.html), S2FunTri.values

## Signature

<div class="mx-form" markdown="1">

```python
S2FunTri.mean(self)
```

</div>

MATLAB's [S2FunTri.mean](S2FunTri.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funtri.py#L109">source</a></font>
{% endraw %}
