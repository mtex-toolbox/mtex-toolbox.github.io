---
title: 'calcDistortion'
sidebar: function_reference_sidebar
permalink: calcDistortion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
fit the spatial distortion between the maps of a registration job.

## Syntax

<div class="mx-form" markdown="1">

```python
calcDistortion(job)
```

</div>

## Description

For an MTEX object, calcDistortion(x, ...) calls x.calcDistortion(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
calcDistortion(x, *args, **kwargs)
```

</div>

## Methods it calls

| [trueEbsd](trueEbsd.calcDistortion_py.html) | the distortion between every consecutive pair of maps of the job fitted |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
