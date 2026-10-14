---
title: 'The class SO3FunHandle'
sidebar: function_reference_sidebar
permalink: SO3FunHandle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHandle_index.html
status: Reference
---
{% raw %}
a function on SO(3) given by a callable that receives orientations in the frames

```python
SO3FunHandle(fun, CS, SS)
SO3FunHandle(fun, CS, SS, bandwidth=L)     the bandwidth of its harmonic form
SO3FunHandle(fun, CS, SS, symmetrise=True)  averaged over the groups on every call
SO3FunHandle(fun, CS, antipodal=True)       with exchange symmetry
```

## Members

| | |
|---|---|
| [cat](SO3FunHandle.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [eval](SO3FunHandle.eval_py.html) | the callable receives orientations in the frames of the function |
| [rotate](SO3FunHandle.rotate_py.html) | the function rotated by r from the left or the right, through the harmonic form |
| [SO3FunHandle](SO3FunHandle.SO3FunHandle_py.html) | a function on SO(3) given by a callable that receives orientations in the frames |

## Used on

[SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunConcept](SO3FunConcept_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html)

MATLAB's [SO3FunHandle_index](SO3FunHandle_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L177">source</a></font>
{% endraw %}
