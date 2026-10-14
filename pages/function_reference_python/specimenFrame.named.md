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

<div class="mx-form" markdown="1">

```python
ss = specimenFrame.named('rolling', ('RD', 'TD', 'ND'))
```

The rolling frame of the session.

</div>

## Input

| `name` | str, the name of the frame |
| `axesNames` | the names of its three axes, used when it is built |

## Keywords

| keyword | default | description |
|---|---|---|
| `seed` | `None` | the plottingConvention it is built with on first use |

## Output

| `ss` | specimenFrame |

## See also

[referenceFrame.byName](referenceFrame.byName_py.html), [specimenFrame.rolling](specimenFrame.rolling_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L1193">source</a></font>
{% endraw %}
