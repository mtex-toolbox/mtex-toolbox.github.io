---
title: 'conventionalSector'
sidebar: function_reference_sidebar
permalink: conventionalSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the conventional spherical sector used to display crystal directions.

## Syntax

<div class="mx-form" markdown="1">

```python
sector = conventionalSector(cs)
```

</div>

## Description

For an MTEX object, conventionalSector(x, ...) calls x.conventionalSector(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
conventionalSector(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.conventionalSector_py.html) | the conventional sector of the group, the one MTEX draws, oriented by the up and east directions of the frame's plotting convention |
| [symmetry](symmetry.conventionalSector_py.html) | the conventional sector of the group, the one MTEX draws, with up and east choosing its placement |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
