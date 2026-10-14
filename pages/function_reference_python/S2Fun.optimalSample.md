---
title: 'S2Fun.optimalSample'
sidebar: function_reference_sidebar
permalink: S2Fun.optimalSample_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun.optimalSample.html
status: Reference
---
{% raw %}
the sample of n nodes that reproduces a density best up to the bandwidth: the nodes,
and with optimizeWeights=True the nodes and their weights (volume fractions summing to
one); n may be the starting nodes instead; diagnostics=True returns the result with
the discrepancy, its history, the iteration count and the stop reason

## Syntax

```python
optimalSample(f, n, *args, optimizeWeights=False, bandwidth=None, maxIter=None, tol=None, weights=None, memory=5, method='lbfgs', warmUp=None, tolWeights=None, tolJ=0.0001, innerIter=5, minWeight=0.0, diagnostics=False)
```

```python
ori = optimalSample(odf, 500)
ori, c = optimalSample(odf, 200, optimizeWeights=True, bandwidth=64)
v = optimalSample(sF, 1000, bandwidth=128)
optimalSample(f, nodes, method='steepestDescent', maxIter=1000, tol=0.05*degree, minWeight=1e-4)
```

## Used on

[RandomSampling](RandomSampling_py.html), [S2FunSampling](S2FunSampling_py.html)

MATLAB's [S2Fun.optimalSample](S2Fun.optimalSample.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/optimalsample.py#L378">source</a></font>
{% endraw %}
