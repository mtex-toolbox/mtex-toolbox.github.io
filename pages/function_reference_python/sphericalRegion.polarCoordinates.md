---
title: 'sphericalRegion.polarCoordinates'
sidebar: function_reference_sidebar
permalink: sphericalRegion.polarCoordinates_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.polarCoordinates.html
status: Reference
---
{% raw %}
polar coordinates of a region (MATLAB @sphericalRegion/polarCoordinates), which is what a
colour key is built on: the radius is one at the centre and zero on the boundary, taken
along the great circle through the centre, and the azimuth is measured about the centre
from a reference direction and then equalised, so that a wide part of the sector takes as
much of the turn as a narrow one and the vertices sit at equal angles

## Syntax

```python
polarCoordinates(sR, v, center, ref=None, equalise=True)
```

MATLAB's [sphericalRegion.polarCoordinates](sphericalRegion.polarCoordinates.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectorfold.py#L172">source</a></font>
{% endraw %}
