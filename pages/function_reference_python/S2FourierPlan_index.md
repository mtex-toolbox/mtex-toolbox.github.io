---
title: 'The class S2FourierPlan'
sidebar: function_reference_sidebar
permalink: S2FourierPlan_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the NUFFT plan of a spherical harmonic series at arbitrary directions v up to bandwidth L,
reusable across coefficient vectors: plan(fhat) evaluates, plan.adjoint(values, weights)

## Members

| [adjoint](S2FourierPlan.adjoint_py.html) | the spherical coefficients from weighted values at the nodes, the adjoint of the evaluation |
| [setNodes](S2FourierPlan.setNodes_py.html) | moves the plan to other directions, the finufft plans kept |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L633">source</a></font>
{% endraw %}
