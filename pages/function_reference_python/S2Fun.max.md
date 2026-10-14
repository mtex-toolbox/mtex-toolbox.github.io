---
title: 'S2Fun.max'
sidebar: function_reference_sidebar
permalink: S2Fun.max_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun.max.html
status: Reference
---
{% raw %}
the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima
from a grid refined down to the accuracy; with a second function or a number the pointwise
maximum; with axis= the maximum of a list of functions along an axis

## Syntax

```python
max_(f, *args, numLocal=1, **kwargs)
```

```python
value, ori = max(odf)
values, oris = max(odf, numLocal=5, resolution=5*degree, accuracy=0.25*degree)
f = max(odf1, odf2)
v, pos = max(sF)                       on the circle, the angle
values, positions = max(sF, numLocal=3)
sF = max(sF, 0.5)
```

MATLAB's [S2Fun.max](S2Fun.max.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L544">source</a></font>
{% endraw %}
