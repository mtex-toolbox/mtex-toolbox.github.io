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

```python
S2FunHandle(fun, frame=None, *, bandwidth=None, antipodal=False, real=True, symmetrise=None)
```

```python
S2FunHandle(fun, frame)
S2FunHandle(fun, frame, bandwidth=L)       the bandwidth of its harmonic form
S2FunHandle(fun, frame, antipodal=True)    averaged over v and -v and the group
S2FunHandle(fun, frame, symmetrise=True)   averaged over the group of the frame on every call
```

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html)

MATLAB's [S2FunHandle.S2FunHandle](S2FunHandle.S2FunHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L372">source</a></font>
{% endraw %}
