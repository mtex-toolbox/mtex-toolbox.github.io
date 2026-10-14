---
title: 'loadOrientation'
sidebar: function_reference_sidebar
permalink: loadOrientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the orientations a text table holds, and the other columns it names

## Syntax

```python
loadOrientation(fname, CS=None, SS=None, columnNames=None, columns=None, radians=False, delimiter=None, header=None, passive=False)
```

```python
loadOrientation('ori.txt', cs, columnNames=['phi1', 'Phi', 'phi2'])
loadOrientation('ori.txt', cs, columnNames=['phi1', 'Phi', 'phi2', 'weight'])   S['weight'] alongside
loadOrientation('ori.txt', cs, columnNames=[...], columns=[3, 1, 6])          the columns the names sit in, from zero
loadOrientation('ori.txt', cs, columnNames=['Quat real', 'Quat i', 'Quat j', 'Quat k'])
```

## Used on

[HarmonicApproximationTheory](HarmonicApproximationTheory_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/orientations.py#L29">source</a></font>
{% endraw %}
