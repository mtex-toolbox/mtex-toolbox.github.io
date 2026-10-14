---
title: 'The class S2FunHandle'
sidebar: function_reference_sidebar
permalink: S2FunHandle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHandle_index.html
status: Reference
---
{% raw %}
a function on the sphere given by a callable that receives directions

```python
S2FunHandle(fun, frame)
S2FunHandle(fun, frame, bandwidth=L)       the bandwidth of its harmonic form
S2FunHandle(fun, frame, antipodal=True)    averaged over v and -v and the group
S2FunHandle(fun, frame, symmetrise=True)   averaged over the group of the frame on every call
```

## Members

| | |
|---|---|
| [CS](S2FunHandle.CS_py.html) | the frame of the function, MATLAB's sF.CS |
| [eval](S2FunHandle.eval_py.html) | the values of the callable at the directions x, taken into the frame of the function |
| [exp](S2FunHandle.exp_py.html) | the pointwise exponential, a handle evaluated when asked |
| [log](S2FunHandle.log_py.html) | the pointwise logarithm, a handle evaluated when asked |
| [mean](S2FunHandle.mean_py.html) | the mean over the sphere, through the harmonic form |
| [rotate](S2FunHandle.rotate_py.html) | the function rotated by r, through the harmonic form |
| [S2FunHandle](S2FunHandle.S2FunHandle_py.html) | a function on the sphere given by a callable that receives directions |
| [textureIndex](S2FunHandle.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html)

MATLAB's [S2FunHandle_index](S2FunHandle_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L372">source</a></font>
{% endraw %}
