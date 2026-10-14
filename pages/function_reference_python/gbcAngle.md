---
title: 'The class gbcAngle'
sidebar: function_reference_sidebar
permalink: gbcAngle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: gbcAngle.html
status: Reference
---
{% raw %}
the criterion of a threshold on the misorientation angle: one angle, or a high and a low
angle threshold, the pair counting as the share of the levels it stays below; byPhase gives
a phase thresholds of its own

## Syntax

```python
gbcAngle(10*degree)
gbcAngle([10*degree, 2*degree])
gbcAngle(10*degree, byPhase={'Forsterite': 15*degree})
```

## Members

| | |
|---|---|
| [evaluate](gbcAngle.evaluate_py.html) | the connectivity of the pairs i[k], j[k]: the share of the angle levels their misorientation stays below, 0 across phases, 1 between not indexed measurements |
| [levelsFor](gbcAngle.levelsFor_py.html) | the levels of a phase: its own from byPhase or the per phase list, else the common ones |

## Used on

[GrainReconstructionAdvanced](GrainReconstructionAdvanced_py.html)

MATLAB's [gbcAngle](gbcAngle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/criteria.py#L124">source</a></font>
{% endraw %}
