---
title: 'Sachs Model'
sidebar: documentation_sidebar
permalink: SachsModel_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: SachsModel.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/SachsModel.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Plasticity/SachsModel.py">edit page</a></font>

<!--introduction-->

A polycrystal starts to yield when its grains start to slip. Predicting the required
stress needs an assumption about how neighbouring grains constrain one another.

The *Taylor model* assumes that every grain undergoes the specimen strain. Enforcing
that strain requires five independent slip systems per grain and gives an upper bound
on strength. The calculation is introduced on the [Taylor Model](TaylorModel_py.html) page.

The *Sachs model* makes the opposite assumption: every grain feels the same stress.
Each grain slips on its best-oriented system without accommodating what its neighbours
need. The grains therefore deform independently, the model specimen does not remain
compatible, and the predicted strength is a lower bound.

MTEX has no `calcSachs` command because the construction needs only the
[Schmid factor](SchmidFactor_py.html). This page turns those single-crystal factors into a
polycrystal bound and identifies the selected system.

```python
import matplotlib.pyplot as plt
import numpy as np
```

```python
from mtex import *
```

## Resolve the stress in every grain

Use the twelve geometric fcc slip systems and a uniaxial tension along specimen $$z$$.
The `antipodal=True` option identifies the two shear senses of one system; the absolute
Schmid factor below makes their activation equivalent.

```python
cs = crystalFrame('m-3m')
sS = symmetrise(slipSystem.fcc(cs), antipodal=True)
print(sS)

sigma = stressTensor.uniaxial(vector3d.Z)
sigma
```

```text
slipSystem (m3̅m)
  size: 12
   u   v   w  | h   k  l  CRSS
   0   1  -1    1   1  1     1
   0   1  -1   -1   1  1     1
   1   0  -1    1   1  1     1
   1   0  -1    1  -1  1     1
  -1   0  -1   -1   1  1     1
  -1   0  -1   -1  -1  1     1
   1  -1   0    1   1  1     1
   1  -1   0   -1  -1  1     1
   1   1   0   -1   1  1     1
   1   1   0    1  -1  1     1
   0  -1  -1   -1  -1  1     1
   0  -1  -1    1  -1  1     1
stressTensor (y↓→x)
  rank: 2 (3 × 3)
  0  0  0
  0  0  0
  0  0  1
```

Draw 10,000 orientations from a random texture.

```python
ori = orientation.rand(10000, cs)
```

The stress is expressed in the specimen frame, whereas `sS` is expressed in the crystal
frame. Applying the inverse orientation maps the same stress into each crystal frame
before the Schmid factors are evaluated.

```python
SF = sS.SchmidFactor(inv(ori) * sigma)
SF.shape
```

```text
(10000, 12)
```

The result has one row per grain orientation and one column per geometric slip system.
The Sachs assumption retains only the largest absolute factor in each row.

```python
SFmax, active = np.max(np.abs(SF), axis=1), np.argmax(np.abs(SF), axis=1)
```

## See how one system is selected

The bars are the twelve candidate factors for the first grain. The red marker is the
maximum and therefore the system selected by the model.

```python
plt.bar(np.arange(1, 13), np.abs(SF[0]))
plt.plot(active[0] + 1, SFmax[0], 'or', markerfacecolor='r')
plt.xlabel('slip-system index')
plt.ylabel('absolute Schmid factor')
```

<center class="mtex-figure"><img class="inline" src="figures/python/SachsModel-7.png"></center>

The plot makes the single-slip assumption visible: all smaller bars are discarded even
though several systems may be similarly oriented. The selected index can be used to
recover the actual crystallographic system.

```python
sS[active[0]]
```

```text
slipSystem (m3̅m)
  u  v   w  | h  k  l  CRSS
  0  1  -1   -1  1  1     1
```

## Compute the Sachs factor

Let every system have the same critical resolved shear stress (CRSS) $$\tau_c$$. Grain
$$i$$ begins to slip when its applied stress reaches $$\tau_c/m_i$$, where $$m_i$$ is its
maximum Schmid factor. Averaging the normalized stresses gives the Sachs factor $$M_S$$:

$$M_S = \frac{1}{N}\sum_{i=1}^{N}\frac{1}{m_i}.$$

```python
MSachs = np.mean(1 / SFmax)
MSachs
```

```text
2.2325
```

The result is 2.24 for this random fcc texture, matching the classical random-texture
value. Thus the Sachs model predicts a macroscopic stress of $$2.24\tau_c$$.

## Compare the lower and upper bounds

For comparison, evaluate the Taylor factor for 2,000 random orientations. The strain is
volume preserving and represents uniaxial extension along specimen $$x$$. Taylor
decomposition needs both signed shear senses.

```python
eps = strainTensor(np.diag([1, -0.5, -0.5]))
oriTaylor = orientation.rand(2000, cs)
sSTaylor = symmetrise(slipSystem.fcc(cs))
MTaylor = calcTaylor(inv(oriTaylor) * eps, sSTaylor).M
np.mean(MTaylor)
```

```text
3.0722
```

The mean Taylor factor is 3.07, again the classical value. The two models bracket the
truth: a real random fcc polycrystal yields between 2.24 and 3.07 times the common
CRSS. Its position between the bounds depends on how strongly the grains constrain one
another.

## Inspect the distribution behind the mean

The average hides the orientation dependence. Every grain has its own best Schmid
factor between zero and the theoretical maximum of 0.5.

```python
plt.figure()
plt.hist(SFmax, 20, edgecolor='k')
plt.xlabel('maximum absolute Schmid factor')
plt.ylabel('number of orientations')

np.min(SFmax)
```

```text
0.2741
```

<center class="mtex-figure"><img class="inline" src="figures/python/SachsModel-11.png"></center>

The distribution is strongly skewed towards 0.5. The smallest value in these 10,000
orientations rounds to 0.28. With twelve systems available, all of them are badly
aligned only for a very particular orientation.

The vector `active` records which system was chosen in every grain. A Sachs calculation
therefore predicts which slip trace should appear in the microscope. That prediction
can be checked directly, unlike the idealized yield-stress bound itself.

## References

* U. F. Kocks, C. N. Tomé and H.-R. Wenk,
  [Texture and Anisotropy](https://books.google.com/books?id=vkyU9KZBTioC), Cambridge
  University Press, 1998, derives the Sachs and Taylor bounds and gives their classical
  random-texture values.
* H. J. Bunge,
  [Some Applications of the Taylor Theory of Polycrystal Plasticity](https://doi.org/10.1002/crat.19700050112),
  *Kristall und Technik* 5 (1970), 145-175, gives the corresponding
  orientation-dependent Taylor factors.

## Next

The Sachs bound selects one system independently in each grain. Continue with
[Single Slip Model](SingleSlipModel_py.html) to follow the texture that develops when one
prescribed system supplies the crystallographic spin.
{% endraw %}
