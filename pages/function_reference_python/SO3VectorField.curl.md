---
title: 'SO3VectorField.curl'
sidebar: function_reference_sidebar
permalink: SO3VectorField.curl_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorField.curl.html
status: Reference
---
{% raw %}
A method of [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html).

the curl, a field of the same side; with x its values at the orientations x

## Syntax

<div class="mx-form" markdown="1">

```python
C = SO3VF.curl()
```

The curl, an SO3VectorFieldHarmonic.

</div>

<div class="mx-form" markdown="1">

```python
c = SO3VF.curl(ori)
```

Its values at orientations.

</div>

## Description

The field is taken in its harmonic form; the curl of a gradient vanishes. MATLAB's curl of a
field that is not harmonic returns a handle, here always the harmonic field.

## Input

| `SO3VF` | SO3VectorField |
| `x` | orientation, where to evaluate the curl |

## Output

| `C` | SO3VectorFieldHarmonic |
| `c` | SO3TangentVector, the values at x |

## See also

[div](div_py.html), [SO3VectorField.antiderivative](SO3VectorField.antiderivative_py.html), [SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3VectorFieldHarmonic.curl(self, x=None)
```

</div>

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorField.curl](SO3VectorField.curl.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L280">source</a></font>
{% endraw %}
