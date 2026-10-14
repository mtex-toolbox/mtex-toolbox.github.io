---
title: 'fibonacciSO3Grid'
sidebar: function_reference_sidebar
permalink: fibonacciSO3Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
MATLAB's fibonacciSO3Grid: the super-Fibonacci spiral of round(8 pi^2 / resolution^3) nodes
over SO(3), one node per resolution^3 of its volume, trimmed to the fundamental region; points
sets the resolution from the volume fraction of the region instead, antipodal=True halves it

## Syntax

```python
fibonacciSO3Grid(CS, SS=None, resolution=5*degree, points=None, antipodal=False)
```

```python
S3G = fibonacciSO3Grid(cs)
S3G = fibonacciSO3Grid(cs, ss, points=10000)
S3G = fibonacciSO3Grid(cs, ss, resolution=2.5*degree)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/superfibonacci.py#L108">source</a></font>
{% endraw %}
