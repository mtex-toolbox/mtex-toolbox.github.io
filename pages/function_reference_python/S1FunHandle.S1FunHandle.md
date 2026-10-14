---
title: 'S1FunHandle.S1FunHandle'
sidebar: function_reference_sidebar
permalink: S1FunHandle.S1FunHandle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHandle.S1FunHandle.html
status: Reference
---
{% raw %}
represent a periodic circular function by a vectorised callable.

## Syntax

<div class="mx-form" markdown="1">

```python
f = S1FunHandle(lambda x: np.cos(2*x))
f = S1FunHandle(fun, bandwidth=32, real=False)
```

</div>

## Description

The callable receives numeric angles in radians. Evaluation calls it directly;
the wrapper does not make a nonperiodic formula periodic. Choose a function of
period `2*pi` for circular data. Operations needing coefficients first approximate
the callable as an S1FunHarmonic at the stated bandwidth.

## Input

| `fun` | callable accepting an angle array and returning matching values |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | largest Fourier mode of harmonic approximations; maxS1Bandwidth when omitted |
| `real` | `True` | return real values, dropping any imaginary part |

## Output

| `f` | S1FunHandle, evaluated with f(angles) |

## Properties

| `fun` | wrapped callable |
| `bandwidth` | resolution used by harmonic operations |
| `isReal` | whether evaluation returns only real values |

## See also

[S1FunHarmonic](S1FunHarmonic_index_py.html), [S1FunHarmonic.interpolate](S1FunHarmonic.interpolate_py.html)

## Used on

[S1FunHarmonics](S1FunHarmonics_py.html)

MATLAB's [S1FunHandle.S1FunHandle](S1FunHandle.S1FunHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L704">source</a></font>
{% endraw %}
