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

D_n(pi/2), a (2n+1) x (2n+1) matrix per degree:

```python
pairs = list(halfPiDegrees(8))
```

In single precision:

```python
pairs = list(halfPiDegrees(8, dtype=np.float32))
```

Every coefficient transform walks the degrees in order and needs one matrix at a time; up to
bandwidth 256 the matrices are computed once per dtype and kept, above it the recursion yields
them one after the other without holding them.

## Input

| | |
|---|---|
| `L` | the largest degree |

## Output

| | |
|---|---|
| `pairs` | an iterator of (n, d_n), n = 0 .. L |

## Keywords

| | default | |
|---|---|---|
| `dtype` | `<class 'numpy.float64'>` | the floating point type of the matrices |

## See also

[wignerd](wignerd_py.html), [sphericalTransform](sphericalTransform_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L93">source</a></font>
{% endraw %}
