---
title: 'EBSD.smooth'
sidebar: function_reference_sidebar
permalink: EBSD.smooth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.smooth.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the map with every orientation replaced by one computed from its neighbours, within the
grains where the map knows them and within the phases where it does not. fill solves for
the pixels that carry no measurement as well, fill=grains only for those inside a grain; a window filter can solve for nothing, so
there the holes are closed by fill first. props names the numeric properties smoothed
along with the orientations, none by default

## Syntax

```python
EBSD.smooth(ebsd, F=None, fill=False, extrapolate=False, props=())
```

MATLAB's [EBSD.smooth](EBSD.smooth.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L286">source</a></font>
{% endraw %}
