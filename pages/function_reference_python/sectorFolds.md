---
title: 'sectorFolds'
sidebar: function_reference_sidebar
permalink: sectorFolds_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the folds of a group's sector, in the order they are applied. Every fold halves the
sector and flips the half between the white centre and the black one; the loop stops when
every boundary plane is a mirror of the group the folds have generated. The groups -1, -3
and -4 have no such fold and no smooth one to one key; hasSmoothKey says so. -3 and -4 fold
their wedge once all the same; the hemisphere of -1 has no plane to single out and stays
whole, white at its pole, as MATLAB's key

## Syntax

```python
sectorFolds(pg, sR=None, tol=1e-06)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectorfold.py#L111">source</a></font>
{% endraw %}
