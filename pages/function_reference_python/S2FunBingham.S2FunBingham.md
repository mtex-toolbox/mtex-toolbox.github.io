---
title: 'S2FunBingham.S2FunBingham'
sidebar: function_reference_sidebar
permalink: S2FunBingham.S2FunBingham_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunBingham.S2FunBingham.html
status: Reference
---
{% raw %}
the Bingham distribution on the sphere: the density exp(v' a diag(Z) a' v) of the axes v, with
three shape parameters Z and three orthonormal principal axes a, symmetrised over a frame

## Syntax

<div class="mx-form" markdown="1">

```python
S2FunBingham(Z)                       the coordinate axes
S2FunBingham(Z, a)                    the axes as directions or a 3x3 matrix
S2FunBingham.fit(v)                   the fit to directions
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
S2FunBingham(Z, a=None, frame=None)
```

</div>

## Used on

[S2Bingham](S2Bingham_py.html)

MATLAB's [S2FunBingham.S2FunBingham](S2FunBingham.S2FunBingham.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L431">source</a></font>
{% endraw %}
