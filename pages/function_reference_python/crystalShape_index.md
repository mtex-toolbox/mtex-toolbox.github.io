---
title: 'The class crystalShape'
sidebar: function_reference_sidebar
permalink: crystalShape_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalShape_index.html
status: Reference
---
{% raw %}
construct a convex crystal morphology from symmetry-related lattice planes.

## Syntax

<div class="mx-form" markdown="1">

```python
cS = crystalShape(N)
```

Construct from face normals in a crystal frame.

</div>

<div class="mx-form" markdown="1">

```python
cS = crystalShape(N, habitus=1, extension=(1, 1, 2))
```

Modify the relative distances of the crystal forms.

</div>

<div class="mx-form" markdown="1">

```python
cS = crystalShape.hex(cs)
```

Construct a hexagonal prism in the frame cs.

</div>

<div class="mx-form" markdown="1">

```python
cS = crystalShape.quartz(simple=True)
```

Use a simplified shape from the mineral catalogue.

</div>

## Description

Each supplied Miller normal represents a crystal form: all its symmetry equivalents
are generated using the point group of its crystal frame. The shape is the bounded
intersection of the half spaces dot(vertex, normal) <= 1. Before the common display
scaling, a face is therefore 1/norm(normal) from the origin. Lengthening a normal
moves its planes inward; shortening it can move them so far outward that other
planes exclude those faces entirely. Supply enough forms to enclose a finite volume.

The optional habitus and extension parameters adjust relative plane distances using
the Miller indices. For habitus p > 0, a normal with indices (h, k, l) is divided by
`((abs(h)*extension[0])**p + (abs(k)*extension[1])**p +
(abs(l)*extension[2])**p)**(1/p)` before symmetry expansion. With habitus=0 this step
is skipped and extension has no effect. This changes the morphology rather than
assigning an absolute size.

The vertices are initially scaled so that their largest distance from the origin is
0.5. For a centrally symmetric crystal this gives diameter one. Read or assign diameter
to set a particular size, or multiply the shape by a scale factor. Areas and volumes
then have the corresponding squared and cubed length units.

An orientation places the shape in specimen coordinates: `ori*cS`. A list of orientations
gives a list of identically connected shapes; `cS+position` translates their vertices.
Face selection uses cS[normals], while cS[k] selects one shape from a list. Face normals
used for selection are in the original crystal coordinates.

For a complete example, construct and plot a hexagonal prism without loading a data set:


<div class="mx-form" markdown="1">

```python
cs = crystalFrame('6/mmm', [3, 3, 4.7])
cS = crystalShape.hex(cs)
cS.diameter = 2
plot(cS)
```

</div>

## Input

| `N` | Miller face normals, represented by vector3d data carrying one crystalFrame; their lengths determine the relative distances of the planes |

## Keywords

| keyword | default | description |
|---|---|---|
| `habitus` |  | nonnegative exponent controlling the relative prominence of mixed-index forms; zero preserves the supplied Cartesian normals |
| `extension` |  | three relative scale factors associated with the h, k and l indices; used only when habitus is positive |

## Output

| `cS` | crystalShape, initially expressed in the crystal frame of N |

## Properties

| `N` | original face normals, one per supplied crystal form |
| `V` | vertices as vector3d data; a list of shapes has shape (numShapes, numVertices) |
| `F` | face-to-vertex connectivity, with zero-based vertex indices and -1 padding |
| `E` | unique edges as pairs of zero-based vertex indices |
| `CS` | crystalFrame in which the face normals were defined |
| `frame` | frame of the current vertices, changing to the specimen frame after an orientation is applied |
| `numFaces` | number of polygonal faces, shared by every shape in a list |
| `numVertices` | number of vertices per shape |
| `diameter` | largest distance between any two vertices; assigning it rescales the vertices |
| `faceArea` | numeric area of each face, with one row per shape in a list |
| `faceCenter` | vector3d positions given by the mean of the vertices of each face |
| `volume` | enclosed volume, one value per shape |
| `habitus` | exponent used when the shape was constructed |
| `extension` | three index scale factors used when the shape was constructed |

