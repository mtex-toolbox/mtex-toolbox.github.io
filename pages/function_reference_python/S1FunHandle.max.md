---
title: 'S1FunHandle.max'
sidebar: function_reference_sidebar
permalink: S1FunHandle.max_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S1FunHandle](S1FunHandle_index_py.html).

the largest value and the angle it is taken at, numLocal local maxima, or with a number
or a second function on the circle the pointwise maximum, as S1FunHarmonic.max

## Syntax

```python
S1FunHandle.max(self, *args, numLocal=1, resolution=0.004363323129985824, bandwidth=None)
```

```python
v, pos = max(sF)
values, positions = max(sF, numLocal=3)
sF = max(sF, 0.5)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L563">source</a></font>
{% endraw %}
