---
title: 'S2FunBingham.fit'
sidebar: function_reference_sidebar
permalink: S2FunBingham.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunBingham.fit.html
status: Reference
---
{% raw %}
A method of [S2FunBingham](S2FunBingham_index_py.html).

the fit to directions or axes: the eigen decomposition of the scatter matrix gives the
axes, Newton on the moments the shape parameters, ascending to zero at the mode, the
third axis, as in MTEX; confidenceEllipse=True returns with it the semi-axes ab, in
radians, and the rotation rot of the confidence ellipse at the level p of the modal axis
(Tanaka 1999), for ellipse(rot, ab[0], ab[1])

## Syntax

```python
S2FunBingham.fit(v, weights=None, confidenceEllipse=False, p=0.95)
```

MATLAB's [S2FunBingham.fit](S2FunBingham.fit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L424">source</a></font>
{% endraw %}
