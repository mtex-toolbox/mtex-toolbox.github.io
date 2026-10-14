---
title: 'The class S1FourierPlan'
sidebar: function_reference_sidebar
permalink: S1FourierPlan_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the circle: f(x) = sum_{k=-L}^{L} c_k e^{ikx}

## Input

| `x` | one-dimensional array of node angles in radians |
| `L` | maximum Fourier mode; coefficient arrays have length 2*L+1, ordered -L through L |
| `eps` | requested numerical transform accuracy; None uses the configured transform tolerance |

## Members

| [adjoint](S1FourierPlan.adjoint_py.html) | the Fourier coefficients c_{-L} . |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L712">source</a></font>
{% endraw %}
