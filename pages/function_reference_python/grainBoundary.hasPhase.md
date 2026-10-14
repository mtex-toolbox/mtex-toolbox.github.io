---
title: 'grainBoundary.hasPhase'
sidebar: function_reference_sidebar
permalink: grainBoundary.hasPhase_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the segments between the two phases named, in either order, or with one named on either
side; MATLAB's grainBoundary.hasPhase

## Syntax

<div class="mx-form" markdown="1">

```python
ind = gB.hasPhase('Forsterite')
```

A Forsterite grain on either side.

</div>

<div class="mx-form" markdown="1">

```python
ind = gB.hasPhase('Forsterite', 'Enstatite')
```

Between Forsterite and Enstatite.

</div>

<div class="mx-form" markdown="1">

```python
ind = gB.hasPhase('indexed')
```

Between two indexed measurements.

</div>

## Description

A phase is named by its mineral or its phase id. A not indexed phase includes the rim of
the scan, as MATLAB's hasPhaseId: gB.hasPhase('notIndexed') takes the segments with a not
indexed side or with the rim on one, and gB.hasPhase('notIndexed', 'Forsterite') the rim
of the Forsterite grains too. Without a phase of that name in the list, 'indexed' takes the
segments between two indexed measurements and 'notIndexed' the others. gB['Forsterite']
selects by this.

## Input

| `gB` | grainBoundary |
| `a` | the first phase, a mineral name or a phase id |

## Keywords

| keyword | default | description |
|---|---|---|
| `b` | `None` | the second phase; the segments with a on either side when not given |

## Output

| `ind` | a boolean per segment |

## See also

[grainBoundary.flip](grainBoundary.flip_py.html), [grainBoundary.isTwinning](grainBoundary.isTwinning_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L351">source</a></font>
{% endraw %}
