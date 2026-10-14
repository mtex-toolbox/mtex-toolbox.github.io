---
title: 'latticeType.freeAngles'
sidebar: function_reference_sidebar
permalink: latticeType.freeAngles_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [latticeType](latticeType_index_py.html).

which of alpha, beta and gamma the lattice leaves independent

## Syntax

<div class="mx-form" markdown="1">

```python
free = latticeType.monoclinic.freeAngles()
```

Beta, the unique axis b.

</div>

<div class="mx-form" markdown="1">

```python
free = latticeType.monoclinic.freeAngles(uniqueAxis=2)
```

Gamma, the unique axis c.

</div>

## Description

A triclinic lattice leaves all three angles free, a monoclinic one the angle between the
two axes perpendicular to its unique axis, every other lattice none.

## Input

| `lat` | latticeType |

## Keywords

| keyword | default | description |
|---|---|---|
| `uniqueAxis` | `1` | the unique axis of a monoclinic lattice, 0, 1 or 2 for a, b or c |

## Output

| `free` | three bools, for alpha, beta and gamma |

## See also

[latticeType.freeLengths](latticeType.freeLengths_py.html), [crystalFrame](crystalFrame_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/latticetype.py#L46">source</a></font>
{% endraw %}
