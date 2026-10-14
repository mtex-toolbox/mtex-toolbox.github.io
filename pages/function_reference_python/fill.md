---
title: 'fill'
sidebar: function_reference_sidebar
permalink: fill_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
fill(x, ...) is x.fill(...), the method of the object passed

## Syntax

```python
fill(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [EBSD](EBSD.fill_py.html) | the map with every pixel that carries no measurement filled, the measured ones left as they are |
| [EBSD3](EBSD3.fill_py.html) | the empty voxels, padding and not indexed, given the phase, orientation and properties of the nearest measured voxel |

## Used on

[EBSDFilling](EBSDFilling_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
