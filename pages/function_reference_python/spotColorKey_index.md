---
title: 'The class spotColorKey'
sidebar: function_reference_sidebar
permalink: spotColorKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
each centre orientation given its colour, fading to white with the kernel of the
disorientation to it; several centres multiply

## Syntax

```python
spotColorKey(center=ori, color=(0, 0, 1), psi=SO3DeLaValleePoussinKernel(halfwidth=10*degree))
```

## Members

| | |
|---|---|
| [orientation2color](spotColorKey.orientation2color_py.html) | the colours of orientations: white, multiplied for every centre by its colour faded with the kernel of the disorientation to it |

## Used on

[EBSDAdvancedMaps](EBSDAdvancedMaps_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L321">source</a></font>
{% endraw %}
