---
title: 'paror'
sidebar: function_reference_sidebar
permalink: paror_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
calculate the cumulative particle projection function of grain outlines.

## Syntax

<div class="mx-form" markdown="1">

```python
projection = paror(grains)
```

</div>

## Description

For an MTEX object, paror(x, ...) calls x.paror(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
paror(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.paror_py.html) | the cumulative particle projection function of the outlines (Panozzo 1983) |

## Used on

[ProjectionBasedParameters](ProjectionBasedParameters_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
