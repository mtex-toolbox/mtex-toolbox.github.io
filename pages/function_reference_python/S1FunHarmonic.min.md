---
title: 'S1FunHarmonic.min'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.min_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.min.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

the smallest value and the angle it is taken at, sampled at the resolution and refined;
with numLocal the smallest local minima, the values ascending; with a number or a second
function on the circle the pointwise minimum

## Syntax

```python
S1FunHarmonic.min(self, *args, numLocal=1, resolution=0.004363323129985824, bandwidth=None)
```

```python
v, pos = min(sF)
values, positions = min(sF, numLocal=3)
sF = min(sF, 0)
sF = min(sF1, sF2, bandwidth=64)
```

MATLAB's [S1FunHarmonic.min](S1FunHarmonic.min.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L278">source</a></font>
{% endraw %}
