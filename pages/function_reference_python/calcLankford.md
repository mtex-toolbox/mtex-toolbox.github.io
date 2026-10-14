---
title: 'calcLankford'
sidebar: function_reference_sidebar
permalink: calcLankford_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: calcLankford.html
status: Reference
---
{% raw %}
the Lankford coefficients of a sheet texture: for every angle theta to the rolling
direction the normalised plastic work is minimised over the strain ratio rho, and
R = rho/(1 - rho) at the minimum; returns R per angle, the work over rho and theta, and
its minimum per angle

## Syntax

```python
calcLankford(x, sS, *args, theta=None, rho=None, RD=None, ND=None, weights=None, bandwidth=16)
```

```python
R, M, minM = calcLankford(ori, sS, theta=, rho=, RD=xvector, ND=zvector, weights=)
R, M, minM = calcLankford(odf, sS, theta=, rho=)
```

## Used on

[Lankford](Lankford_py.html)

MATLAB's [calcLankford](calcLankford.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/texture.py#L165">source</a></font>
{% endraw %}
