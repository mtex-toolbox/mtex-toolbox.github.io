---
title: 'Grain boundary criteria'
sidebar: function_reference_sidebar
permalink: grainBoundaryCriteria_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundaryCriteria_index.html
status: Reference
---
{% raw %}
Criteria used by calcGrains to decide which neighbouring measurements belong to one grain.

| Class or function | Description |
| --- | --- |
| [grainBoundaryCriterion](grainBoundaryCriterion_index_py.html) | the base of the grain boundary criteria: how connected pairs of neighbouring measurements are, 1 no boundary, 0.5 a low angle boundary inside a grain, 0 a boundary |
| [gbcAngle](gbcAngle_index_py.html) | the criterion of a threshold on the misorientation angle: one angle, or a high and a low angle threshold, the pair counting as the share of the levels it stays below |
| [gbcSoft](gbcSoft_index_py.html) | a smooth transition instead of a threshold, so a pair near the threshold is joined or not by how far it is from it rather than by which side it fell on |
| [gbcEqual](gbcEqual_index_py.html) | two measurements belong together when the values of a property agree, which is how a segmentation by variant, by parent grain or by any imported label is done |
| [gbcCustom](gbcCustom_index_py.html) | a criterion given as a function of the map and the two measurement indices, or as a per-pixel property, its values or the name of a property of the map, with the largest difference that still counts as one grain, gbcCustom('grainId', 0.5) |
| [gbcFMC](gbcFMC_index_py.html) | the grain boundary criterion of fast multiscale clustering |
| [connectivity](connectivity_py.html) | connectivity(crit, ebsd, i, j) is crit.evaluate(ebsd, i, j): the connectivity of the pairs of neighbouring measurements |
{% endraw %}
