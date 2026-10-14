---
title: 'BinghamODF'
sidebar: function_reference_sidebar
permalink: BinghamODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: BinghamODF.html
status: Reference
---
{% raw %}
a Bingham distributed ODF; MATLAB's BinghamODF

## Syntax

About one orientation, the identity basis in its frames:

```python
odf = BinghamODF(20, ori)
```

About a fibre:

```python
odf = BinghamODF(20, f)
```

The identity basis in a crystal frame:

```python
odf = BinghamODF(20, cs)
```

Four concentrations, the axes a 4x4 matrix:

```python
odf = BinghamODF([20, 10, 0, 0], A, cs, ss)
```

A Bingham distribution from four concentrations and four orthogonal quaternion axes, the
axes as a 4x4 matrix, four orientations, or one orientation standing for the identity
basis; fewer concentrations are padded with zeros; a fibre takes its two axes with the
same concentration, as MATLAB's constructor does. The keywords of SO3FunBingham, weight
and antipodal, are passed on.

## Input

| | |
|---|---|
| `kappa` | the form parameters, up to four concentrations |
| `A` | the axes: an orthogonal 4x4 matrix, four orientations, one orientation, a fibre, a crystal frame, or a crystal direction h followed by a specimen direction r for the fibre between them |
| `frames` | the crystal and the specimen frame, when A does not carry them |

## Output

| | |
|---|---|
| `odf` | SO3FunBingham |

## See also

[calcBinghamODF](orientation.calcBinghamODF_py.html), [fibreODF](fibreODF_py.html), [unimodalODF](unimodalODF_py.html), [uniformODF](uniformODF_py.html), [SO3FunBingham](SO3FunBingham_index_py.html)

## Signature

```python
BinghamODF(kappa, A=None, *frames, **kwargs)
```

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [BinghamODFs](BinghamODFs_py.html), [SO3FunDefinition](SO3FunDefinition_py.html)

MATLAB's [BinghamODF](BinghamODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L341">source</a></font>
{% endraw %}
