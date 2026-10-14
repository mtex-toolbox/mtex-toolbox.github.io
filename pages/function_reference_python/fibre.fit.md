---
title: 'fibre.fit'
sidebar: function_reference_sidebar
permalink: fibre.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.fit.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the fibre through a list of orientations: the plane of the two leading eigenvectors
of their quaternion tensor, the orientations first moved to the representatives
nearest their mean, or taken as stored with symmetry=False; with diagnostics the
eigenvalues, ascending and summing to one, and the mean angle of the orientations to
the fibre come too. This is the local fit of a concentrated cloud; the search through
the pole figures of an ODF is the business of P2

## Syntax

```python
fibre.fit(ori, *args, diagnostics=False, symmetry=True)
```

MATLAB's [fibre.fit](fibre.fit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L289">source</a></font>
{% endraw %}
