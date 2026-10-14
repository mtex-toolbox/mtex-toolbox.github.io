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

<div class="mx-form" markdown="1">

```python
ori, S = loadOrientation('ori.txt', cs)
```

The columns named in the header.

</div>

<div class="mx-form" markdown="1">

```python
ori, S = loadOrientation('ori.txt', cs, columnNames=['phi1', 'Phi', 'phi2', 'weight'])
```

The names given.

</div>

<div class="mx-form" markdown="1">

```python
ori, S = loadOrientation('ori.txt', cs, columnNames=['phi1', 'Phi', 'phi2'], columns=[3, 1, 6])
```

Where they sit.

</div>

<div class="mx-form" markdown="1">

```python
ori, S = loadOrientation('ori.txt', cs, columnNames=['Quat real', 'Quat i', 'Quat j', 'Quat k'])
```

Quaternions.

</div>

## Description

The columns are named by columnNames or by the last header line; three of them have to be
Euler angles, phi1, Phi, phi2 or Euler 1, Euler 2, Euler 3 (Bunge) or alpha, beta, gamma
(Matthies), or the four quaternion components. The other named columns come back in the
dictionary S, under their names without blanks. A .csv file is separated by commas.

## Input

| `fname` | the name of the file |
| `CS` | crystalFrame, by default the triclinic one |
| `SS` | specimenFrame, by default the default specimen frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `columnNames` | `None` | the names of the columns, instead of the header line |
| `columns` | `None` | the zero based columns the names refer to |
| `radians` | `False` | the Euler angles are in radians instead of degree |
| `delimiter` | `None` | the separator of the columns, by default blank space |
| `header` | `None` | the number of header lines, by default the lines before the first row of numbers |
| `passive` | `False` | the angles describe the passive rotation, which is inverted |

## Output

| `ori` | orientation |
| `S` | dict of the other columns, one array each |

## See also

[exportOrientation](exportOrientation_py.html), [loadEBSD](loadEBSD_ang_py.html), [loadODF](loadODF_VPSC_py.html), [orientation.byEuler](orientation.byEuler_py.html), [OrientationImport](OrientationImport_py.html)

## Used on

[HarmonicApproximationTheory](HarmonicApproximationTheory_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/orientations.py#L29">source</a></font>
{% endraw %}
