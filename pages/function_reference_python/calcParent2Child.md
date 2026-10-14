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
calcParent2Child(c2c, p2c0), calcParent2Child(childOri, p2c0), calcParent2Child(c2c, p2c0, local=True)

## Syntax

```python
calcParent2Child(mori, p2c, local=False, quantile=0.9, threshold=inf, maxIteration=30, maxSample=50000, searchResolution=4*degree, scanSample=250, numLocal=5, verbose=True, fit=False)
```

The parent to child orientation relationship fitted to child to child misorientations,
or to pairs of child orientations: the trimmed chordal misfit of the misorientations to
the nearest child to child misorientation the relationship predicts, minimised by a
fixed point iteration from p2c0 and, unless local, from the best basins of a scan over
the misorientation space. quantile is the share of the misorientations the fit is based
on, misorientations misfitting by more than threshold are treated as outliers; with
fit=True the disorientation angle of every misorientation to the result comes too.

## Used on

[MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html), [MartensiteVariants](MartensiteVariants_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html)

MATLAB's [calcParent2Child](calcParent2Child.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/parent2child.py#L186">source</a></font>
{% endraw %}
