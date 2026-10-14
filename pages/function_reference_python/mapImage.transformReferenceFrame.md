---
title: 'mapImage.transformReferenceFrame'
sidebar: function_reference_sidebar
permalink: mapImage.transformReferenceFrame_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.transformReferenceFrame.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

the images stated in a frame and laid out that way: a layout reindexes and nothing else, a
frame restates where they sit by the orientation given, by 'byScreenAlignment', the
assertion that the frames were drawn the same way up, or by nothing where the frames are
already related. Only a transpose and flips are applied, never a resampling

## Syntax

```python
mapImage.transformReferenceFrame(mg, target, *args, byScreenAlignment=False)
```

MATLAB's [mapImage.transformReferenceFrame](mapImage.transformReferenceFrame.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L568">source</a></font>
{% endraw %}
