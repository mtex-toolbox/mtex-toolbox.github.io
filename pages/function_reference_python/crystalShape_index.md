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
a crystal shape, the polyhedron bounded by the lattice planes of the face normals N

## Syntax

Faces at the reciprocal length of their normal:

```python
cS = crystalShape(N)
```

The distances from the indices alone:

```python
cS = crystalShape(N, habitus, extension)
```

A hexagonal prism, crystalShape.cube(cs) a cube:

```python
cS = crystalShape.hex(cs)
```

From the catalogue, in its own crystal frame:

```python
cS = crystalShape.quartz(simple=True)
```

## Members

| | |
|---|---|
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
| [crystalShape](crystalShape.crystalShape_py.html) | a crystal shape, the polyhedron bounded by the lattice planes of the face normals N |
| [CS](crystalShape.CS_py.html) | the crystal frame of the face normals, the frame the shape was built in |
| [cube](crystalShape.cube_py.html) | a cube, the faces {100} |
| [diameter](crystalShape.diameter_py.html) | the largest distance between two vertices |
| [diamond](crystalShape.diamond_py.html) | the diamond crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.diamond |
| [diopside](crystalShape.diopside_py.html) | the diopside crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.diopside |
| [dolomite](crystalShape.dolomite_py.html) | the dolomite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.dolomite |
| [E](crystalShape.E_py.html) | the edges as pairs of vertex indices, every edge once |
| [enstatite](crystalShape.enstatite_py.html) | the enstatite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.enstatite |
| [epidote](crystalShape.epidote_py.html) | the epidote crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.epidote |
| [exitDistance](crystalShape.exitDistance_py.html) | how far the ray from the centre along d runs before it leaves the shape |
| [faceArea](crystalShape.faceArea_py.html) | the area of every face, per shape of a list |
| [faceCenter](crystalShape.faceCenter_py.html) | the centre of every face, the mean of its vertices, per shape of a list |
| [faceNormal](crystalShape.faceNormal_py.html) | the outward unit normal of every face, where the shape stands |
| [fluorite](crystalShape.fluorite_py.html) | the fluorite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.fluorite |
| [fluoriteComplex](crystalShape.fluoriteComplex_py.html) | the fluorite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.fluoriteComplex |
| [forsterite](crystalShape.forsterite_py.html) | the forsterite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.forsterite |
| [frame](crystalShape.frame_py.html) | the frame the vertices stand in: the crystal frame, or the specimen frame once an orientation has turned the shape |
| [garnet](crystalShape.garnet_py.html) | the garnet crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.garnet |
| [gypsum](crystalShape.gypsum_py.html) | the gypsum crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.gypsum |
| [halite](crystalShape.halite_py.html) | the halite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.halite |
| [hex](crystalShape.hex_py.html) | a hexagonal prism, the faces {10-10} and (0002) |
| [ice_VI](crystalShape.ice_VI_py.html) | the ice VI crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.ice_VI |
| [ilmenite](crystalShape.ilmenite_py.html) | the ilmenite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.ilmenite |
| [innerFace](crystalShape.innerFace_py.html) | the section of the shape by the plane through its centre with the normal n: the vertices of the polygon in order, in the frame the shape stands in |
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
| [rotate](crystalShape.rotate_py.html) | a rotation turns the shape where it is |
| [rutile](crystalShape.rutile_py.html) | the rutile crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.rutile |
| [size](crystalShape.size_py.html) | the number of shapes, one unless the shape is a list of shapes |
| [spinel](crystalShape.spinel_py.html) | the spinel crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.spinel |
| [staurolite](crystalShape.staurolite_py.html) | the staurolite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.staurolite |
| [subSet](crystalShape.subSet_py.html) | the faces whose outward normal is within a degree of one of the given normals, in crystal coordinates as the shape was built |
| [subsref](crystalShape.subsref_py.html) |  |
| [tetr](crystalShape.tetr_py.html) | a tetragonal prism, the faces {100} and {001} |
| [times](crystalShape.times_py.html) |  |
| [titanite](crystalShape.titanite_py.html) | the titanite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.titanite |
| [topaz](crystalShape.topaz_py.html) | the topaz crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.topaz |
| [tourmaline](crystalShape.tourmaline_py.html) | the tourmaline crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.tourmaline |
| [volume](crystalShape.volume_py.html) | a third of the face areas times their distance from the centre |
| [zircon](crystalShape.zircon_py.html) | the zircon crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.zircon |
| [zoisite](crystalShape.zoisite_py.html) | the zoisite crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.zoisite |

## Used on

[CrystalShapeSmorf](CrystalShapeSmorf_py.html), [CrystalShapes](CrystalShapes_py.html)

MATLAB's [crystalShape_index](crystalShape_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L88">source</a></font>
{% endraw %}
