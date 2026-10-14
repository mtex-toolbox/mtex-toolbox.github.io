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
the quadrature grid on SO(3) of a bandwidth: the nodes and weights that integrate every
harmonic function up to that degree exactly

## Syntax

Clenshaw-Curtis in beta, no symmetry:

```python
G = quadratureSO3Grid(L)
```

Gauss-Legendre, reduced by the frames:

```python
G = quadratureSO3Grid(bandwidthFor(L, cs), cs, ss, 'GaussLegendre')
```

Reduced by fourfold and twofold folds about z:

```python
G = quadratureSO3Grid(15, rA=4, rB=2)
```

The nodes and their weights:

```python
ori, w = G.nodes(), G.weights
```

The Euler angles alpha and gamma are equispaced, 2L + 2 of each, and beta follows a
Clenshaw-Curtis rule, the default, or a Gauss-Legendre rule. The frames' rotations about z
shorten the alpha range by the specimen fold rB and the gamma range by the crystal fold rA,
which must divide 2L + 2: bandwidthFor(L, cs, ss) gives the next bandwidth that they divide.
The weights sum to one, the Haar measure. Unlike MATLAB's, the grid is not itself an
orientation: G.nodes() gives the orientations, beta fastest, and G.weights the weights.

## Input

| | |
|---|---|
| `bandwidth` | int, the degree up to which the rule is exact |
| `CS, SS` | crystalFrame and specimenFrame (positional, optional) |
| `scheme` | 'ClenshawCurtis' (default) or 'GaussLegendre' (positional, optional) |

## Output

| | |
|---|---|
| `G` | quadratureSO3Grid |

## Keywords

| | default | |
|---|---|---|
| `rA` |  | the fold about z on the crystal side, without frames |
| `rB` |  | the fold about z on the specimen side, without frames |
| `dtype` |  | the floating point type of the angles and weights |

## See also

[bandwidthFor](bandwidthFor_py.html), [SO3FunHarmonic.quadrature](SO3FunHarmonic.quadrature_py.html), [regularSO3Grid](regularSO3Grid_py.html), [SO3FunQuadrature](SO3FunQuadrature_py.html)

## Members

| | |
|---|---|
| [flatten](quadratureSO3Grid.flatten_py.html) | the distinct nodes, MATLAB's grid(:) |
| [fromHalf](quadratureSO3Grid.fromHalf_py.html) | values at halfNodes() spread onto all nodes, in the order of nodes() |
| [fullGrid](quadratureSO3Grid.fullGrid_py.html) | MATLAB's view of the grid: the nodes that differ under the symmetries, on which an evaluator need be called, and the full grid |
| [fullValues](quadratureSO3Grid.fullValues_py.html) | values at the distinct nodes spread onto the full grid, values at the full grid kept |
| [halfNodes](quadratureSO3Grid.halfNodes_py.html) | the nodes beta <= pi/2 as orientations, where a 2-fold axis perpendicular to z on either side maps them onto the rest of the grid |
| [nodes](quadratureSO3Grid.nodes_py.html) | the nodes as orientations in the frames of the grid, beta fastest, then alpha, then gamma |
| [quadratureSO3Grid](quadratureSO3Grid.quadratureSO3Grid_py.html) | the quadrature grid on SO(3) of a bandwidth: the nodes and weights that integrate every harmonic function up to that degree exactly |
| [shape](quadratureSO3Grid.shape_py.html) | the shape of the grid, the numbers of gamma, alpha and beta nodes |
| [size](quadratureSO3Grid.size_py.html) | the number of the distinct nodes, MATLAB's numel(grid) |
| [weights](quadratureSO3Grid.weights_py.html) | the quadrature weights of the nodes, in the order of nodes() |

## Used on

[SO3FunQuadrature](SO3FunQuadrature_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L100">source</a></font>
{% endraw %}
