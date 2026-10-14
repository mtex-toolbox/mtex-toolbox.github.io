---
title: 'sim'
sidebar: function_reference_sidebar
permalink: sim_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
compare the symmetry classes of reference frames without requiring aligned axes.

## Syntax

<div class="mx-form" markdown="1">

```python
sameSymmetry = sim(frame1, frame2)
```

</div>

## Description

For an MTEX object, sim(x, ...) calls x.sim(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
sim(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.sim_py.html) | whether two frames describe the same symmetry, without requiring aligned bases |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
