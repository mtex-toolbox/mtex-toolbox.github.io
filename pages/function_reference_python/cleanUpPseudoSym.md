---
title: 'cleanUpPseudoSym'
sidebar: function_reference_sidebar
permalink: cleanUpPseudoSym_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: cleanUpPseudoSym.html
status: Reference
---
{% raw %}
the map corrected for the pseudo symmetry psSym, a misorientation of one phase with itself:
the boundaries of that phase within delta of it are grouped into connected components, the
components longer than threshold times the diagonal of their bounding box and of more than
four segments are taken for indexing artefacts, the grains across them are merged, and
every measurement of a grain that absorbed another is moved to the operator that brings it
nearest the merged grain's mean orientation. As calcGrains, it alters the map it is given,
its rotations and grain ids, and grains gets the parentId of the merge; MATLAB's three
outputs are returned

## Syntax

```python
cleanUpPseudoSym(ebsd, grains, psSym, delta=2*degree, threshold=1.5)
```

## Used on

[EBSDPseudoSymmetry](EBSDPseudoSymmetry_py.html)

MATLAB's [cleanUpPseudoSym](cleanUpPseudoSym.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/pseudosym.py#L37">source</a></font>
{% endraw %}
