---
title: 'byScreenAlignment'
sidebar: function_reference_sidebar
permalink: byScreenAlignment_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the orientation implied by two frames rendering alike: a point at v renders at
inv(rot) * v in screen coordinates, so vB = rotB * inv(rotA) * vA

## Syntax

<div class="mx-form" markdown="1">

```python
byScreenAlignment(frA, frB)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frametransform.py#L49">source</a></font>
{% endraw %}
