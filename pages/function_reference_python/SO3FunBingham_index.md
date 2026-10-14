---
title: 'The class SO3FunBingham'
sidebar: function_reference_sidebar
permalink: SO3FunBingham_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunBingham_index.html
status: Reference
---
{% raw %}
the Bingham distribution on SO(3): the density exp(q' A diag(kappa) A' q) on the quaternions,
symmetrised over the crystal and specimen frames, with four concentrations kappa and four
orthonormal quaternion axes A; BinghamODF builds it from axes, orientations or a fibre

```python
SO3FunBingham(kappa, A, cs, ss)
SO3FunBingham(kappa, A, cs, cs, antipodal=True)      with exchange symmetry
```

## Members

| | |
|---|---|
| [axes](SO3FunBingham.axes_py.html) | the four principal quaternion axes as orientations, MATLAB's odf.A |
| [bandwidth](SO3FunBingham.bandwidth_py.html) | the bandwidth of the harmonic expansion, the preference maxSO3Bandwidth |
| [eval](SO3FunBingham.eval_py.html) | the values of the distribution at orientations, the mean over the symmetric copies of its axes |
| [frameA](SO3FunBingham.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3FunBingham.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [interpolate](SO3FunBingham.interpolate_py.html) | the function on SO(3) through the values at the orientations, interpolate(nodes, values) |
| [mean](SO3FunBingham.mean_py.html) | the mean value of the function over SO(3), its weight |
| [radon](SO3FunBingham.radon_py.html) | the Radon transform: radon(h) the pole figure, in closed form, radon(r=r) the inverse pole figure, radon(h, r) the values |
| [rotate](SO3FunBingham.rotate_py.html) | the distribution turned by a rotation, from the left (the specimen side) or, with side='right', from the right (the crystal side) |
| [SO3FunBingham](SO3FunBingham.SO3FunBingham_py.html) | the Bingham distribution on SO(3): the density exp(q' A diag(kappa) A' q) on the quaternions, symmetrised over the crystal and specimen frames, with four concentrations kappa and four orthonormal quaternion axes A |
| [times](SO3FunBingham.times_py.html) |  |
| [uminus](SO3FunBingham.uminus_py.html) |  |

MATLAB's [SO3FunBingham_index](SO3FunBingham_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L120">source</a></font>
{% endraw %}
