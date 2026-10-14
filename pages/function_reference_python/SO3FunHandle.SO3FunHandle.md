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
a function on SO(3) given by a callable that receives orientations in the frames

## Syntax

```python
SO3FunHandle(fun, *frames, bandwidth=None, antipodal=False, real=True, symmetrise=False)
```

```python
SO3FunHandle(fun, CS, SS)
SO3FunHandle(fun, CS, SS, bandwidth=L)     the bandwidth of its harmonic form
SO3FunHandle(fun, CS, SS, symmetrise=True)  averaged over the groups on every call
SO3FunHandle(fun, CS, antipodal=True)       with exchange symmetry
```

## Used on

[SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunConcept](SO3FunConcept_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html)

MATLAB's [SO3FunHandle.SO3FunHandle](SO3FunHandle.SO3FunHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L177">source</a></font>
{% endraw %}
