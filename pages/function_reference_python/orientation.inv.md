---
title: 'orientation.inv'
sidebar: function_reference_sidebar
permalink: orientation.inv_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

reverse the direction of an orientation mapping.

## Syntax

<div class="mx-form" markdown="1">

```python
reverse = ori.inv()
```

</div>

## Description

Quaternion coefficients are conjugated and the source and target frames are exchanged.
If ori maps crystal directions into specimen directions, its inverse maps them back.
For a misorientation, inversion exchanges the two crystal frames.

## See also

[orientation.CS](orientation.CS_py.html), [orientation.SS](orientation.SS_py.html), [rotation.inv](rotation.inv_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
orientation.inv(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L477">source</a></font>
{% endraw %}
