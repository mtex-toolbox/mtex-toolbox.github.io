---
title: 'EBSD.interp'
sidebar: function_reference_sidebar
permalink: EBSD.interp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.interp.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the map read at positions of one's own choosing: the field is filled where it has holes,
by the same solver smooth and fill use, and interpolated within the lattice cell each
position falls in, linearly in the tangent space of the component the nearest measurement
belongs to and over the corners that belong to it as well, so nothing is averaged across a
grain boundary. A position no measured corner surrounds takes the nearest measurement
where extrapolate allows it, and is empty otherwise

## Syntax

```python
EBSD.interp(ebsd, pos, y=None, F=None, fill=True, extrapolate=True)
```

MATLAB's [EBSD.interp](EBSD.interp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L438">source</a></font>
{% endraw %}
