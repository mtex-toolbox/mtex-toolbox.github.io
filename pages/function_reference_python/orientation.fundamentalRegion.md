---
title: 'orientation.fundamentalRegion'
sidebar: function_reference_sidebar
permalink: orientation.fundamentalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

return the region of symmetry-distinct orientations for the input frames.

## Syntax

<div class="mx-form" markdown="1">

```python
region = ori.fundamentalRegion()
```

</div>

## Description

The result is an orientationRegion determined by the crystal and specimen point groups
and, for misorientations, the grain-exchange flag. It describes a domain; it does not
move the input orientations into that domain.

## See also

[fundamentalRegion](fundamentalRegion_py.html), [orientation.projectIntoFundamentalRegion](orientation.project2FundamentalRegion_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
orientation.fundamentalRegion(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L840">source</a></font>
{% endraw %}
