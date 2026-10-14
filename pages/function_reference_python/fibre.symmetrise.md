---
title: 'fibre.symmetrise'
sidebar: function_reference_sidebar
permalink: fibre.symmetrise_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.symmetrise.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the symmetrically equivalent fibres, MATLAB's fibre.symmetrise

## Syntax

Every equivalent, numSS * numCS x shape:

```python
fS = f.symmetrise()
```

The distinct ones of a single fibre:

```python
fS = f.symmetrise(unique=True)
```

The equivalent fibres run from s * o1 * inv(g) about g * h, over the elements s of the
specimen group and g of the crystal group. MATLAB's second output, the number of distinct
ones, is f.multiplicity().

## Input

| | |
|---|---|
| `f` | fibre |

## Output

| | |
|---|---|
| `fS` | fibre |

## Keywords

| | default | |
|---|---|---|
| `unique` | `False` | keep only the distinct fibres, those whose h and r differ (a single fibre only) |

## See also

[fibre.multiplicity](fibre.multiplicity_py.html), [orientation.symmetrise](orientation.symmetrise_py.html)

MATLAB's [fibre.symmetrise](fibre.symmetrise.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L280">source</a></font>
{% endraw %}
