---
title: 'identifyGroup'
sidebar: function_reference_sidebar
permalink: identifyGroup_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the symbol of a list of elements written in the given axes, '' when it names no group

## Syntax

'-3m1' for a trigonal crystal:

```python
s = identifyGroup(cs.sym.rot, axes=cs.sym.axes)
```

In orthonormal axes x, y, z:

```python
s = identifyGroup(els)
```

The groups whose elements have the same angles and parities are tried in turn; the first
whose closure in the axes is the list names it. A group in a setting no symbol spells
takes the type its angles say.

## Input

| | |
|---|---|
| `els` | orthogonalTransform, the elements of the group |

## Output

| | |
|---|---|
| `s` | str, the Hermann-Mauguin symbol |

## Keywords

| | default | |
|---|---|---|
| `axes` | `None` | the crystal axes a, b, c as a vector3d or a 3 x 3 array, rows, by default the orthonormal ones; the secondary symbols depend on them, '-3m1' and '-31m' differing by the place of a |

## See also

[symmetry](symmetry_index_py.html), [findPointGroup](findPointGroup_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L614">source</a></font>
{% endraw %}
