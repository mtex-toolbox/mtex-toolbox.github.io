---
title: 'reciprocalAxes'
sidebar: function_reference_sidebar
permalink: reciprocalAxes_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
compute reciprocal basis vectors from a direct crystal basis

## Syntax

<div class="mx-form" markdown="1">

```python
dual = reciprocalAxes(axes)
```

</div>

## Description

Rows of axes are the Cartesian vectors a, b and c. Return rows `a*, b* and c*` such that
axes @ dual.T is the identity. No factor `2*pi` is included. Reciprocal lengths use the
inverse of the direct-basis units. A degenerate basis has no finite reciprocal basis.

## Input

| `axes` | numeric array of shape (3, 3), one direct basis vector per row |

## Output

| `dual` | array of shape (3, 3), one reciprocal basis vector per row |

## See also

[crystalFrame.basisDual](crystalFrame.basisDual_py.html), [Miller](Miller_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
reciprocalAxes(axes)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalaxes.py#L72">source</a></font>
{% endraw %}
