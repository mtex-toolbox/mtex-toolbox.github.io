---
title: 'exportOrientation'
sidebar: function_reference_sidebar
permalink: exportOrientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
export(ori, fname, 'Bunge'): the Euler angles of the orientations in degrees as a table,
with a dictionary among the arguments as further columns; export(ori, fname, 'Bunge',
interface='VPSC', weights=w) the VPSC texture file (MATLAB's export_VPSC)

## Syntax

```python
exportOrientation(ori, fname, *args, radians=False, quaternion=False, interface=None, weights=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/exportorientation.py#L40">source</a></font>
{% endraw %}
