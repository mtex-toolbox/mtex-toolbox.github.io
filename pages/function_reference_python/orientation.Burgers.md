---
title: 'orientation.Burgers'
sidebar: function_reference_sidebar
permalink: orientation.Burgers_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the Burgers orientation relationship between bcc and hcp, (110) || (0001) and
[-11-1] || [2-1-10], from csParent to csChild; a hexagonal parent gives the inverse of the one
from the child

## Syntax

```python
p2c = orientation.Burgers(csBeta, csAlpha)
```

## Signature

```python
orientation.Burgers(csParent, csChild)
```

## Used on

[LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [ParentChildVariants](ParentChildVariants_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/standardorientations.py#L113">source</a></font>
{% endraw %}
