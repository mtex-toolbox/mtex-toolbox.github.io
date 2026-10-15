---
title: 'orientation.load'
sidebar: function_reference_sidebar
permalink: orientation.load_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.load.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

read orientations from a text table.

## Syntax

<div class="mx-form" markdown="1">

```python
ori = orientation.load(fname, cs, columnNames=['phi1', 'Phi', 'phi2'])
```

</div>

## Description

Frames, angle conventions, column assignments and other options are passed to
[`loadOrientation`](loadOrientation_py.html). Only its orientation result is returned; call loadOrientation
directly to retain additional data columns.

## See also

[loadOrientation](loadOrientation_py.html), [orientation.byEuler](orientation.byEuler_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
orientation.load(fname, *args, **kwargs)
```

</div>

MATLAB's [orientation.load](orientation.load.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L206">source</a></font>
{% endraw %}
