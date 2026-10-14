---
title: 'SO3FunHarmonic.max'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.max_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.max.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima
from a grid refined down to the accuracy; with a second function or a number the pointwise
maximum; with axis= the maximum of a list of functions along an axis

## Syntax

```python
SO3FunHarmonic.max(f, *args, numLocal=1, **kwargs)
```

```python
value, ori = max(odf)
values, oris = max(odf, numLocal=5, resolution=5*degree, accuracy=0.25*degree)
f = max(odf1, odf2)
v, pos = max(sF)                       on the circle, the angle
values, positions = max(sF, numLocal=3)
sF = max(sF, 0.5)
```

MATLAB's [SO3FunHarmonic.max](SO3FunHarmonic.max.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L544">source</a></font>
{% endraw %}
