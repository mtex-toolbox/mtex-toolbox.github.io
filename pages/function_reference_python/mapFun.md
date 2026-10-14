---
title: 'mapFun'
sidebar: function_reference_sidebar
permalink: mapFun_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the harmonic function of op applied pointwise to f and gs, by quadrature at the sum of their
bandwidths, capped by the preference, or at the given bandwidth

## Syntax

Exp of one function:

```python
h = mapFun(np.exp, f)
```

The pointwise maximum of two, of bandwidth 64:

```python
h = mapFun(np.maximum, f, g, bandwidth=64)
```

op is evaluated at the nodes of a quadrature grid of the bandwidth, with the values of f and
gs as its arguments, and the result expanded again; the functions are on SO(3)
(SO3FunHarmonic), on the sphere (S2FunHarmonic) or on the circle (S1FunHarmonic) and must
share their frames. A list of functions on SO(3) gives a list, op reducing over the axes
after the nodes. It is what exp, log, sqrt, max and min of the harmonic functions use.

## Input

| | |
|---|---|
| `op` | a function of arrays, applied to the values |
| `f` | SO3FunHarmonic, S2FunHarmonic or S1FunHarmonic |
| `gs` | further functions of the same kind and frames |

## Output

| | |
|---|---|
| `h` | the harmonic function of the kind of f |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the result; by default the sum of the bandwidths, at most the preference maxSO3Bandwidth, maxS2Bandwidth or maxS1Bandwidth |

## See also

[SO3FunHarmonic.exp](SO3FunHarmonic.exp_py.html), [SO3FunHarmonic.sqrt](SO3FunHarmonic.sqrt_py.html), [max](S1Grid.max_py.html), [SO3FunHarmonic.quadrature](SO3FunHarmonic.quadrature_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/funops.py#L390">source</a></font>
{% endraw %}
