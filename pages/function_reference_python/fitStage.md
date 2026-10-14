---
title: 'fitStage'
sidebar: function_reference_sidebar
permalink: fitStage_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
fit one stage of a composite spatial transform to supplied point pairs.

## Syntax

<div class="mx-form" markdown="1">

```python
fitted = fitStage(T, stage, source, target)
```

</div>

## Description

For an MTEX object, fitStage(x, ...) calls x.fitStage(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
fitStage(x, *args, **kwargs)
```

</div>

## Methods it calls

| [spatialTransformComposite](spatialTransformComposite.fitStage_py.html) | return a composite with one stage fitted to supplied point pairs |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
