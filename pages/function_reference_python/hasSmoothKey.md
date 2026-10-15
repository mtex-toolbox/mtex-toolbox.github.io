---
title: 'hasSmoothKey'
sidebar: function_reference_sidebar
permalink: hasSmoothKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a group whose sector neither is bounded by its own mirrors nor folds onto such a half has
no continuous one to one key; the colours jump somewhere on the sector

## Syntax

<div class="mx-form" markdown="1">

```python
hasSmoothKey(crystalFrame('m-3m').sym)
```

True.

</div>

<div class="mx-form" markdown="1">

```python
hasSmoothKey(crystalFrame('-3').sym)
```

False: the colours of -3 jump.

</div>

## Input

| `pg` | symmetry, the point group |

## Keywords

| keyword | default | description |
|---|---|---|
| `sR` | `None` | sphericalRegion, the sector; by default the group's conventional sector |

## Output

| `tf` | bool, whether the boundary planes and the folds are all mirrors of the group the folds generate |

## See also

[sectorFolds](sectorFolds_py.html), [HSVDirectionKey](HSVDirectionKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys/sectorfold.py#L196">source</a></font>
{% endraw %}
