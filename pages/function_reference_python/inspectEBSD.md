---
title: 'inspectEBSD'
sidebar: function_reference_sidebar
permalink: inspectEBSD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
what an EBSD file says about itself, read from its header alone

## Syntax

<div class="mx-form" markdown="1">

```python
inspectEBSD('map.ang')     the phases, the properties, the grid and the step, the Euler correction
inspectEBSD('map.h5oina')  and the data sets a project file holds
inspectEBSD('volume.dream3d')  the voxel grid of a volume, info.is3d telling it from a map
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
inspectEBSD(path)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/inspect.py#L132">source</a></font>
{% endraw %}
