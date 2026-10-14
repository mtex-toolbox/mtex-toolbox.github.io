---
title: 'PatalaColorKey.orientation2color'
sidebar: function_reference_sidebar
permalink: PatalaColorKey.orientation2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [PatalaColorKey](PatalaColorKey_index_py.html).

the colours of misorientations, (..., 3) RGB: the Rodrigues vectors in the fundamental zone
with grain exchange, the a axis along x, looked up in the map of the Laue group

## Syntax

<div class="mx-form" markdown="1">

```python
key = PatalaColorKey(gB)
rgb = key.orientation2color(gB.misorientation)
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
PatalaColorKey.orientation2color(self, mori)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/patalakey.py#L185">source</a></font>
{% endraw %}
