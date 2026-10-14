---
title: 'transformReferenceFrame'
sidebar: function_reference_sidebar
permalink: transformReferenceFrame_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
transformReferenceFrame(x, ...) is x.transformReferenceFrame(...), the method of the object passed

## Syntax

<div class="mx-form" markdown="1">

```python
transformReferenceFrame(x, *args, **kwargs)
```

</div>

## Methods it calls

| [mapImage](mapImage.transformReferenceFrame_py.html) | the images stated in a frame and laid out that way: a layout reindexes and nothing else, a frame restates where they sit by the orientation given, by 'byScreenAlignment', the assertion that the frames were drawn the same way up, or by nothing where the frames are already related |
| [orientation](orientation.transformReferenceFrame_py.html) | the same orientation described with another reference frame of the crystal |
| [tensor](tensor.transformReferenceFrame_py.html) | the same coefficients read in another frame, the numbers changed by the rigid part of the transition between the two bases |
| [vector3d](Miller.transformReferenceFrame_py.html) | the same direction written in another frame |

## Used on

[EBSDMapsAndImages](EBSDMapsAndImages_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
