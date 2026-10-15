---
title: 'The class gbcCustom'
sidebar: function_reference_sidebar
permalink: gbcCustom_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: gbcCustom.html
status: Reference
---
{% raw %}
a criterion given as a function of the map and the two measurement indices, or as a
per-pixel property, its values or the name of a property of the map, with the largest
difference that still counts as one grain, gbcCustom('grainId', 0.5)

## Input

| `values` | callable of (ebsd, i, j), per-pixel values, or the name of a pixel property |
| `threshold` | largest allowed difference for values to remain connected; not used for a callable criterion |
| `antipodal` | treat opposite vectors or axes alike in angular comparisons; default False |

## Members

| [evaluate](gbcCustom.evaluate_py.html) | the connectivity of the pairs i[k], j[k]: the function's value, or 1 where the property differs by at most the threshold, as an angle for vectors and orientations, 0 otherwise |

## Used on

[GrainReconstructionAdvanced](GrainReconstructionAdvanced_py.html)

MATLAB's [gbcCustom](gbcCustom.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/criteria/__init__.py#L279">source</a></font>
{% endraw %}
