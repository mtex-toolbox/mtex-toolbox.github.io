---
title: 'slipSystem.symmetrise'
sidebar: function_reference_sidebar
permalink: slipSystem.symmetrise_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: slipSystem.symmetrise.html
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the systems of every family: the pairs of the orbits that stay orthogonal, both signs of
the Burgers vector unless antipodal

## Syntax

24 systems of fcc, both slip directions:

```python
sSAll = sS.symmetrise()
```

12, one sign of each:

```python
sSAll = sS.symmetrise(antipodal=True)
```

With the system each one comes from:

```python
sSAll, id = sS.symmetrise(return_index=True)
```

For every system the symmetrically equivalent slip directions and plane normals are
paired where they stay orthogonal. Systems in specimen coordinates are returned as they
are.

## Input

| | |
|---|---|
| `sS` | slipSystem |

## Output

| | |
|---|---|
| `sSAll` | slipSystem |
| `id` | the index into sS of the system each one comes from, MATLAB's second output |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `False` | keep one sign of each slip direction |
| `return_index` | `False` | also return id |

## See also

[slipSystem](slipSystem_index_py.html), [dislocationSystem](dislocationSystem_index_py.html)

MATLAB's [slipSystem.symmetrise](slipSystem.symmetrise.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L156">source</a></font>
{% endraw %}
