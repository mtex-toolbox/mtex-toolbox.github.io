---
title: 'undistort'
sidebar: function_reference_sidebar
permalink: undistort_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
resample a registration job onto its reference grid using the fitted transforms.

## Syntax

<div class="mx-form" markdown="1">

```python
undistort(job)
```

</div>

## Description

For an MTEX object, undistort(x, ...) calls x.undistort(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
undistort(x, *args, **kwargs)
```

</div>

## Methods it calls

| [trueEbsd](trueEbsd.undistort_py.html) | job.undistort(): every map resampled onto the reference grid through the hops between it and the reference, its own first, by the nearest pixel |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
