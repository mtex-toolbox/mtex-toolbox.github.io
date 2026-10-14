---
title: 'orientation.rand'
sidebar: function_reference_sidebar
permalink: orientation.rand_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

random orientations, uniformly distributed or within maxAngle of the identity;
rng= a NumPy random generator, antipodal=True misorientations with grain exchange

## Syntax

```python
orientation.rand(*args, rng=None, antipodal=False, maxAngle=None)
```

```python
ori = orientation.rand(cs)                          # one
ori = orientation.rand(n, cs, ss)
ori = orientation.rand(m, n, cs)                    # an m x n array
ori = orientation.rand(n, cs, maxAngle=10*degree)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L193">source</a></font>
{% endraw %}
