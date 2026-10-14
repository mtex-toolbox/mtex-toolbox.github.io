---
title: 'S1FunHarmonic.max'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.max_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.max.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

the largest value and the angle it is taken at, sampled at the resolution and refined;
with numLocal the largest local maxima, the values descending; with a number or a second
function on the circle the pointwise maximum, a Fourier series of the larger bandwidth

## Syntax

```python
S1FunHarmonic.max(self, *args, numLocal=1, resolution=0.004363323129985824, bandwidth=None)
```

```python
v, pos = max(sF)
v, pos = max(sF, resolution=1*degree)
values, positions = max(sF, numLocal=3)
sF = max(sF, 0.5)
sF = max(sF1, sF2, bandwidth=64)
```

MATLAB's [S1FunHarmonic.max](S1FunHarmonic.max.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L264">source</a></font>
{% endraw %}
