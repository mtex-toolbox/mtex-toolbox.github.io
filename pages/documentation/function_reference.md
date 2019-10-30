---
title: Function Reference
keywords: function refernece
last_updated: January 8, 2018
sidebar: function_reference_sidebar
permalink: function_reference.html
folder: documentation
toc: false
---

Unlike most other texture analysis software MTEX does not have any graphical
user interface. Instead the user is suposed to write scripts. Those scripts
usually have the following structure

 1. import data
 2. inspect the data
 3. correct the data
 4. analyze the data
 5. plot and export the results of the analysis

During all these steps the data are stored as variables of different
type. There are many different types of variables (called classes) for
different objects, like
[vectors](https://mtex-toolbox.github.io/vector3d.vector3d.html),
[rotations](https://mtex-toolbox.github.io/rotation.rotation.html), [EBSD
data](vector3https://mtex-toolbox.github.io/EBSD.EBSD.html),
[grains](https://mtex-toolbox.github.io/graind2d.grain2d.html) or
[ODFs](https://mtex-toolbox.github.io/ODF.ODF.html]. The sidebar on the left
lets you browse through all different MTEX class and the corresponding
functions.

Variables are generated automatically when data are imported. E.g., the command

{% highlight matlab %}
ebsd = EBSD.load('fileName.ctf')
{% endhighlight %}

imports data from the file `fileName.ctf` and stores them in the variable
`ebsd` of type [EBSD](https://mtex-toolbox.github.io/EBSD.EBSD.html). In the
command window the variable `ebsd` is displayed as follows

{% highlight plaintext %}
ebsd = EBSD (show methods, plot)

 Phase  Orientations     Mineral         Color  Symmetry  Crystal reference frame
     0   58485 (24%)  notIndexed
     1  152345 (62%)  Forsterite  LightSkyBlue       mmm
     2   26058 (11%)   Enstatite  DarkSeaGreen       mmm
     3   9064 (3.7%)    Diopside     Goldenrod     12/m1       X||a*, Y||b*, Z||c

 Properties: bands, bc, bs, error, mad, x, y
 Scan unit : um
{% endhighlight %}

Next one can pass the variable `ebsd` to diferent MTEX function. E.g. to plot the EBSD one simply does
{% highlight matlab %}
plot(ebsd)
{% endhighlight %}

The grain structure is reconstructed by the command
{% highlight matlab %}
grains = calcGrains(ebsd)
{% endhighlight %}

which returns a new variable, here called `grains`

{% highlight plaintext %}
grains = grain2d (show methods, plot)

 Phase  Grains  Pixels     Mineral  Symmetry  Crystal reference frame
     1    1256  152345  Forsterite       mmm
     2     518   26058   Enstatite       mmm
     3    1526    9064    Diopside     12/m1       X||a*, Y||b*, Z||c

 boundary segments: 45832
 triple points: 3863

 Properties: GOS, meanRotation
{% endhighlight %}

which is of type
[grain2d](https://mtex-toolbox.github.io/grain2d.grain2d.html) and contains
the entire grain structure. Finally, we my visualize this structure by

{% highlight matlab %}
plot(grains.boundary)
{% endhighlight %}
