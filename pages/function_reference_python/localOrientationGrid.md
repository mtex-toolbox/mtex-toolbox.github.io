---
title: 'localOrientationGrid'
sidebar: function_reference_sidebar
permalink: localOrientationGrid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: localOrientationGrid.html
status: Reference
---
{% raw %}
orientations within `maxAngle` of `center` on shells `resolution` apart, the axes on each
shell spaced so that the orientations are `resolution` apart; with `respectSymmetry` one
representative of every orientation the ball holds up to the symmetries of the frames

## Syntax

```python
localOrientationGrid(*args, maxAngle=None, resolution=5*degree, center=None, respectSymmetry=True)
```

```python
localOrientationGrid(CS, SS, maxAngle=20*degree, center=ori)
localOrientationGrid(center, maxAngle=20*degree, resolution=1*degree)
```

## Used on

[OrientationGrid](OrientationGrid_py.html)

MATLAB's [localOrientationGrid](localOrientationGrid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/localgrids.py#L27">source</a></font>
{% endraw %}
