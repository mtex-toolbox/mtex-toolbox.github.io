---
title: 'ipfColorKey.orientation2color'
sidebar: function_reference_sidebar
permalink: ipfColorKey.orientation2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [ipfColorKey](ipfColorKey_index_py.html).

an orientation that was never measured has no colour, and a map shows nothing for it.
From GRID_FROM orientations on the key goes through its grid, which it builds once

## Syntax

```python
rgb = ipfKey.orientation2color(ori)
rgb = ipfKey.orientation2color(ebsd['Fo'].orientations)
```

## Signature

```python
ipfColorKey.orientation2color(self, ori)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L108">source</a></font>
{% endraw %}
