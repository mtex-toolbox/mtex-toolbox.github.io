---
title: 'slipSystem.trace'
sidebar: function_reference_sidebar
permalink: slipSystem.trace_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: slipSystem.trace.html
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the trace of the slip plane in the surface normal to a direction, the xy plane by default

## Syntax

<div class="mx-form" markdown="1">

```python
t = (ori * sS).trace()
```

The traces in the map plane.

</div>

<div class="mx-form" markdown="1">

```python
t = (ori * sS).trace(xvector)
```

In the plane normal to x.

</div>

## Description

The direction of the line in which the slip plane meets the surface, n x nrm normalised,
an axis.

## Input

| `sS` | slipSystem, usually rotated into specimen coordinates |
| `nrm` | vector3d, the normal of the surface, by default z |

## Output

| `t` | vector3d, antipodal |

## See also

[slipSystem.rotate](slipSystem.rotate_py.html), [calcTraces](EBSD.calcTraces_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
slipSystem.trace(self, nrm=None)
```

</div>

MATLAB's [slipSystem.trace](slipSystem.trace.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L251">source</a></font>
{% endraw %}
