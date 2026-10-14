---
title: 'The class fibre'
sidebar: function_reference_sidebar
permalink: fibre_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre_index.html
status: Reference
---
{% raw %}
a fibre in orientation space: the orientations mapping the crystal direction h onto the
specimen direction r, or the arc of them between two orientations; a list of fibres by shape

```python
f = fibre(h, r)                    the orientations with ori * h = r
f = fibre(h, r, ss)
f = fibre(o1, o2)                  the arc from o1 to o2 about the axis between them
f = fibre(o1, h)                   the whole fibre through o1 about h
f = fibre(o1, o2, full=True)       the full fibre through the arc
```

## Members

| | |
|---|---|
| [alpha](fibre.alpha_py.html) | the alpha fibre of rolling textures, between the orientations MTEX puts at its ends |
| [angle](fibre.angle_py.html) | the angle by which ori * h misses r, the least over both orbits, from the chord of the closest pair |
| [antipodal](fibre.antipodal_py.html) | whether the fibre is antipodal, read off its crystal direction |
| [arcAngle](fibre.arcAngle_py.html) | the angle turned about h from o1 to o2, the whole circle when full |
| [beta](fibre.beta_py.html) | the beta fibre of rolling textures, between the orientations MTEX puts at its ends |
| [cat](fibre.cat_py.html) | the fibres joined into one list along an axis |
| [CS](fibre.CS_py.html) | the crystal frame of the fibre, MATLAB's f.CS |
| [epsilon](fibre.epsilon_py.html) | the epsilon fibre of rolling textures, between the orientations MTEX puts at its ends |
| [eq](fibre.eq_py.html) | equal when the frames are the same and h and r agree up to the symmetry of the frames within tol, both flipped counting as well |
| [eta](fibre.eta_py.html) | the eta fibre of rolling textures, between the orientations MTEX puts at its ends |
| [fibre](fibre.fibre_py.html) | a fibre in orientation space: the orientations mapping the crystal direction h onto the specimen direction r, or the arc of them between two orientations |
| [fit](fibre.fit_py.html) | the fibre through a list of orientations: the plane of the two leading eigenvectors of their quaternion tensor, the orientations first moved to the representatives nearest their mean, or taken as stored with symmetry=False |
| [flatten](fibre.flatten_py.html) | the fibres as a flat list |
| [frameA](fibre.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](fibre.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [gamma](fibre.gamma_py.html) | the gamma fibre of rolling textures, between the orientations MTEX puts at its ends |
| [horzcat](fibre.horzcat_py.html) | the fibres joined into one list along an axis |
| [isFull](fibre.isFull_py.html) | the fibre is full when both ends coincide |
| [multiplicity](fibre.multiplicity_py.html) | the number of distinct symmetrically equivalent fibres |
| [ndim](fibre.ndim_py.html) | the number of dimensions of the list of fibres |
| [ne](fibre.ne_py.html) | Return self!=value |
| [orientation](fibre.orientation_py.html) | the orientations along the fibre, points x shape, turning about h from o1 to o2 |
| [plot](fibre.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plotIPDF](fibre.plotIPDF_py.html) | plotIPF(ori, r), plotIPF(ori, data, r), plotIPF(odf, r): the inverse pole figures of a list of orientations, the crystal directions along r as markers on the crystal sector, or of an ODF (MATLAB's plotIPDF) |
| [plotPDF](fibre.plotPDF_py.html) | plotPF(ori, h), plotPF(ori, data, h), plotPF(ori, h, points=100, contourf=True, antipodal=True), plotPF(odf, h), plotPF(pf) |
| [r](fibre.r_py.html) | the specimen direction of the fibre, o1 * h |
| [rand](fibre.rand_py.html) | random fibres between random crystal and specimen directions, of the shape and between the frames given |
| [reshape](fibre.reshape_py.html) | the fibres in another shape |
| [rotation](fibre.rotation_py.html) | the rotations along the fibre, points x shape, turning about h from o1 to o2 |
| [shape](fibre.shape_py.html) | the shape of the list of fibres |
| [size](fibre.size_py.html) | the number of fibres in the list |
| [SS](fibre.SS_py.html) | the specimen frame of the fibre, MATLAB's f.SS |
| [subsref](fibre.subsref_py.html) |  |
| [symmetrise](fibre.symmetrise_py.html) | the equivalent fibres s * o1 * inv(g) about g * h over both groups, or the distinct ones |
| [tau](fibre.tau_py.html) | the tau fibre of rolling textures, between the orientations MTEX puts at its ends |
| [theta](fibre.theta_py.html) | the theta fibre of rolling textures, the orientations with <100> along the normal direction |
| [vertcat](fibre.vertcat_py.html) | the fibres joined into one list along an axis |

## Used on

[OrientationFibre](OrientationFibre_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [BinghamODFs](BinghamODFs_py.html), [FibreODFs](FibreODFs_py.html), [ODFCharacteristics](ODFCharacteristics_py.html), [ODFPlot](ODFPlot_py.html), [ODFPoleFigure](ODFPoleFigure_py.html), [Annotations](Annotations_py.html), [PlotTypes](PlotTypes_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [RotationFibre](RotationFibre_py.html)

MATLAB's [fibre_index](fibre_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L40">source</a></font>
{% endraw %}
