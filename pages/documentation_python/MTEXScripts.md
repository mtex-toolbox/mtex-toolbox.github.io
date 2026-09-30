---
title: 'MTEX Scripts'
sidebar: documentation_sidebar
permalink: MTEXScripts_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: MTEXScripts.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/MTEXScripts.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/GeneralConcepts/MTEXScripts.py">edit page</a></font>

<!--introduction-->

MTEX has no graphical user interface for an analysis. You work with MTEX by writing Python
scripts: text files that keep the commands for an analysis in a reproducible order.

A typical script follows five steps.

1. Import data.
2. Inspect the imported data.
3. Correct the data when necessary.
4. Analyze the data.
5. Plot and export the results.

During these steps, Python stores data under names called variables. Each variable has a
type, called its class, which determines the operations that can be applied to it. MTEX
provides classes for objects such as [vectors](vector3d.vector3d.html),
[rotations](rotation.rotation.html), [EBSD data](EBSD.EBSD.html),
[grains](grain2d.grain2d.html), and
[orientation distribution functions (ODFs)](SO3Fun.SO3Fun.html). The
[Function Reference](FunctionReference.html) lists all MTEX classes and functions.

```python
from mtex import *
```

## Import and inspect data

Import functions create variables automatically. Here, `fileName` stores the path to an
example CTF file. The second command imports that file and stores the result in the
variable `ebsd`.

```python
fileName = mtexdatafile('forsterite')
ebsd = EBSD.load(fileName, eulerCorrection=rotation.byAxisAngle(xvector, 180 * degree))
ebsd
```

```text
EBSD (y↓→x)
  size: 336 × 732 grid
  Phase  Orientations  Mineral     Color         Symmetry  Crystal reference frame
  0      58485 (24%)   notIndexed
  1      152345 (62%)  Forsterite  LightSkyBlue  mmm       Forsterite
  2      26058 (11%)   Enstatite   DarkSeaGreen  mmm       Enstatite
  3      9064 (3.7%)   Diopside    Goldenrod     12/m1     Diopside
  properties    : bands, bc, bs, error, mad
  scan unit     : um
  X × Y         : [0 → 3.655e+04] × [0 → 1.675e+04]
  square lattice: spacing 50
```

Writing the variable's name on its own line displays a summary of `ebsd`. This is a quick
inspection step: the summary reports the phases, numbers of orientations, properties, map
extent, and grid size. The `eulerCorrection` option also corrects the imported orientations
by the specified rotation.

## Plot the phase map

Pass a variable to an MTEX function to operate on its data. The command below passes
`ebsd` to `plot` and colors every indexed measurement by its phase.

```python
plot(ebsd)
```

<center class="mtex-figure"><img class="inline" src="figures/python/MTEXScripts-3.png"></center>

Notice the large blue forsterite regions, the smaller green enstatite and yellow diopside
regions, and the white notIndexed areas. A notIndexed measurement is one whose diffraction
pattern could not be indexed.

## Reconstruct and inspect grains

The next command segments the measurements into grains. A grain is a phase-homogeneous,
spatially connected region of EBSD measurements produced by segmentation. The `minPixel`
option excludes indexed grains with fewer than three measurements.

```python
grains = calcGrains(ebsd, minPixel=3)
grains
```

```text
grain2d (y↓→x)
  size: 1014
  Phase  Grains               Mineral     Color         Symmetry  Crystal reference frame
  0      13 (1298 pixels)     notIndexed
  1      541 (151658 pixels)  Forsterite  LightSkyBlue  mmm       Forsterite
  2      228 (25739 pixels)   Enstatite   DarkSeaGreen  mmm       Enstatite
  3      232 (7673 pixels)    Diopside    Goldenrod     12/m1     Diopside
  boundary segments: 37302, inner: 188, triple points: 1683
```

The returned [grain2d](grain2d.grain2d.html) object is stored in `grains`. Its summary
reports the number of grains in each phase and information about their boundaries.

## Add the grain boundaries

Plotting on the same axes connects the result of the analysis to the phase map.
`hold(True)` preserves the existing map while the boundary is added, and `hold(False)` ends
that plotting state.

```python
hold(True)
plot(grains.boundary, lineWidth=2)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/MTEXScripts-5.png"></center>

Notice that the dark lines trace changes between neighboring grains. Some lines lie within
one color because grains of the same phase can still have different orientations.

## Organize a script

An MTEX script is a sequence of Python and MTEX commands. Add comments on lines beginning
with `#` to record why each command is present. These explanations make the analysis
understandable when the script is reopened.

Divide a longer script into cells with lines beginning with `# %%`. In VS Code, Spyder or
PyCharm, Shift+Enter runs the current cell in an interactive window and advances to the
next one. Running one cell at a time lets you inspect each intermediate variable before
continuing. A Jupyter notebook is the same sequence of cells in another file format;
`jupytext` converts between the two, and every page of this documentation is such a script
(`docs/notebook.py <Page>` opens one as a notebook).

## References

* Python Software Foundation, [The Python Tutorial](https://docs.python.org/3/tutorial/),
  _Python documentation_, and Microsoft,
  [Python Interactive window](https://code.visualstudio.com/docs/python/jupyter-support-py),
  _VS Code documentation_. They explain script files, comments, and the cells used on this
  page. The MATLAB page cites MathWorks'
  [Create Scripts](https://www.mathworks.com/help/matlab/matlab_prog/create-scripts.html).

## Next

Continue with [Lists and Indexing](ListsAndIndexing_py.html) to select parts of an MTEX
variable and apply one operation to many stored objects.
{% endraw %}
