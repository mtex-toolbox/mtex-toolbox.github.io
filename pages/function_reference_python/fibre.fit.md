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

<div class="mx-form" markdown="1">

```python
f = fibre.fit(ori)
```

The fibre through the orientations.

</div>

<div class="mx-form" markdown="1">

```python
f, lam, delta = fibre.fit(ori, diagnostics=True)
```

With the eigenvalues and the mean angle.

</div>

<div class="mx-form" markdown="1">

```python
f = fibre.fit(ori, symmetry=False)
```

The orientations as stored.

</div>

## Description

The fibre is the plane of the two leading eigenvectors of the quaternion tensor of the
orientations, after they are moved to the symmetric equivalents nearest their mean. This
is MATLAB's 'local' fit of a concentrated cloud, the one algorithm here; MATLAB's fit to an
ODF is not taken. The result is a full fibre, with r in the upper hemisphere.

## Input

| `ori` | orientation |
| `args` | 'local', MATLAB's flag, accepted |

## Keywords

| keyword | default | description |
|---|---|---|
| `diagnostics` | `False` | also return lam and delta, MATLAB's second and third outputs |
| `symmetry` | `True` | move the orientations to the equivalents nearest their mean first; False takes them as stored |

## Output

| `f` | fibre, full |
| `lam` | the eigenvalues of the quaternion tensor, ascending and summing to one (diagnostics) |
| `delta` | the mean angle of the orientations to the fibre (diagnostics) |

## See also

[fibre.angle](fibre.angle_py.html), [orientation.mean](orientation.mean_py.html)

MATLAB's [fibre.fit](fibre.fit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L382">source</a></font>
{% endraw %}
