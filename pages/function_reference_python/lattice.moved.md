---
title: 'lattice.moved'
sidebar: function_reference_sidebar
permalink: lattice.moved_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [lattice](lattice_index_py.html).

the same lattice after the rigid motion x -> R x + v, in the plane the moved positions lie
in: the index kept, the basis and the origin turned in the plane; None where the motion turns
the plane over, since the basis would change its hand

## Syntax

<div class="mx-form" markdown="1">

```python
lattice.moved(self, R, v, plane)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/lattice.py#L163">source</a></font>
{% endraw %}
