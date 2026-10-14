---
title: 'The class gbcSoft'
sidebar: function_reference_sidebar
permalink: gbcSoft_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a smooth transition instead of a threshold, so a pair near the threshold is joined or
not by how far it is from it rather than by which side it fell on

## Members

| [evaluate](gbcSoft.evaluate_py.html) | the connectivity of the pairs i[k], j[k]: one minus the error function step of width w about the threshold at their misorientation angle, 0 across phases |
| [levelsFor](gbcSoft.levelsFor_py.html) | the threshold and the width of the transition for phase p, its own from byPhase or the common ones |

## Used on

[GrainReconstructionAdvanced](GrainReconstructionAdvanced_py.html), [GrainReconstructionMCL](GrainReconstructionMCL_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/criteria.py#L211">source</a></font>
{% endraw %}
