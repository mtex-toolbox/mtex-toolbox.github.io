---
title: 'trueEbsd.calcDistortion'
sidebar: function_reference_sidebar
permalink: trueEbsd.calcDistortion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: trueEbsd.calcDistortion.html
status: Reference
---
{% raw %}
A method of [trueEbsd](trueEbsd_index_py.html).

job.calcDistortion('fitErr'), job.calcDistortion(fitErr=True, verbose=False, retryMax=3)

## Syntax

```python
trueEbsd.calcDistortion(self, *flags, fitErr=False, verbose=True, retryMax=100)
```

Every hop measured and fitted: the images cut into tiles and correlated, the stages of the
hop's transform fitted one after another, each to what the one before left over, and job.T
replaced by the fitted transforms, still of their declared class. The pairs are visited
from the first map of high contrast forward to the reference, then backward from it to
map 0, and where one side of a pair has poor contrast the other's image is carried over to
it. fitErr measures what is left after each hop, which is the number that says whether the
registration worked, and a hop leaving over 2 pixels is redone with the tiles doubled,
retryMax attempts at most.

## Used on

[EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [trueEbsd.calcDistortion](trueEbsd.calcDistortion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/trueebsd.py#L215">source</a></font>
{% endraw %}
