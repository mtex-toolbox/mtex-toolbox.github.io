---
title: 'SO3FunHandle.SO3FunHandle'
sidebar: function_reference_sidebar
permalink: SO3FunHandle.SO3FunHandle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHandle.SO3FunHandle.html
status: Reference
---
{% raw %}
a function on SO(3) given by a callable that receives orientations

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHandle(lambda o: np.cos(angle(o, r)), cs)
```

A function of the orientations of cs.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHandle(fun, cs, ss, bandwidth=32)
```

Both frames, the bandwidth of its harmonic form.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHandle(fun, cs, ss, symmetrise=True)
```

Averaged over the groups on every call.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHandle(fun, cs, cs, antipodal=True)
```

With exchange symmetry, f(g) = f(inv(g)).

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHandle(odf)
```

The handle of another SO3Fun.

</div>

## Description

Nothing is precomputed: evaluating the function calls fun on orientations in the frames of
the function, exactly. Every operation that needs coefficients, a pole figure, a
convolution, a rotation, goes through SO3FunHarmonic(SO3F) of the bandwidth. The callable
is trusted to be invariant under the groups unless symmetrise asks for the average.
Exchange symmetry needs the same frame on both sides.

## Input

| `fun` | callable taking an orientation and returning its values, or an SO3Fun |
| `frames` | the crystal frame and the specimen frame, one or both, positionally |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the harmonic form, by default the preference 'defaultSO3Bandwidth' |
| `antipodal` | `False` | exchange symmetry, f(g) = f(inv(g)), for misorientations |
| `real` | `True` | the function takes only real values; the imaginary part of the values is dropped |
| `symmetrise` | `False` | average the callable over the groups of both frames on every call |

## Output

| `SO3F` | SO3FunHandle |

## See also

[SO3Fun](SO3Fun_index_py.html), [SO3FunHarmonic](SO3FunHarmonic_index_py.html), [S2FunHandle](S2FunHandle_index_py.html), [SO3FunOperations](SO3FunOperations_py.html)

## Used on

[SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunConcept](SO3FunConcept_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html)

MATLAB's [SO3FunHandle.SO3FunHandle](SO3FunHandle.SO3FunHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L232">source</a></font>
{% endraw %}
