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
measured pole figure intensities with their crystal and specimen directions

## Syntax

<div class="mx-form" markdown="1">

```python
pf = PoleFigure(h, r, I)
pf = PoleFigure([h1, h23], [r1, r2], [I1, I2])
pf = PoleFigure(h, r, I, cs, ss, superposition=c, complete=True)
```

</div>

## Description

Each pole figure records intensities for one crystal direction, or for several superposed
reflections, at a set of specimen directions. Store several pole figures as parallel lists
of crystal directions, specimen directions and intensity arrays. An intensity array must
have one value per specimen direction; all pole figures share their crystal and specimen
frames.

By default specimen directions are antipodal axes because diffraction does not distinguish
r and -r. Use complete=True for directional measurements that do distinguish them.
Index by a pole-figure number to select a reflection, or use a measurement mask to filter
its measured directions. Angles and corrections use radians unless stated otherwise.

## Input

| `h` | Miller crystal direction or directions contributing to one pole figure; a list supplies one direction set per pole figure |
| `r` | vector3d specimen directions, or a list of direction sets |
| `intensities` | numeric intensity array, or a list with one array per pole figure |
| `frames` | optional crystalFrame and specimenFrame overriding the direction frames |

## Keywords

| keyword | default | description |
|---|---|---|
| `superposition` |  | coefficients for superposed crystal directions, or one coefficient array per pole figure; default equal coefficients summing to one within each figure |
| `complete` |  | keep specimen directions oriented rather than antipodal; default False |

## Output

| `pf` | PoleFigure data set |

## Properties

| `allH` | list of Miller direction sets, one per pole figure |
| `allR` | list of specimen direction sets |
| `allI` | list of intensity arrays matching allR |
| `c` | superposition coefficients for each entry of allH |
| `CS, SS` | crystal and specimen reference frames |
| `numPF` | number of pole figures |
| `antipodal` | whether specimen directions identify r with -r |

## See also

[loadPoleFigure](loadPoleFigure_aachen_py.html), [calcODF](calcODF_py.html), [PoleFigure.normalize](PoleFigure.normalize_py.html), [PoleFigure.correct](PoleFigure.correct_py.html)

## Members

| [antipodal](PoleFigure.antipodal_py.html) | whether the specimen directions are axes, r not told from -r |
| [calcError](PoleFigure.calcError_py.html) | the mean deviation, one number per pole figure, from a recalculation by an ODF or from other pole figures on the same directions |
| [calcErrorPF](PoleFigure.calcErrorPF_py.html) | the pole figures of the deviation from a recalculation: the difference between measured intensities and those an ODF predicts, or another pole figure on the same directions |
| [calcNormalization](PoleFigure.calcNormalization_py.html) | find intensity scale factors matching a recalculation to the measured pole figures |
| [calcODF](PoleFigure.calcODF_py.html) | calcODF(pf, ...): an ODF reconstructed from the pole figure intensities, an SO3FunRBF |
| [calcODFIterative](PoleFigure.calcODFIterative_py.html) | calcODFIterative(pf, ...): the reconstruction refined successively over a ladder of halfwidths |
| [calcPoleFigure](PoleFigure.calcPoleFigure_py.html) | recalculate this data set's pole figures from an orientation distribution |
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
| [PoleFigure](PoleFigure.PoleFigure_py.html) | measured pole figure intensities with their crystal and specimen directions |
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

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L110">source</a></font>
{% endraw %}
