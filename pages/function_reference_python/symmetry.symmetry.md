---
title: 'symmetry.symmetry'
sidebar: function_reference_sidebar
permalink: symmetry.symmetry_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.symmetry.html
status: Reference
---
{% raw %}
a point group: the closure of the generators its Hermann-Mauguin symbol names, written in
the given axes; also from its elements or its number among the point groups, the Laue classes
or the space groups

## Syntax

```python
symmetry(name=None, axes=None, *, pointId=None, laueId=None, spaceId=None, abg=None)
```

```python
pg = symmetry('m-3m')
pg = symmetry(pointId=32)
pg = symmetry(spaceId=225)
```

MATLAB's [symmetry.symmetry](symmetry.symmetry.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L172">source</a></font>
{% endraw %}
