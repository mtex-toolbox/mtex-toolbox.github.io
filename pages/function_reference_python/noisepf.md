---
title: 'noisepf'
sidebar: function_reference_sidebar
permalink: noisepf_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
simulated diffraction counts: Poisson counts of factor * I + background, the background
subtracted again; the same as pf.noisepf

## Syntax

Counts of radiation 100:

```python
pfn = noisepf(pf, 100)
```

With a background of 10:

```python
pfn = noisepf(pf, 100, 10)
```

The negative counts set to zero:

```python
pfn = noisepf(pf, 100, 10, nonnegative=True)
```

Every intensity I is replaced by a random count of the Poisson distribution of the mean
factor * I + background, from which the background is subtracted again: the counts a
diffractometer measures for a pole figure of intensity I, the factor the radiation, the
background the counts every direction receives. Where the background exceeds a count the
result is negative, unless nonnegative=True sets it to zero.

## Input

| | |
|---|---|
| `pf` | PoleFigure |
| `factor` | the radiation, the counts of intensity one; one per pole figure or one for all |
| `background` | the background radiation |

## Output

| | |
|---|---|
| `pfn` | PoleFigure, the simulated counts |

## Keywords

| | default | |
|---|---|---|
| `nonnegative` | `False` | set the negative counts to zero (MATLAB's flag NONNEGATIV) |
| `rng` | `None` | a numpy.random.Generator, for reproducible counts |

## See also

[calcPoleFigure](SO3Fun.calcPoleFigure_py.html), [PoleFigureSimulation](PoleFigureSimulation_py.html)

## Used on

[PoleFigureSantaFe](PoleFigureSantaFe_py.html), [PoleFigureSimulation](PoleFigureSimulation_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L638">source</a></font>
{% endraw %}
