---
title: 'inversePoles'
sidebar: function_reference_sidebar
permalink: inversePoles_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the inverse poles: the crystal directions that lie along the specimen direction r, over
the distinct equivalents of r under the specimen group; MATLAB's inv(ori) * symmetrise(r)

## Syntax

<div class="mx-form" markdown="1">

```python
h = inversePoles(ori, zvector)
```

The crystal directions along z.

</div>

<div class="mx-form" markdown="1">

```python
h = inversePoles(ori, zvector, antipodal=True)
```

As axes.

</div>

## Description

They are what plotIPF draws for a list of orientations, which folds them into the
fundamental sector of the crystal; here they are not folded. An axis and its antipode
count once when antipodal is asked for, r is an axis, or -r is an equivalent of r.

## Input

| `ori` | orientation, shaped (...) |
| `r` | vector3d, one specimen direction |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | count an axis and its antipode once |

## Output

| `h` | vector3d in the crystal frame, shaped (..., m) over the m distinct equivalents of r |

## See also

[poles](poles_py.html), [plotIPF](SO3Fun.plotIPDF_py.html), [ipfColorKey](ipfColorKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/poles.py#L83">source</a></font>
{% endraw %}
