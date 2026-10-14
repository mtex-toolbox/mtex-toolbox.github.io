---
title: 'The class S2VectorFieldHarmonic'
sidebar: function_reference_sidebar
permalink: S2VectorFieldHarmonic_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2VectorFieldHarmonic_index.html
status: Reference
---
{% raw %}
a vector field on the sphere by the spherical harmonic expansions of its three Cartesian
components, projected onto the fields equivariant under the frame's group

```python
vF = S2VectorFieldHarmonic(fhat, cs)
vF = S2VectorFieldHarmonic(fun, bandwidth=16)          a callable of the directions
vF = S2VectorFieldHarmonic(v, values, weights=w)      vectors at directions, by quadrature
vF = S2VectorFieldHarmonic([fx, fy, fz])               the component functions
```

## Members

| | |
|---|---|
| [angle](S2VectorField.angle_py.html) | the angle between two fields at every direction, or between the field and a constant vector, a function on the sphere |
| [antipode](S2VectorFieldHarmonic.antipode_py.html) | the field of the antipode, v(-xi) |
| [bandwidth](S2VectorFieldHarmonic.bandwidth_py.html) | the harmonic degree up to which the components are expanded |
| [component](S2VectorFieldHarmonic.component_py.html) | one component as a function without the group |
| [cross](S2VectorFieldHarmonic.cross_py.html) | F x x = -[x]_x F, on the rows of the coefficients F [x]_x |
| [dot](S2VectorField.dot_py.html) | the inner product with a constant vector, exact, a function without the group |
| [dot](S2VectorFieldHarmonic.dot_py.html) | the inner product with a constant vector, exact, a function without the group |
| [eval](S2VectorFieldHarmonic.eval_py.html) | the vectors of the field at the directions x, vF(x) |
| [fhat](S2VectorFieldHarmonic.fhat_py.html) | the coefficients of the components in MTEX's basis, one column per component |
| [interpolate](S2VectorFieldHarmonic.interpolate_py.html) | the least squares fit to vectors at directions |
| [isclose](S2VectorFieldHarmonic.isclose_py.html) | whether two fields agree in their coefficients up to the relative tolerance rtol |
| [mean](S2VectorFieldHarmonic.mean_py.html) | the mean vector of the field over the sphere, read off the coefficients of degree zero |
| [minus](S2VectorFieldHarmonic.minus_py.html) |  |
| [mtimes](S2VectorFieldHarmonic.mtimes_py.html) |  |
| [norm](S2VectorField.norm_py.html) | the length at every direction, a function on the sphere, as MATLAB's norm |
| [norm](S2VectorFieldHarmonic.norm_py.html) | the length at every direction, a function on the sphere, as MATLAB's norm |
| [normal](S2VectorField.normal_py.html) | the field of the outer normals, v at v, exact at bandwidth one |
| [normalize](S2VectorField.normalize_py.html) | the field scaled to unit length at every direction |
| [plot](S2VectorField.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plotSection](S2VectorField.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plus](S2VectorFieldHarmonic.plus_py.html) |  |
| [quadrature](S2VectorFieldHarmonic.quadrature_py.html) | S2VectorFieldHarmonic.quadrature(f, bandwidth=L), from a callable or from nodes and values with their weights, MATLAB's name for the constructor |
| [quiver3](S2VectorField.quiver3_py.html) | quiver3d(t): a tangent vector as an arrow at its reference in orientation space, in the coordinates of the held axes or axis angle space |
| [quiver](S2VectorField.quiver_py.html) | quiver(v, w), quiver(vF), quiver(ori, w): arrows at directions, a vector or axis field, or arrows at orientations in the sections of the current figure |
| [quiverSection](S2VectorField.quiverSection_py.html) | quiver(ori, w) on a section plot: an arrow along w at every orientation, w a specimen direction per orientation |
| [rdivide](S2VectorFieldHarmonic.rdivide_py.html) |  |
| [rotate](S2VectorFieldHarmonic.rotate_py.html) | v'(xi) = r v(r^-1 xi): the components rotate and mix |
| [S2VectorField](S2VectorField.S2VectorField_py.html) | a vector field on the sphere by the spherical harmonic expansions of its three Cartesian components, projected onto the fields equivariant under the frame's group |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.S2VectorFieldHarmonic_py.html) | a vector field on the sphere by the spherical harmonic expansions of its three Cartesian components, projected onto the fields equivariant under the frame's group |
| [symmetrise](S2VectorFieldHarmonic.symmetrise_py.html) | the projection onto the equivariant fields of the frame, v(s xi) = s v(xi) for the elements of the group including the improper ones |
| [times](S2VectorFieldHarmonic.times_py.html) |  |
| [truncate](S2VectorFieldHarmonic.truncate_py.html) | the field cut off, or padded with zeros, at the bandwidth L |
| [uminus](S2VectorFieldHarmonic.uminus_py.html) |  |
| [x](S2VectorFieldHarmonic.x_py.html) | the Cartesian components as functions |
| [y](S2VectorFieldHarmonic.y_py.html) | the y component as a function on the sphere |
| [z](S2VectorFieldHarmonic.z_py.html) | the z component as a function on the sphere |

## Used on

[S2FunVectorField](S2FunVectorField_py.html)

MATLAB's [S2VectorFieldHarmonic_index](S2VectorFieldHarmonic_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2vectorfield.py#L181">source</a></font>
{% endraw %}
