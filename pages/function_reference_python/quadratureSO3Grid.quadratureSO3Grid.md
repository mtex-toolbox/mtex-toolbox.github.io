---
title: 'quadratureSO3Grid.quadratureSO3Grid'
sidebar: function_reference_sidebar
permalink: quadratureSO3Grid.quadratureSO3Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quadratureSO3Grid.quadratureSO3Grid.html
status: Reference
---
{% raw %}
the quadrature grid on SO(3) of bandwidth L: equispaced Euler angles alpha and gamma and a
Clenshaw-Curtis or Gauss-Legendre rule in beta, reduced by the folds about z of the frames

## Syntax

```python
quadratureSO3Grid(bandwidth, *args, rA=None, rB=None, dtype=<class 'numpy.float64'>)
```

```python
quadratureSO3Grid(L)
quadratureSO3Grid(L, CS, SS, 'GaussLegendre')
```

## Used on

[SO3FunQuadrature](SO3FunQuadrature_py.html)

MATLAB's [quadratureSO3Grid.quadratureSO3Grid](quadratureSO3Grid.quadratureSO3Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L100">source</a></font>
{% endraw %}
