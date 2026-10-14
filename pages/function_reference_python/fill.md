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

<div class="mx-form" markdown="1">

```python
fill(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.fill_py.html) | the map with every pixel that carries no measurement filled, the measured ones left as they are |
| [EBSD3](EBSD3.fill_py.html) | the empty voxels of a volume filled from their nearest measured voxel |

## Used on

[EBSDFilling](EBSDFilling_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
