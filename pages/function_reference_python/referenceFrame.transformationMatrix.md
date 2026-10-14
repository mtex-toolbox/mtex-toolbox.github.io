---
title: 'referenceFrame.transformationMatrix'
sidebar: function_reference_sidebar
permalink: referenceFrame.transformationMatrix_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: referenceFrame.transformationMatrix.html
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

the transition matrix taking coordinates in this frame to coordinates in the other,
on normalised bases: with the unit axes as rows, inv(B) A is the rotation between the
two settings of one lattice

## Syntax

```python
referenceFrame.transformationMatrix(self, other)
```

MATLAB's [referenceFrame.transformationMatrix](referenceFrame.transformationMatrix.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L389">source</a></font>
{% endraw %}
