---
title: 'S2Kernel.plotSpektra'
sidebar: function_reference_sidebar
permalink: S2Kernel.plotSpektra_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Kernel.plotSpektra.html
status: Reference
---
{% raw %}
A method of [S2Kernel](S2Kernel_index_py.html).

the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree;
MATLAB's plotSpektra

## Syntax

<div class="mx-form" markdown="1">

```python
plotSpectrum(psi)
```

The Chebyshev coefficients of a kernel.

</div>

<div class="mx-form" markdown="1">

```python
plotSpectrum(psi, bandwidth=16, logarithmic=True)
```

The absolute values, on log-log axes.

</div>

<div class="mx-form" markdown="1">

```python
plotSpectrum(odf)
```

The harmonic power of an SO3Fun.

</div>

<div class="mx-form" markdown="1">

```python
plotSpectrum([odf1, odf2], bandwidth=20)
```

One line per function.

</div>

<div class="mx-form" markdown="1">

```python
odf.plotSpectrum()
```

The same, as a method.

</div>

## Description

What is drawn depends on the input:

- a kernel on S2 or SO(3): the coefficients A_l / (2l + 1) over the degree l, on a
logarithmic degree axis, up to degree 32 unless the bandwidth says otherwise. With
logarithmic=True their absolute values on log-log axes.
- a function on S2 or SO(3): the power of every degree, the norm of its coefficients, as
open circles on a dotted line, up to the bandwidth of the function. A function of another
kind is first expanded into harmonics; logarithmic changes nothing.
- a function on the circle: the norm of the coefficients of k and -k over |k|, drawn the
same way.
- a list: one line per entry, in one axes.

The other keywords are those of a line plot; fontSize sets the size of the labels and ticks.

## Input

| `x` | an S2Kernel or SO3Kernel, an S1Fun, S2Fun or SO3Fun, or a list of them |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the highest degree drawn |
| `logarithmic` | `False` | a kernel's absolute coefficients on log-log axes |

## Output

| `h` | the matplotlib lines drawn, a list of them for a list |

## See also

[SO3FunHarmonic.power](SO3FunHarmonic.power_py.html), [plotSO3Kernel](plotSO3Kernel_py.html)

MATLAB's [S2Kernel.plotSpektra](S2Kernel.plotSpektra.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/kernelplot.py#L57">source</a></font>
{% endraw %}
