---
title: 'referenceFrame.fundamentalSector'
sidebar: function_reference_sidebar
permalink: referenceFrame.fundamentalSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

the fundamental sector of the group on the sphere, the conventional one of the inverse pole
figure where it is a fundamental domain; with a centre that centre's Dirichlet domain

## Syntax

```python
referenceFrame.fundamentalSector(self, center=None, antipodal=False, angle=None)
```

```python
sR = cs.fundamentalSector()
sR = cs.fundamentalSector(antipodal=True)
sR = cs.fundamentalSector(angle=omega)       for a misorientation angle
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L314">source</a></font>
{% endraw %}
