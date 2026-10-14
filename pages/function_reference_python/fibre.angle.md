---
title: 'fibre.angle'
sidebar: function_reference_sidebar
permalink: fibre.angle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.angle.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the angle by which ori * h misses r, the least over both orbits, from the chord of the
closest pair; with another fibre the largest distance of its points to this one;
return_nearest=True also gives the orientation on the fibre nearest ori

## Syntax

```python
omega = angle(f, ori)
omega, oriF = angle(f, ori, return_nearest=True)
```

## Signature

```python
fibre.angle(self, ori, symmetry=True, return_nearest=False)
```

MATLAB's [fibre.angle](fibre.angle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L190">source</a></font>
{% endraw %}
