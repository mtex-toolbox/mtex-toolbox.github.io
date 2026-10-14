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
the map corrected for a pseudo symmetry of one phase, detected by the tortuosity of its
boundaries; MATLAB's cleanUpPseudoSym

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd, grains, numChanged = cleanUpPseudoSym(ebsd, grains, psSym)
```

Tortuosity above 1.5.

</div>

<div class="mx-form" markdown="1">

```python
ebsd, grains, numChanged = cleanUpPseudoSym(ebsd, grains, psSym, threshold=2)
```

Only the more tortuous.

</div>

## Description

A pseudo symmetry is a rotation which is not a symmetry of the crystal but maps the
diffraction pattern almost onto itself, so the indexing picks between the two solutions at
random. The boundaries this leaves follow the indexing noise and are much longer than the
distance between their ends. The boundaries of the phase within delta of psSym are grouped
into connected components; a component of more than four segments whose length exceeds
threshold times the diagonal of its bounding box is an artefact, the grains across it are
merged, and every measurement of a grain that absorbed another is moved by the operator
that brings it nearest the merged grain's mean orientation.

The operators ori * s * psSym for every symmetry element s are generated internally, so
psSym, its inverse or any equivalent misorientation give the same result. The phase is the
one of psSym's crystal frame, one phase per call. The boundaries should not have been
smoothed, which destroys the tortuosity. As calcGrains, it alters the map it is given, its
rotations and grain ids, and grains gets the parentId of the merge.

## Input

| `ebsd` | EBSD with the grain ids calcGrains stores |
| `grains` | grain2d of the map |
| `psSym` | orientation, a misorientation of the phase with itself (psSym.CS is psSym.SS) |

## Keywords

| keyword | default | description |
|---|---|---|
| `delta` | `2*degree` | the largest angle between a boundary misorientation and psSym |
| `threshold` | `1.5` | the smallest tortuosity, the length of a component over the diagonal of its bounding box, taken for an artefact |

## Output

| `ebsd` | EBSD, the map passed, corrected |
| `grains` | grain2d, the merged grains |
| `numChanged` | the number of measurements whose orientation changed |

## See also

[EBSDPseudoSymmetry](EBSDPseudoSymmetry_py.html), [grain2d.merge](grain2d.merge_py.html), [calcGrains](EBSD.calcGrains_py.html)

## Used on

[EBSDPseudoSymmetry](EBSDPseudoSymmetry_py.html)

MATLAB's [cleanUpPseudoSym](cleanUpPseudoSym.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/pseudosym.py#L37">source</a></font>
{% endraw %}