## References

- J. Enderlein, A package for displaying crystal morphology, Mathematica Journal 7(1), 1997

## See also

[Miller](Miller_py.html), [crystalShape.cube](crystalShape.cube_py.html), [crystalShape.hex](crystalShape.hex_py.html), [crystalShape.innerFace](crystalShape.innerFace_py.html), [CrystalShapes](CrystalShapes_py.html)

## Members

| [albite](crystalShape.albite_py.html) | the albite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.albite |
| [amphibole](crystalShape.amphibole_py.html) | the amphibole crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.amphibole |
| [analcime](crystalShape.analcime_py.html) | the analcime crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.analcime |
| [andalusite](crystalShape.andalusite_py.html) | the andalusite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.andalusite |
| [anorthite](crystalShape.anorthite_py.html) | the anorthite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.anorthite |
| [antigorite](crystalShape.antigorite_py.html) | the antigorite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.antigorite |
| [apatite](crystalShape.apatite_py.html) | the apatite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.apatite |
| [aragonite](crystalShape.aragonite_py.html) | the aragonite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.aragonite |
| [augite](crystalShape.augite_py.html) | the augite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.augite |
| [biotite](crystalShape.biotite_py.html) | the biotite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.biotite |
| [brucite](crystalShape.brucite_py.html) | the brucite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.brucite |
| [calcite](crystalShape.calcite_py.html) | the calcite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.calcite |
| [chromite](crystalShape.chromite_py.html) | the chromite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.chromite |
| [clinochlore](crystalShape.clinochlore_py.html) | the clinochlore crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.clinochlore |
| [cordierite](crystalShape.cordierite_py.html) | the cordierite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.cordierite |
| [corundum](crystalShape.corundum_py.html) | the corundum crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.corundum |
| [crystalShape](crystalShape.crystalShape_py.html) | construct a convex crystal morphology from symmetry-related lattice planes |
| [CS](crystalShape.CS_py.html) | the crystal frame of the face normals, the frame the shape was built in |
| [cube](crystalShape.cube_py.html) | construct a crystal bounded by the symmetry equivalents of the (100) plane |
| [diameter](crystalShape.diameter_py.html) | the largest distance between two vertices |
| [diamond](crystalShape.diamond_py.html) | the diamond crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.diamond |
| [diopside](crystalShape.diopside_py.html) | the diopside crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.diopside |
| [dolomite](crystalShape.dolomite_py.html) | the dolomite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.dolomite |
| [E](crystalShape.E_py.html) | the edges as pairs of vertex indices, every edge once |
| [enstatite](crystalShape.enstatite_py.html) | the enstatite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.enstatite |
| [epidote](crystalShape.epidote_py.html) | the epidote crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.epidote |
| [exitDistance](crystalShape.exitDistance_py.html) | measure the distance from the vertex mean to the surface along a ray |
| [faceArea](crystalShape.faceArea_py.html) | area of each polygonal face in squared vertex-length units |
| [faceCenter](crystalShape.faceCenter_py.html) | mean of each face's vertices as vector3d positions in the current frame |
| [faceNormal](crystalShape.faceNormal_py.html) | the outward unit normal of every face, where the shape stands |
| [fluorite](crystalShape.fluorite_py.html) | the fluorite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.fluorite |
| [fluoriteComplex](crystalShape.fluoriteComplex_py.html) | the fluorite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.fluoriteComplex |
| [forsterite](crystalShape.forsterite_py.html) | the forsterite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.forsterite |
| [frame](crystalShape.frame_py.html) | the frame the vertices stand in: the crystal frame, or the specimen frame once an orientation has turned the shape |
| [garnet](crystalShape.garnet_py.html) | the garnet crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.garnet |
| [gypsum](crystalShape.gypsum_py.html) | the gypsum crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.gypsum |
| [halite](crystalShape.halite_py.html) | the halite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.halite |
| [hex](crystalShape.hex_py.html) | construct a hexagonal prism from prismatic and basal plane forms |
| [ice_VI](crystalShape.ice_VI_py.html) | the ice VI crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.ice_VI |
| [ilmenite](crystalShape.ilmenite_py.html) | the ilmenite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.ilmenite |
| [innerFace](crystalShape.innerFace_py.html) | cut a single crystal shape by a plane through the mean of its vertices |
| [kyanite](crystalShape.kyanite_py.html) | the kyanite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.kyanite |
| [magnesite](crystalShape.magnesite_py.html) | the magnesite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.magnesite |
| [magnetite](crystalShape.magnetite_py.html) | the magnetite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.magnetite |
| [microcline](crystalShape.microcline_py.html) | the microcline crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.microcline |
| [monazite](crystalShape.monazite_py.html) | the monazite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.monazite |
| [mtimes](crystalShape.mtimes_py.html) |  |
| [muscovite](crystalShape.muscovite_py.html) | the muscovite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.muscovite |
| [numFaces](crystalShape.numFaces_py.html) | the number of faces of the shape |
| [numVertices](crystalShape.numVertices_py.html) | the number of vertices of the shape |
| [olivine](crystalShape.olivine_py.html) | the olivine crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.olivine |
| [orthoclase](crystalShape.orthoclase_py.html) | the orthoclase crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.orthoclase |
| [plagioclase](crystalShape.plagioclase_py.html) | the Plagioclase crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.plagioclase |
| [plot](crystalShape.plot_py.html) | a crystal shape drawn as the polygons of its faces, in a 3D axes or onto a held map |
| [plotInnerDirection](crystalShape.plotInnerDirection_py.html) | a crystal direction drawn as an arrow from the centre of a crystal shape to its surface |
| [plotInnerFace](crystalShape.plotInnerFace_py.html) | the section of a crystal shape by a lattice plane through its centre |
| [plotSlipSystem](crystalShape.plotSlipSystem_py.html) | a slip system drawn inside a crystal shape: the slip plane through the centre with the slip direction as an arrow in it |
| [plus](crystalShape.plus_py.html) |  |
| [quartz](crystalShape.quartz_py.html) | the Quartz crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.quartz |
| [repmat](crystalShape.repmat_py.html) | n copies of the shape as a list |
| [rotate](crystalShape.rotate_py.html) | rotate crystal vertices, or place them in a specimen using an orientation |
| [rutile](crystalShape.rutile_py.html) | the rutile crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.rutile |
| [size](crystalShape.size_py.html) | the number of shapes, one unless the shape is a list of shapes |
| [spinel](crystalShape.spinel_py.html) | the spinel crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.spinel |
| [staurolite](crystalShape.staurolite_py.html) | the staurolite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.staurolite |
| [subSet](crystalShape.subSet_py.html) | select faces by outward normal in the original crystal coordinates |
| [subsref](crystalShape.subsref_py.html) |  |
| [tetr](crystalShape.tetr_py.html) | construct a tetragonal prism from the (100) and (001) plane forms |
| [times](crystalShape.times_py.html) |  |
| [titanite](crystalShape.titanite_py.html) | the titanite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.titanite |
| [topaz](crystalShape.topaz_py.html) | the topaz crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.topaz |
| [tourmaline](crystalShape.tourmaline_py.html) | the tourmaline crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.tourmaline |
| [volume](crystalShape.volume_py.html) | enclosed polyhedron volume in cubed vertex-length units, returned once per shape |
| [zircon](crystalShape.zircon_py.html) | the zircon crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.zircon |
| [zoisite](crystalShape.zoisite_py.html) | the zoisite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.zoisite |

## Used on

[CrystalShapeSmorf](CrystalShapeSmorf_py.html), [CrystalShapes](CrystalShapes_py.html)

MATLAB's [crystalShape_index](crystalShape_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L88">source</a></font>
{% endraw %}
