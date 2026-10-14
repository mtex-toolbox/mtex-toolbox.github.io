---
title: 'millerLabel'
sidebar: function_reference_sidebar
permalink: millerLabel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a direction of a crystal frame as its rounded indices, the direct basis first and the
reciprocal one if that does not round, in the brackets of one direction; None if neither

## Syntax

'[111]':

```python
millerLabel(Miller(1, 1, 1, cs, 'uvw'), cs)
```

'[1-11]', the minus written out:

```python
millerLabel(Miller(1, -1, 1, cs, 'uvw'), cs, utf8=False)
```

None: no small indices:

```python
millerLabel(vector3d(1, np.pi/10, 0), cs)
```

The direction is rounded to small indices in the direct basis (uvw, UVTW for trigonal and
hexagonal frames) and then in the reciprocal one (hkl, hkil); the first that reaches it
within 1e-4 radians is written, in the brackets of a direction.

## Input

| | |
|---|---|
| `v` | vector3d, the direction |
| `fr` | crystalFrame |

## Output

| | |
|---|---|
| `s` | str or None |

## Keywords

| | default | |
|---|---|---|
| `utf8` | `None` | write negative indices with an overline; by default the preference UTF8Output |

## See also

[Miller](Miller_py.html), [round](round_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L653">source</a></font>
{% endraw %}
