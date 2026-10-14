---
title: 'BinghamODF'
sidebar: function_reference_sidebar
permalink: BinghamODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: BinghamODF.html
status: Reference
---
{% raw %}
BinghamODF(kappa, U), BinghamODF(kappa, cs), BinghamODF(20, ori), BinghamODF(20, f), BinghamODF([10, 10, 10], quaternion.id, cs)

## Syntax

```python
BinghamODF(kappa, A=None, *frames, **kwargs)
```

A Bingham distribution from four concentrations and four orthogonal quaternion axes, the
axes as a 4x4 matrix, four orientations, or one orientation standing for the identity
basis; fewer concentrations are padded with zeros; a fibre takes its two axes with the
same concentration, as MATLAB's constructor does.

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [BinghamODFs](BinghamODFs_py.html), [SO3FunDefinition](SO3FunDefinition_py.html)

MATLAB's [BinghamODF](BinghamODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L295">source</a></font>
{% endraw %}
