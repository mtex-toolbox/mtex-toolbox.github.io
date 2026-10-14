---
title: 'S2FunHarmonic.plotSpektra'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.plotSpektra_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.plotSpektra.html
status: Reference
---
{% raw %}
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

## Description

For a kernel on S2 or SO(3) the coefficients A_l / (2l + 1) are drawn over the degree l on a
logarithmic degree axis, up to degree 32 unless the bandwidth says otherwise. For a function
on S2 or SO(3) the power of every degree, the norm of its coefficients, is drawn as open
circles on a dotted line, up to the bandwidth of the function; a function of another kind is
first expanded into harmonics. A list draws one line per function in one axes. The other
keywords are those of a line plot; fontSize sets the size of the labels and ticks.

## Input

| `x` | an S2Kernel or SO3Kernel, an S2Fun or SO3Fun, or a list of them |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the highest degree drawn |
| `logarithmic` | `False` | a kernel's absolute coefficients on log-log axes |

## Output

| `h` | the matplotlib lines drawn, a list of them for a list |

## See also

[SO3FunHarmonic.power](SO3FunHarmonic.power_py.html), [plotSO3Kernel](plotSO3Kernel_py.html)

## Used on

[ODFShapes](ODFShapes_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [Annotations](Annotations_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [PoleFigureSantaFe](PoleFigureSantaFe_py.html), [HarmonicApproximationTheory](HarmonicApproximationTheory_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html), [SO3Kernels](SO3Kernels_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html)

MATLAB's [S2FunHarmonic.plotSpektra](S2FunHarmonic.plotSpektra.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/kernelplot.py#L57">source</a></font>
{% endraw %}
