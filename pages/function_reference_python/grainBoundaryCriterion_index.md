---
title: 'The class grainBoundaryCriterion'
sidebar: function_reference_sidebar
permalink: grainBoundaryCriterion_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the base of the grain boundary criteria: how connected pairs of neighbouring measurements are,
1 no boundary, 0.5 a low angle boundary inside a grain, 0 a boundary; a subclass implements
evaluate, and calling the criterion evaluates it

## Members

| [evaluate](grainBoundaryCriterion.evaluate_py.html) | the connectivity of the pairs of neighbouring measurements i[k], j[k] of a map, one value in [0, 1] per pair |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/criteria.py#L30">source</a></font>
{% endraw %}
