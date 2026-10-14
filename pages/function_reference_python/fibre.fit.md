---
title: 'fibre.fit'
sidebar: function_reference_sidebar
permalink: fibre.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.fit.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the fibre that fits a list of orientations best, MATLAB's fibre.fit

## Syntax

The fibre through the orientations:

```python
f = fibre.fit(ori)
```

With the eigenvalues and the mean angle:

```python
f, lam, delta = fibre.fit(ori, diagnostics=True)
```

The orientations as stored:

```python
f = fibre.fit(ori, symmetry=False)
```

The fibre is the plane of the two leading eigenvectors of the quaternion tensor of the
orientations, after they are moved to the symmetric equivalents nearest their mean. This
is MATLAB's 'local' fit of a concentrated cloud, the one algorithm here; MATLAB's fit to an
ODF is not taken. The result is a full fibre, with r in the upper hemisphere.

## Input

| | |
|---|---|
| `ori` | orientation |
| `args` | 'local', MATLAB's flag, accepted |

## Output

| | |
|---|---|
| `f` | fibre, full |
| `lam` | the eigenvalues of the quaternion tensor, ascending and summing to one (diagnostics) |
| `delta` | the mean angle of the orientations to the fibre (diagnostics) |

## Keywords

| | default | |
|---|---|---|
| `diagnostics` | `False` | also return lam and delta, MATLAB's second and third outputs |
| `symmetry` | `True` | move the orientations to the equivalents nearest their mean first; False takes them as stored |

## See also

[fibre.angle](fibre.angle_py.html), [orientation.mean](orientation.mean_py.html)

MATLAB's [fibre.fit](fibre.fit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L382">source</a></font>
{% endraw %}
