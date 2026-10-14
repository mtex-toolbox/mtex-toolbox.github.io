---
title: 'S2FunHandle.S2FunHandle'
sidebar: function_reference_sidebar
permalink: S2FunHandle.S2FunHandle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHandle.S2FunHandle.html
status: Reference
---
{% raw %}
a function on the sphere given by a callable that receives directions

## Syntax

A function of the directions:

```python
sF = S2FunHandle(lambda v: v.z**2)
```

In a crystal frame:

```python
sF = S2FunHandle(fun, cs)
```

Averaged over v and -v and the group:

```python
sF = S2FunHandle(fun, cs, antipodal=True)
```

Averaged over the group on every call:

```python
sF = S2FunHandle(fun, cs, symmetrise=True)
```

The bandwidth of its harmonic form:

```python
sF = S2FunHandle(fun, cs, bandwidth=64)
```

Nothing is precomputed: evaluating the function calls fun on the directions, normalised and
in the frame of the function, exactly. Every operation that needs coefficients, a
convolution, a quadrature, a smooth plot, goes through S2FunHarmonic(sF) of the bandwidth.
An antipodal function is averaged over v and -v and the group of the frame, unless
symmetrise=False says the callable is symmetric by construction. An S2FunHarmonic given as
fun becomes the handle of its evaluation.

## Input

| | |
|---|---|
| `fun` | callable taking a vector3d and returning its values, or an S2Fun |
| `frame` | crystalFrame or specimenFrame the directions are expressed in |

## Output

| | |
|---|---|
| `sF` | S2FunHandle |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the harmonic form, by default the quadrature bandwidth |
| `antipodal` | `False` | the function fulfils f(v) = f(-v) |
| `real` | `True` | the function takes only real values; the imaginary part of the values is dropped |
| `symmetrise` | `None` | average the callable over the group of the frame (and over v and -v when antipodal) on every call; by default only when antipodal |

## See also

[S2Fun](S2Fun_index_py.html), [S2FunHarmonic](S2FunHarmonic_index_py.html), [SO3FunHandle](SO3FunHandle_index_py.html), [S2FunOperations](S2FunOperations_py.html)

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html)

MATLAB's [S2FunHandle.S2FunHandle](S2FunHandle.S2FunHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L479">source</a></font>
{% endraw %}
