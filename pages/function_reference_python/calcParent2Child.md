---
title: 'calcParent2Child'
sidebar: function_reference_sidebar
permalink: calcParent2Child_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: calcParent2Child.html
status: Reference
---
{% raw %}
the parent to child orientation relationship that fits child to child misorientations
best, refined from an initial guess

## Syntax

<div class="mx-form" markdown="1">

```python
p2c = calcParent2Child(c2c, p2c0)
```

From child to child misorientations.

</div>

<div class="mx-form" markdown="1">

```python
p2c = calcParent2Child(childOri, p2c0)
```

From pairs of child orientations.

</div>

<div class="mx-form" markdown="1">

```python
p2c = calcParent2Child(c2c, p2c0, quantile=0.8)
```

The fit on the best 80 percent.

</div>

<div class="mx-form" markdown="1">

```python
p2c = calcParent2Child(c2c, p2c0, local=True)
```

Iterate from p2c0 only.

</div>

<div class="mx-form" markdown="1">

```python
p2c, fit = calcParent2Child(c2c, p2c0, fit=True)
```

With the misfit of every misorientation.

</div>

## Description

Two children of one parent grain are related by a misorientation the relationship predicts,
V_i^-1 V_j for two of its variants. The fitted relationship minimises the trimmed chordal
misfit of the measured misorientations to the nearest predicted one, taken over the share
quantile of the smallest misfits, by a fixed point iteration.

With local=True the iteration starts from p2c0 alone. By default it also starts from the
best basins of a scan over all relationships, so that a poor start still finds the global
minimum; p2c0 refined on its own remains a candidate.

Pairs of child orientations, an (n, 2) array in the specimen frame, are turned into their
misorientations. The progress is reported unless verbose=False.

## Input

| `c2c` | orientation, child to child misorientations |
| `childOri` | orientation, (n, 2) pairs of child orientations |
| `p2c0` | orientation, the initial guess of the parent to child relationship |

## Keywords

| keyword | default | description |
|---|---|---|
| `local` | `False` | iterate from p2c0 only, without the scan |
| `quantile` | `0.9` | the share of the misorientations the fit is based on |
| `threshold` | `inf` | misorientations misfitting by more than this angle are outliers |
| `maxIteration` | `30` | the largest number of iterations |
| `maxSample` | `50000` | fit on at most this many misorientations, a random subsample of the rest |
| `searchResolution` | `4*degree` | the resolution of the grid of the scan |
| `scanSample` | `250` | the number of misorientations that rank the basins of the scan |
| `numLocal` | `5` | the number of basins of the scan fitted locally |
| `verbose` | `True` | report the progress |
| `fit` | `False` | also return the misfit of every misorientation, MATLAB's second output |

## Output

| `p2c` | orientation, the fitted parent to child relationship |
| `fit` | the disorientation angle of every misorientation to the nearest predicted one |

## References

- T. Nyyssonen et al., Crystallography, morphology, and martensite transformation of prior austenite in intercritically annealed high-aluminum steel, Metall. Mater. Trans. A 49 (2018), doi:10.1007/s11661-018-4904-9

## See also

[calcParent](calcParent_py.html), [parentGrainReconstructor.calcParent2Child](parentGrainReconstructor.calcParent2Child_py.html), [misfit](misfit_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html)

## Used on

[MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html), [MartensiteVariants](MartensiteVariants_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html)

MATLAB's [calcParent2Child](calcParent2Child.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/parent2child.py#L186">source</a></font>
{% endraw %}
