---
title: 'SO3VectorFieldHarmonic.isclose'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHarmonic.isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html).

whether two fields have the same coefficients on one side up to the relative tolerance rtol

## Syntax

Equal up to the relative tolerance 1e-8:

```python
SO3VF.isclose(SO3VF2)
```

Up to another one:

```python
SO3VF.isclose(SO3VF2, rtol=1e-3)
```

The second field is taken in the harmonic form and the tangent space of the first; the
coefficients, padded to the larger bandwidth, agree when the norm of their difference is at
most rtol times the norm of those of the second.

## Input

| | |
|---|---|
| `SO3VF` | SO3VectorFieldHarmonic |
| `w` | SO3VectorField |

## Output

| | |
|---|---|
| `tf` | bool |

## Keywords

| | default | |
|---|---|---|
| `rtol` | `1e-08` | the tolerance relative to the norm of w |

## See also

[SO3FunHarmonic.isclose](SO3FunHarmonic.isclose_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L590">source</a></font>
{% endraw %}
