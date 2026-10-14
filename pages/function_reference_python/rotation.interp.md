---
title: 'rotation.interp'
sidebar: function_reference_sidebar
permalink: rotation.interp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.interp.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

interp(ori, values, 'harmonic' | 'bingham'): a function on SO(3) through
values at the rotations, by the function spaces above this layer, MATLAB's rotation/interp

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = ori.interp(values)
```

A sum of kernels about the nodes.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = ori.interp(values, halfwidth=10*degree, density=True)
```

A density by a given kernel.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = ori.interp(values, 'harmonic', bandwidth=16)
```

In harmonic form.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = ori.interp(values, 'bingham')
```

A Bingham distribution.

</div>

## Description

The method is the flag, and every keyword goes on to it; interpSO3 lists them.

## Input

| `ori` | rotation or orientation, the nodes |
| `values` | the values at the nodes, or vectors for a vector field |
| `flags` | 'harmonic' or 'bingham' |

## Output

| `SO3F` | SO3FunRBF, SO3FunHarmonic, SO3FunBingham or a vector field |

## See also

[interpSO3](interpSO3_py.html), [interpolateRBF](interpolateRBF_py.html), [interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [calcBinghamODF](orientation.calcBinghamODF_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
rotation.interp(self, values=None, *flags, **kwargs)
```

</div>

MATLAB's [rotation.interp](rotation.interp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L552">source</a></font>
{% endraw %}
