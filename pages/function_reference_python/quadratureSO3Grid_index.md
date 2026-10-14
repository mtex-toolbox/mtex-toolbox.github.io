---
title: 'The class quadratureSO3Grid'
sidebar: function_reference_sidebar
permalink: quadratureSO3Grid_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the quadrature grid on SO(3) of bandwidth L: equispaced Euler angles alpha and gamma and a
Clenshaw-Curtis or Gauss-Legendre rule in beta, reduced by the folds about z of the frames

```python
quadratureSO3Grid(L)
quadratureSO3Grid(L, CS, SS, 'GaussLegendre')
```

## Members

| | |
|---|---|
| [flatten](quadratureSO3Grid.flatten_py.html) | the distinct nodes, MATLAB's grid(:) |
| [fromHalf](quadratureSO3Grid.fromHalf_py.html) | values at halfNodes() spread onto all nodes, in the order of nodes() |
| [fullGrid](quadratureSO3Grid.fullGrid_py.html) | MATLAB's view of the grid: the nodes that differ under the symmetries, on which an evaluator need be called, and the full grid |
| [fullValues](quadratureSO3Grid.fullValues_py.html) | values at the distinct nodes spread onto the full grid, values at the full grid kept |
| [halfNodes](quadratureSO3Grid.halfNodes_py.html) | the nodes beta <= pi/2 as orientations, where a 2-fold axis perpendicular to z on either side maps them onto the rest of the grid |
| [nodes](quadratureSO3Grid.nodes_py.html) | the nodes as orientations in the frames of the grid, beta fastest, then alpha, then gamma |
| [quadratureSO3Grid](quadratureSO3Grid.quadratureSO3Grid_py.html) | the quadrature grid on SO(3) of bandwidth L: equispaced Euler angles alpha and gamma and a Clenshaw-Curtis or Gauss-Legendre rule in beta, reduced by the folds about z of the frames |
| [shape](quadratureSO3Grid.shape_py.html) | the shape of the grid, the numbers of gamma, alpha and beta nodes |
| [size](quadratureSO3Grid.size_py.html) | the number of the distinct nodes, MATLAB's numel(grid) |
| [weights](quadratureSO3Grid.weights_py.html) | the quadrature weights of the nodes, in the order of nodes() |

## Used on

[SO3FunQuadrature](SO3FunQuadrature_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L100">source</a></font>
{% endraw %}
