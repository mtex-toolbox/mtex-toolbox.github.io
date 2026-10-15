---
title: 'EBSD filters'
sidebar: function_reference_sidebar
permalink: EBSDFilters_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSDFilters_index.html
status: Reference
---
{% raw %}
Filters for smoothing orientation measurements while controlling how grain boundaries are treated.

| Class or function | Description |
| --- | --- |
| [EBSDFilter](EBSDFilter_index_py.html) | the base of the denoising filters of a gridded EBSD map, which replace the orientation of every pixel by one computed from its neighbours: smooth(ebsd, F) |
| [meanFilter](meanFilter_index_py.html) | the mean of the neighbourhood, the fastest filter and the one that blurs a boundary most |
| [medianFilter](medianFilter_index_py.html) | the componentwise median of the neighbourhood, which takes a wild pixel out without pulling the boundary after it |
| [KuwaharaFilter](KuwaharaFilter_index_py.html) | the mean of the most homogeneous of the four quadrants of the window, which smooths within a grain and leaves a step where one is |
| [splineFilter](splineFilter_index_py.html) | the smoothing spline: the field of least \|u - f\|^2 + alpha \|L u\|^2, with L the Laplacian of the neighbour graph |
| [halfQuadraticFilter](halfQuadraticFilter_index_py.html) | the filter of Bergmann, Chan, Hielscher, Persch and Steidl: the data term and the regularisation each quadratic or an absolute value, and an absolute value keeps a step where a square blurs it |
| [l1TVFilter](l1TVFilter_index_py.html) | the total variation filter of the orientations of a map, absolute in the data term and in the differences between neighbours, which smooths noise and keeps sharp steps |
| [infimalConvolutionFilter](infimalConvolutionFilter_index_py.html) | the field split into two, u = u1 + u2, one penalised in its differences and one in its Laplacian, which keeps both a step and a slope: the infimal convolution of first and second order total variation |
{% endraw %}
