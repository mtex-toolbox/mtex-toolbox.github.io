---
title: 'S2VectorFieldHarmonic.isclose'
sidebar: function_reference_sidebar
permalink: S2VectorFieldHarmonic.isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2VectorFieldHarmonic](S2VectorFieldHarmonic_index_py.html).

whether two fields agree in their coefficients up to the relative tolerance rtol

## Syntax

Equal up to a relative 1e-8:

```python
tf = isclose(vF1, vF2)
```

Up to a relative 1e-2:

```python
tf = isclose(vF1, vF2, rtol=1e-2)
```

The fields are compared at the larger of their bandwidths: the norm of the difference of
the coefficients of the three components must not exceed rtol times the norm of those of
w; a field of another kind is expanded first.

## Input

| | |
|---|---|
| `vF1` | S2VectorFieldHarmonic |
| `w` | S2VectorField, the field to compare with |

## Output

| | |
|---|---|
| `tf` | bool |

## Keywords

| | default | |
|---|---|---|
| `rtol` | `1e-08` | the tolerance relative to the norm of w |

## See also

[S2FunHarmonic.isclose](S2FunHarmonic.isclose_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2vectorfield.py#L374">source</a></font>
{% endraw %}
