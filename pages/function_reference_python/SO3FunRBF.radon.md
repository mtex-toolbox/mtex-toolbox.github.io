---
title: 'SO3FunRBF.radon'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.radon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.radon.html
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the Radon transform: with h the pole figure, with r the inverse pole figure, with both the
pole figure of h evaluated at r; several h superposed, weighted by superposition
(MATLAB's pdf, ipdf and calcPDF); bandwidth that of the pole figure, the kernel's unless given

## Syntax

```python
SO3FunRBF.radon(self, h=None, r=None, superposition=None, bandwidth=None)
```

```python
SO3F.radon(h)
SO3F.radon(r=r)
SO3F.radon(h, r)
```

MATLAB's [SO3FunRBF.radon](SO3FunRBF.radon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L349">source</a></font>
{% endraw %}
