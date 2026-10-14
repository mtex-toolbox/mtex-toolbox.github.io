---
title: 'orientation.symmetrise'
sidebar: function_reference_sidebar
permalink: orientation.symmetrise_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.symmetrise.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

all crystallographically equivalent orientations; MATLAB's orientation.symmetrise

## Syntax

Every equivalent, (numL * numR,) + ori.shape:

```python
oriSym = ori.symmetrise()
```

The distinct ones, a flat list:

```python
oriSym = ori.symmetrise(unique=True)
```

The equivalents are l * ori * r over the elements l of the group of the target frame and r of
the source frame; a misorientation with grain exchange adds their inverses.

## Input

| | |
|---|---|
| `ori` | orientation |

## Output

| | |
|---|---|
| `oriSym` | orientation |

## Keywords

| | default | |
|---|---|---|
| `unique` | `False` | keep only the distinct equivalents, as a flat list |

## See also

[orientation.projectIntoFundamentalRegion](orientation.project2FundamentalRegion_py.html), [vector3d.symmetrise](vector3d.symmetrise_py.html)

MATLAB's [orientation.symmetrise](orientation.symmetrise.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L433">source</a></font>
{% endraw %}
