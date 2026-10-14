---
title: 'specimenFrame.named'
sidebar: function_reference_sidebar
permalink: specimenFrame.named_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [specimenFrame](specimenFrame_index_py.html).

the interned session instance of a named frame, constructed on first use with its seed
convention and kept in the session's name map; MATLAB's specimenFrame.named

## Syntax

The rolling frame of the session:

```python
ss = specimenFrame.named('rolling', ('RD', 'TD', 'ND'))
```

## Input

| | |
|---|---|
| `name` | str, the name of the frame |
| `axesNames` | the names of its three axes, used when it is built |

## Output

| | |
|---|---|
| `ss` | specimenFrame |

## Keywords

| | default | |
|---|---|---|
| `seed` | `None` | the plottingConvention it is built with on first use |

## See also

[referenceFrame.byName](referenceFrame.byName_py.html), specimenFrame.rolling

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L1119">source</a></font>
{% endraw %}
