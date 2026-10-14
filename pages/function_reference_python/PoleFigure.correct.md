---
title: 'PoleFigure.correct'
sidebar: function_reference_sidebar
permalink: PoleFigure.correct_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.correct.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the pole figures corrected for background and defocusing

## Syntax

The background subtracted:

```python
pf = pf.correct(background=pfBg)
```

The defocusing divided out:

```python
pf = pf.correct(defocusing=pfDef)
```

Both, the defocusing without its background:

```python
pf = pf.correct(background=pfBg, defocusing=pfDef, defocusingBackground=pfDefBg)
```

The background is subtracted from the intensities, and they are divided by the
defocusing, from which its own background is subtracted first. Each correction is a
PoleFigure of its own or a number. One measured pole figure serves all, and a correction
measured on other specimen directions is interpolated onto those of pf: spherically
where it covers the sphere, by a cubic spline in the polar angle where it is measured
along a curve, as a defocusing usually is.

## Input

| | |
|---|---|
| `pf` | PoleFigure |

## Output

| | |
|---|---|
| `pf` | PoleFigure, the corrected intensities |

## Keywords

| | default | |
|---|---|---|
| `background` | `None` | PoleFigure or number, the background (MATLAB's option bg) |
| `defocusing` | `None` | PoleFigure, the defocusing (MATLAB's option def) |
| `defocusingBackground` | `None` | PoleFigure or number, the background of the defocusing measurement (MATLAB's option defbg) |

## See also

[PoleFigure.noisepf](PoleFigure.noisepf_py.html), [PoleFigureCorrection](PoleFigureCorrection_py.html)

MATLAB's [PoleFigure.correct](PoleFigure.correct.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L457">source</a></font>
{% endraw %}
