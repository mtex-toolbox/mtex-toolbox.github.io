---
title: 'orthogonalTransform.byEuler'
sidebar: function_reference_sidebar
permalink: orthogonalTransform.byEuler_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orthogonalTransform](orthogonalTransform_index_py.html).

the proper transforms of the Euler angles, Bunge's ZXZ convention unless one is named

## Syntax

```python
orthogonalTransform.byEuler(a, b=None, c=None, convention=None)
```

```python
T = orthogonalTransform.byEuler(phi1, Phi, phi2)
T = orthogonalTransform.byEuler(alpha, beta, gamma, 'ZYZ')
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L605">source</a></font>
{% endraw %}
