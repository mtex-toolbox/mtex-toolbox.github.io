---
title: 'isRealFourier'
sidebar: function_reference_sidebar
permalink: isRealFourier_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
whether Fourier coefficients on the circle are those of a real function, c_{-k} = conj(c_k)

## Syntax

C_{-1}, c_0, c_1 of 1 + cos(x): True:

```python
isRealFourier([0.5, 1, 0.5])
```

With a looser tolerance:

```python
isRealFourier([0.5, 1, 0.5], tol=1e-6)
```

## Input

| | |
|---|---|
| `chat` | the coefficients c_{-L} .. c_L |

## Output

| | |
|---|---|
| `isReal` | bool |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-10` | the tolerance, relative to the size of a coefficient where it exceeds one |

## See also

[isRealSpherical](isRealSpherical_py.html), [isRealWigner](isRealWigner_py.html), [fourierSeries](fourierSeries_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L428">source</a></font>
{% endraw %}
