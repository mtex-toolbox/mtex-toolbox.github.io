---
title: 'The class slipSystem'
sidebar: function_reference_sidebar
permalink: slipSystem_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: slipSystem_index.html
status: Reference
---
{% raw %}
slip systems: slip directions b with plane normals n orthogonal to them and a critical resolved
shear stress each, in crystal coordinates while Miller indexed, in specimen coordinates once
an orientation has rotated them

## Syntax

```python
sS = slipSystem(b, n)
sS = slipSystem(b, n, CRSS)
sS = slipSystem.fcc(cs)
```

## Members

| | |
|---|---|
| [basal](slipSystem.basal_py.html) | the basal slip system <11-20>(0001) of a hexagonal crystal |
| [bcc](slipSystem.bcc_py.html) | the slip systems <1-11>{011}, <-111>{211} and <-111>{321} of a body-centred cubic crystal |
| [cat](slipSystem.cat_py.html) | the list of several systems of one crystal, MATLAB's [sS1, sS2] |
| [char](slipSystem.char_py.html) | one plane and one direction in it, (111)[01-1], one string per system |
| [CS](slipSystem.CS_py.html) | the crystal frame of the systems, None once they are in specimen coordinates |
| [deformationTensor](slipSystem.deformationTensor_py.html) | the dyad as a tensor in the frame of the systems, a single one for a single system |
| [eq](slipSystem.eq_py.html) | Return self==value |
| [fcc](slipSystem.fcc_py.html) | the slip system <01-1>{111} of a face-centred cubic crystal |
| [frame](slipSystem.frame_py.html) | the frame the slip directions and plane normals are written in |
| [hcp](slipSystem.hcp_py.html) | there is no hcp default: raises an error naming the hexagonal families to choose from (basal, prismaticA, pyramidalCA, twinT1, ...) with their CRSS |
| [horzcat](slipSystem.horzcat_py.html) | the list of several systems of one crystal, MATLAB's [sS1, sS2] |
| [isCrystal](slipSystem.isCrystal_py.html) | whether the systems are in crystal coordinates |
| [mPrime](slipSystem.mPrime_py.html) | the Luster-Morris parameter \|(n1  |
| [primitiveCubic](slipSystem.primitiveCubic_py.html) | the slip system <100>{010} of a primitive cubic crystal |
| [prismatic2A](slipSystem.prismatic2A_py.html) | the second prismatic a slip system <01-10>{2-1-10} of a hexagonal crystal |
| [prismaticA](slipSystem.prismaticA_py.html) | the prismatic a slip system <2-1-10>{01-10} of a hexagonal crystal |
| [pyramidal2CA](slipSystem.pyramidal2CA_py.html) | the second order pyramidal c+a slip system <2-1-13>{-2112} of a hexagonal crystal |
| [pyramidalA](slipSystem.pyramidalA_py.html) | the pyramidal a slip system <2-1-10>{01-11} of a hexagonal crystal |
| [pyramidalCA](slipSystem.pyramidalCA_py.html) | the pyramidal c+a slip system <2-1-13>{-1101} of a hexagonal crystal |
| [residualBurgersVector](slipSystem.residualBurgersVector_py.html) | the length of the difference of the Burgers vectors of paired systems, entry by entry |
| [rotate](slipSystem.rotate_py.html) | an orientation or a rotation carries the systems into specimen coordinates, broadcast as NumPy does: a column of orientations times a row of systems is MATLAB's outer ori * sS |
| [SchmidFactor](slipSystem.SchmidFactor_py.html) | the Schmid factor of the slip systems |
| [SchmidTensor](slipSystem.SchmidTensor_py.html) | the Schmid tensor b n^T of the normalised vectors as a velocity gradient tensor, one per system |
| [shape](slipSystem.shape_py.html) | a list, or an array once a column of orientations has rotated a row of systems |
| [size](slipSystem.size_py.html) | the number of slip systems |
| [slipSystem](slipSystem.slipSystem_py.html) | slip systems: slip directions b with plane normals n orthogonal to them and a critical resolved shear stress each, in crystal coordinates while Miller indexed, in specimen coordinates once an orientation has rotated them |
| [subsref](slipSystem.subsref_py.html) |  |
| [symmetrise](slipSystem.symmetrise_py.html) | the systems of every family: the pairs of the orbits that stay orthogonal, both signs of the Burgers vector unless antipodal |
| [trace](slipSystem.trace_py.html) | the trace of the slip plane in the surface normal to a direction, the xy plane by default |
| [twinC1](slipSystem.twinC1_py.html) | the compressive twin C1 <-110-2>{-1101} of a hexagonal crystal |
| [twinC2](slipSystem.twinC2_py.html) | the compressive twin C2 <2-1-1-3>{2-1-12} of a hexagonal crystal |
| [twinT1](slipSystem.twinT1_py.html) | the tensile twin T1 <1-101>{-1102} of a hexagonal crystal |
| [twinT2](slipSystem.twinT2_py.html) | the tensile twin T2 <2-1-16>{-2111} of a hexagonal crystal |
| [uminus](slipSystem.uminus_py.html) |  |
| [vertcat](slipSystem.vertcat_py.html) | the list of several systems of one crystal, MATLAB's [sS1, sS2] |

## Used on

[SingleSlipModel](SingleSlipModel_py.html), [SlipSystems](SlipSystems_py.html)

MATLAB's [slipSystem_index](slipSystem_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L69">source</a></font>
{% endraw %}
