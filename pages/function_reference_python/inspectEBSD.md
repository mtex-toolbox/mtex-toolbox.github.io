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
inspectEBSD('map.ang')
```

The phases, the properties, the grid and the step, the Euler correction.

</div>

<div class="mx-form" markdown="1">

```python
inspectEBSD('map.h5oina')
```

And the data sets a project file holds.

</div>

<div class="mx-form" markdown="1">

```python
inspectEBSD('volume.dream3d')
```

The voxel grid of a volume, info.is3d telling it from a map.

</div>

## Signature

<div class="mx-form" markdown="1">

```python
inspectEBSD(path)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/inspect.py#L158">source</a></font>
{% endraw %}
