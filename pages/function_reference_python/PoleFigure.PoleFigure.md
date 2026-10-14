---
title: 'PoleFigure.PoleFigure'
sidebar: function_reference_sidebar
permalink: PoleFigure.PoleFigure_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.PoleFigure.html
status: Reference
---
{% raw %}
measured pole figure intensities, one or several pole figures of one specimen

## Syntax

```python
PoleFigure(h, r, I)                          h a Miller, one or several superposed directions
PoleFigure([h1, h23], [r1, r2], [I1, I2])    one pole figure per entry
PoleFigure(h, r, I, cs, ss, superposition=c, complete=True)
```

## Signature

```python
PoleFigure(h, r, intensities, *frames, superposition=None, complete=False)
```

MATLAB's [PoleFigure.PoleFigure](PoleFigure.PoleFigure.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L109">source</a></font>
{% endraw %}
