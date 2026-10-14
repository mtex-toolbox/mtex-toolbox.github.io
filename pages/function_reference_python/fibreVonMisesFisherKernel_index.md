---
title: 'The class fibreVonMisesFisherKernel'
sidebar: function_reference_sidebar
permalink: fibreVonMisesFisherKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the von Mises Fisher kernel of a fibre, what fibreODF convolves with; kappa the
concentration, larger is sharper

## Syntax

```python
fibreVonMisesFisherKernel(90)
fibreVonMisesFisherKernel(halfwidth=10*degree)
```

## Members

| | |
|---|---|
| [halfwidth](fibreVonMisesFisherKernel.halfwidth_py.html) | the halfwidth in closed form, acos(1 - log(2) / kappa) |
| [radon](fibreVonMisesFisherKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |

## Used on

[ODFShapes](ODFShapes_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L582">source</a></font>
{% endraw %}
