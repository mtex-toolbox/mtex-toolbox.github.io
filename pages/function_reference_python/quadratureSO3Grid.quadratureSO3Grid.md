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
the quadrature grid on SO(3) of a bandwidth: the nodes and weights that integrate every
harmonic function up to that degree exactly

## Syntax

<div class="mx-form" markdown="1">

```python
G = quadratureSO3Grid(L)
```

Clenshaw-Curtis in beta, no symmetry.

</div>

<div class="mx-form" markdown="1">

```python
G = quadratureSO3Grid(bandwidthFor(L, cs), cs, ss, 'GaussLegendre')
```

Gauss-Legendre, reduced by the frames.

</div>

<div class="mx-form" markdown="1">

```python
G = quadratureSO3Grid(15, rA=4, rB=2)
```

Reduced by fourfold and twofold folds about z.

</div>

<div class="mx-form" markdown="1">

```python
ori, w = G.nodes(), G.weights
```

The nodes and their weights.

</div>

## Description

The Euler angles alpha and gamma are equispaced, 2L + 2 of each, and beta follows a
Clenshaw-Curtis rule, the default, or a Gauss-Legendre rule. The frames' rotations about z
shorten the alpha range by the specimen fold rB and the gamma range by the crystal fold rA,
which must divide 2L + 2: bandwidthFor(L, cs, ss) gives the next bandwidth that they divide.
The weights sum to one, the Haar measure. Unlike MATLAB's, the grid is not itself an
orientation: G.nodes() gives the orientations, beta fastest, and G.weights the weights.

## Input

| `bandwidth` | int, the degree up to which the rule is exact |
| `CS, SS` | crystalFrame and specimenFrame (positional, optional) |
| `scheme` | 'ClenshawCurtis' (default) or 'GaussLegendre' (positional, optional) |

## Keywords

| keyword | default | description |
|---|---|---|
| `rA` | `None` | the fold about z on the crystal side, without frames |
| `rB` | `None` | the fold about z on the specimen side, without frames |
| `dtype` | `<class 'numpy.float64'>` | the floating point type of the angles and weights |

## Output

| `G` | quadratureSO3Grid |

## See also

[bandwidthFor](bandwidthFor_py.html), [SO3FunHarmonic.quadrature](SO3FunHarmonic.quadrature_py.html), [regularSO3Grid](regularSO3Grid_py.html), [SO3FunQuadrature](SO3FunQuadrature_py.html)

## Used on

[SO3FunQuadrature](SO3FunQuadrature_py.html)

MATLAB's [quadratureSO3Grid.quadratureSO3Grid](quadratureSO3Grid.quadratureSO3Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L131">source</a></font>
{% endraw %}
