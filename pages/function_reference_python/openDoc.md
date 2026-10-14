---
title: 'openDoc'
sidebar: function_reference_sidebar
permalink: openDoc_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a documentation page as a script to run section by section, or the reference page of a
function in the browser

## Syntax

```python
openDoc(name=None, folder=None, overwrite=False, edit=True, notebook=False)
```

openDoc() lists the pages, openDoc('EBSDAnalysis') the pages of a chapter. openDoc('EBSDTutorial')
writes the page as EBSDTutorial.py, a "# %%" line before every section, into the current folder
(or folder=) and opens it in VS Code, unless edit=False; an existing file is kept unless
overwrite=True. With notebook=True the page is written as the Jupyter notebook EBSDTutorial.ipynb
instead. Returns the path of the file. A function, class or method, by its name or itself,
opens its page of the function reference on the MTEX website, unless edit=False, and returns
the address.


```python
openDoc('EBSDTutorial')
openDoc('fibre.angle')
openDoc(calcGrains)
openDoc(ori.mean)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/opendoc.py#L160">source</a></font>
{% endraw %}
