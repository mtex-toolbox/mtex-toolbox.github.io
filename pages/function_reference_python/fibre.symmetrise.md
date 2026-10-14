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

<div class="mx-form" markdown="1">

```python
fS = f.symmetrise()
```

Every equivalent, numSS * numCS x shape.

</div>

<div class="mx-form" markdown="1">

```python
fS = f.symmetrise(unique=True)
```

The distinct ones of a single fibre.

</div>

## Description

The equivalent fibres run from s * o1 * inv(g) about g * h, over the elements s of the
specimen group and g of the crystal group. MATLAB's second output, the number of distinct
ones, is f.multiplicity().

## Input

| `f` | fibre |

## Keywords

| keyword | default | description |
|---|---|---|
| `unique` | `False` | keep only the distinct fibres, those whose h and r differ (a single fibre only) |

## Output

| `fS` | fibre |

## See also

[fibre.multiplicity](fibre.multiplicity_py.html), [orientation.symmetrise](orientation.symmetrise_py.html)

MATLAB's [fibre.symmetrise](fibre.symmetrise.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L280">source</a></font>
{% endraw %}
