---
title: 'parentGrainReconstructor.calcParent2Child'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcParent2Child_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcParent2Child.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

the parent to child orientation relationship job.p2c refined on the boundaries of the
map; MATLAB's calcParent2Child of the job

## Syntax

<div class="mx-form" markdown="1">

```python
job.calcParent2Child()
```

Fitted to the parent to child and the child to child boundaries.

</div>

<div class="mx-form" markdown="1">

```python
job.calcParent2Child(c2c=True, quantile=0.8)
```

To the child to child boundaries alone.

</div>

<div class="mx-form" markdown="1">

```python
job.calcParent2Child(p2c=True, threshold=3*degree)
```

To the parent to child boundaries alone.

</div>

<div class="mx-form" markdown="1">

```python
job.calcParent2Child(orientation.NishiyamaWassermann(job.csParent, job.csChild))
```

From another start.

</div>

## Description

Two fits are made and combined, weighted by their numbers of boundaries:

- parent to child: where the parent phase covers more than one percent of the map, the
misorientations of the parent to child boundaries closer to the current relationship than
threshold and than the quantile of all of them are averaged, three times.
- child to child: where the relationship is more than 5 degree from the identity, or with
c2c, the child to child misorientations above 5 degree are fitted by calcParent2Child of
the misorientations, the iteration of Nyyssönen et al.

Further keywords go to calcParent2Child of the misorientations: local, maxIteration,
searchResolution, verbose, ...

job.p2c is replaced. The variants keep their numbers through job.variantMap, the variant of
the old relationship that every new one is closest to.

## Input

| `job` | parentGrainReconstructor, with job.p2c or p2c0 set |
| `p2c0` | orientation, the start of the fit instead of job.p2c |

## Keywords

| keyword | default | description |
|---|---|---|
| `p2c` | `False` | fit to the parent to child boundaries alone |
| `c2c` | `False` | fit to the child to child boundaries alone |
| `threshold` | `None` | the misorientations further than this from the start are left out, 5 degree for the parent to child boundaries |
| `quantile` | `None` | the share of the misorientations closest to the start that is fitted, 0.5 for the parent to child boundaries |
| `useP2C` | `True` | combine the fit to the child to child boundaries with that to the parent to child ones; False keeps the first alone |

## References

- T. Nyyssönen, M. Isakov, P. Peura, V.-T. Kuokkala, Crystallography, morphology, and martensite transformation of prior austenite in intercritically annealed high-aluminum steel, Metall. Mater. Trans. A 49 (2018), doi:10.1007/s11661-018-4904-9

## See also

[calcParent2Child](calcParent2Child_py.html), [parentGrainReconstructor.calcGBFit](parentGrainReconstructor.calcGBFit_py.html), [orientation.KurdjumovSachs](orientation.KurdjumovSachs_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcParent2Child](parentGrainReconstructor.calcParent2Child.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L674">source</a></font>
{% endraw %}
