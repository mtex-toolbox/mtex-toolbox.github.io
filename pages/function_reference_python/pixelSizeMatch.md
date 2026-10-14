---
title: 'pixelSizeMatch'
sidebar: function_reference_sidebar
permalink: pixelSizeMatch_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
resample the maps and images of a registration job to a common pixel spacing.

## Syntax

<div class="mx-form" markdown="1">

```python
pixelSizeMatch(job)
```

</div>

## Description

For an MTEX object, pixelSizeMatch(x, ...) calls x.pixelSizeMatch(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
pixelSizeMatch(x, *args, **kwargs)
```

</div>

## Methods it calls

| [trueEbsd](trueEbsd.pixelSizeMatch_py.html) | every image and map of the job resampled onto one grid |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
