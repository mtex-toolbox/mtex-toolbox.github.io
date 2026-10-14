---
title: 'The class SO3FourierPlan'
sidebar: function_reference_sidebar
permalink: SO3FourierPlan_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
on SO(3): folds says that the function is invariant under those z folds on the two sides:
in the forward its coefficients outside them are zero, in the adjoint the projection of H5
is about to zero them. Both directions then run on the reduced index set, where the two
periodic axes of the array shrink by the folds and the nodes are stretched

## Members

| [adjoint](SO3FourierPlan.adjoint_py.html) | coefficients from weighted values at the nodes |
| [setNodes](SO3FourierPlan.setNodes_py.html) | moves the plan to other rotations, the finufft plans kept |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L573">source</a></font>
{% endraw %}
