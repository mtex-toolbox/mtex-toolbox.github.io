---
title: 'referenceFrame.reset'
sidebar: function_reference_sidebar
permalink: referenceFrame.reset_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

clear the session's frame register, named frames and default frame.

## Syntax

<div class="mx-form" markdown="1">

```python
referenceFrame.reset()
```

</div>

## Description

Use this to start a new frame-registration session. Existing data retain their frame
objects; new constructions can receive different frame instances after the reset.

## See also

[referenceFrame.intern](referenceFrame.intern_py.html), [specimenFrame.named](specimenFrame.named_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
referenceFrame.reset()
```

</div>

## Used on

[PythonDevelopers](PythonDevelopers_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/__init__.py#L616">source</a></font>
{% endraw %}
