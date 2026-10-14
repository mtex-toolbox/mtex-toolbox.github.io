---
title: 'exportOrientation'
sidebar: function_reference_sidebar
permalink: exportOrientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
orientations written to a text file, as a table of Euler angles or quaternions with further
columns, or as a VPSC texture file; export(ori, fname) calls it

## Syntax

Bunge Euler angles in degree:

```python
export(ori, fname)
```

Another convention, in radians:

```python
export(ori, fname, 'Matthies', radians=True)
```

The four quaternion components:

```python
export(ori, fname, quaternion=True)
```

Further columns:

```python
export(ori, fname, {'area': grains.area})
```

The VPSC texture file:

```python
export(ori, fname, 'Bunge', interface='VPSC', weights=w)
```

The table has one row per orientation, the columns named in a header line: phi1, Phi, phi2
for Bunge, alpha, beta, gamma for Matthies and ZYZ, Psi, Theta, Phi for Roe, Psi, Theta, phi
for Kocks, or a, b, c, d; every entry of a dictionary among the arguments adds a column, as
MATLAB's struct does. loadOrientation reads it back. The VPSC file, MATLAB's export_VPSC,
has four header lines and the weights, normalised to sum to one, in the fourth column; it
takes the conventions Bunge, Kocks and Roe.

## Input

| | |
|---|---|
| `ori` | orientation |
| `fname` | the name of the file |
| `args` | the Euler convention, 'Bunge', 'Matthies', 'ZYZ', 'Roe' or 'Kocks', and dictionaries of further columns, one value per orientation |

## Keywords

| | default | |
|---|---|---|
| `radians` | `False` | the angles in radians instead of degree |
| `quaternion` | `False` | the quaternion components instead of Euler angles |
| `interface` | `None` | None for the table, 'VPSC' for the VPSC texture file |
| `weights` | `None` | the weights of the orientations in the VPSC file, equal by default |

## See also

[loadOrientation](loadOrientation_py.html), [export](SO3Fun.export_py.html), [quaternion.Euler](quaternion.Euler_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/exportorientation.py#L40">source</a></font>
{% endraw %}
