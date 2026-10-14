---
title: 'The class PoleFigure'
sidebar: function_reference_sidebar
permalink: PoleFigure_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure_index.html
status: Reference
---
{% raw %}
measured pole figure intensities, one or several pole figures of one specimen

## Syntax

<div class="mx-form" markdown="1">

```python
PoleFigure(h, r, I)                          h a Miller, one or several superposed directions
PoleFigure([h1, h23], [r1, r2], [I1, I2])    one pole figure per entry
PoleFigure(h, r, I, cs, ss, superposition=c, complete=True)
```

</div>

## Members

| [antipodal](PoleFigure.antipodal_py.html) | whether the specimen directions are axes, r not told from -r |
| [calcError](PoleFigure.calcError_py.html) | the mean deviation, one number per pole figure, from a recalculation by an ODF or from other pole figures on the same directions |
| [calcErrorPF](PoleFigure.calcErrorPF_py.html) | the pole figures of the deviation from a recalculation: the difference between measured intensities and those an ODF predicts, or another pole figure on the same directions |
| [calcNormalization](PoleFigure.calcNormalization_py.html) | the factor the second pole figure is scaled by to carry the mass of the first |
| [calcODF](PoleFigure.calcODF_py.html) | calcODF(pf, ...): an ODF reconstructed from the pole figure intensities, an SO3FunRBF |
| [calcODFIterative](PoleFigure.calcODFIterative_py.html) | calcODFIterative(pf, ...): the reconstruction refined successively over a ladder of halfwidths |
| [calcPoleFigure](PoleFigure.calcPoleFigure_py.html) | the pole figures an ODF predicts on the measured directions |
| [cat](PoleFigure.cat_py.html) | the pole figures of several data sets in one, in order |
| [correct](PoleFigure.correct_py.html) | the pole figures corrected for background and defocusing |
| [CS](PoleFigure.CS_py.html) | the crystal frame, that of the crystal directions allH |
| [export](PoleFigure.export_py.html) | write every pole figure of a data set to its own three column table |
| [findOutlier](PoleFigure.findOutlier_py.html) | the measurements whose intensity deviates from the mean of their neighbours by more than alpha standard deviations |
| [frame](PoleFigure.frame_py.html) | the frame of the specimen directions, pf.SS |
| [h](PoleFigure.h_py.html) | the crystal directions of all pole figures in one vector |
| [how2plot](PoleFigure.how2plot_py.html) | the plotting convention of the specimen directions, the session's for frame-free ones |
| [intensities](PoleFigure.intensities_py.html) | the intensities of all pole figures in one array, in the order of pf.r |
| [isempty](PoleFigure.isempty_py.html) | whether the pole figures hold no measurement |
| [isOutlier](PoleFigure.isOutlier_py.html) | the measurements whose intensity deviates from the mean of their neighbours by more than alpha standard deviations |
| [load](PoleFigure.load_py.html) | the pole figures a file holds, or the files of a list, read by their format |
| [max](PoleFigure.max_py.html) | the largest intensity of each pole figure, or the pointwise maximum with a number or another pole figure |
| [mean](PoleFigure.mean_py.html) | the mean intensity of each pole figure, the integral over the sphere |
| [min](PoleFigure.min_py.html) | the smallest intensity of each pole figure, or the pointwise minimum with a number or another pole figure |
| [minus](PoleFigure.minus_py.html) |  |
| [mrdivide](PoleFigure.mrdivide_py.html) |  |
| [mtimes](PoleFigure.mtimes_py.html) |  |
| [noisepf](PoleFigure.noisepf_py.html) | simulated diffraction counts: Poisson counts of factor * I + background, the background subtracted again |
| [normalize](PoleFigure.normalize_py.html) | the pole figures scaled to mean one, or to the pole figures an ODF predicts |
| [numPF](PoleFigure.numPF_py.html) | the number of pole figures |
| [plot](PoleFigure.plot_py.html) | measured pole figures in a row, the specimen directions as markers coloured by intensity |
| [plotDiff](PoleFigure.plotDiff_py.html) | the difference between measured pole figures and recalculated ones, or two measurements, drawn as pole figures of the error |
| [plus](PoleFigure.plus_py.html) |  |
| [PoleFigure](PoleFigure.PoleFigure_py.html) | measured pole figure intensities, one or several pole figures of one specimen |
| [r](PoleFigure.r_py.html) | the specimen directions of all pole figures in one vector |
| [rdivide](PoleFigure.rdivide_py.html) |  |
| [resolution](PoleFigure.resolution_py.html) | the resolution of the measurement, the finest over the pole figures |
| [rotate](PoleFigure.rotate_py.html) | the specimen directions turned |
| [scale](PoleFigure.scale_py.html) | the intensities multiplied by alpha, one number or one per pole figure |
| [select](PoleFigure.select_py.html) | the pole figures of the index or indices i, a data set of their own |
| [SS](PoleFigure.SS_py.html) | the specimen frame, that of the specimen directions allR |
| [subsref](PoleFigure.subsref_py.html) |  |
| [times](PoleFigure.times_py.html) |  |
| [uminus](PoleFigure.uminus_py.html) |  |
| [union](PoleFigure.union_py.html) | the pole figures of several data sets in one |
| [unique](PoleFigure.unique_py.html) | the duplicated directions removed: equivalent specimen directions under the specimen group carry the same pole density, so they are merged and their intensities averaged |

MATLAB's [PoleFigure_index](PoleFigure_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L109">source</a></font>
{% endraw %}
