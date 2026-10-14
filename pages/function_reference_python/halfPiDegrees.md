---
title: 'halfPiDegrees'
sidebar: function_reference_sidebar
permalink: halfPiDegrees_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Wigner-d matrices d_0(pi/2) .. d_L(pi/2) as pairs (n, d_n), held up to bandwidth 256 and
streamed by the recursion above

## Syntax

<div class="mx-form" markdown="1">

```python
pairs = list(halfPiDegrees(8))
```

D_n(pi/2), a (2n+1) x (2n+1) matrix per degree.

</div>

<div class="mx-form" markdown="1">

```python
pairs = list(halfPiDegrees(8, dtype=np.float32))
```

In single precision.

</div>

## Description

Every coefficient transform walks the degrees in order and needs one matrix at a time; up to
bandwidth 256 the matrices are computed once per dtype and kept, above it the recursion yields
them one after the other without holding them.

## Input

| `L` | the largest degree |

## Keywords

| keyword | default | description |
|---|---|---|
| `dtype` | `np.float64` | the floating point type of the matrices |

## Output

| `pairs` | an iterator of (n, d_n), n = 0 .. L |

## See also

[wignerd](wignerd_py.html), [sphericalTransform](sphericalTransform_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L93">source</a></font>
{% endraw %}
