---
title: 'referenceFrame.byName'
sidebar: function_reference_sidebar
permalink: referenceFrame.byName_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

the specimen frame registered under a name; with a frame, registers it under that name;
MATLAB's referenceFrame.byName

## Syntax

Look up, None when unknown:

```python
ss = referenceFrame.byName('rolling')
```

Store fr under the name:

```python
referenceFrame.byName('myFrame', fr)
```

The register holds one instance per name: the named frames (specimenFrame.rolling, ...)
are built on first use and stored here, so every later call returns the same handle.

## Input

| | |
|---|---|
| `name` | str |

## Output

| | |
|---|---|
| `ss` | referenceFrame, the frame registered under the name, or None |

## Keywords

| | default | |
|---|---|---|
| `fr` | `None` | the frame to register under the name |

## See also

[specimenFrame.named](specimenFrame.named_py.html), [referenceFrame.intern](referenceFrame.intern_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L541">source</a></font>
{% endraw %}
