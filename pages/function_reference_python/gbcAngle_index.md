---
title: 'The class gbcAngle'
sidebar: function_reference_sidebar
permalink: gbcAngle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the criterion of a threshold on the misorientation angle: one angle, or a high and a low
angle threshold, the pair counting as the share of the levels it stays below; a list of
other than two numbers, or of lists, gives every phase its own, one entry per indexed phase
or per entry of ebsd.CSList as MATLAB's cell; byPhase gives a phase thresholds by its name

## Syntax

```python
gbcAngle(10*degree)
gbcAngle([10*degree, 2*degree])
```

One per indexed phase:

```python
gbcAngle([[10*degree], [15*degree, 2*degree]])
```

```python
gbcAngle(10*degree, byPhase={'Forsterite': 15*degree})
```

## Members

| | |
|---|---|
| [evaluate](gbcAngle.evaluate_py.html) | the connectivity of the pairs i[k], j[k]: the share of the angle levels their misorientation stays below, 0 across phases, 1 between not indexed measurements |
| [levelsFor](gbcAngle.levelsFor_py.html) | the levels of a phase: its own from byPhase or the per phase list, else the common ones |

## Used on

[GrainReconstructionAdvanced](GrainReconstructionAdvanced_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/criteria.py#L136">source</a></font>
{% endraw %}
