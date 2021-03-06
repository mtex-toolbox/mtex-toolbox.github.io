---
title: Documentation
keywords: documentation
last_updated: November, 2019
sidebar: documentation_sidebar
permalink: documentation.html
folder: documentation
toc: false
---

Use the left sidebar to navigate through the different topics. Note that all
documentation pages are essentially MTEX scripts. This means you can open them
in Matlab by typing

{% highlight matlab %}
edit fileName
{% endhighlight %}

This allows you to execute the sections by step by step and investiage the
effect of each single MTEX command. It also should motivate you to play around
with different parameters, different input files or further analysis
steps. Eventually, these documentation scripts may serve as a good starting
point for your own analysis scripts.

### Contributing to the Documentation

Documenting a project like MTEX is a challenging and ongoing task. Therefore
we are extremely happy about any spelling fixes, examples, theoretical
explainations, special use cases, etc. As a bonus everybody who contributed to
MTEX will automatically appear at the [contributors page](https://github.com/mtex-toolbox/mtex/graphs/contributors).

The easiest way to suggest changes to the MTEX documentation is online via
Github. This is done as follows:

 1. sign into [GitHub](https://github.com)
 2. open the help page you want to change, e.g., this one
 3. click [edit page](https://github.com/mtex-toolbox/mtex-toolbox.github.io/blob/master/pages/documentation/documentation.md)
   which leads you to the file on [GitHub](https://github.com)
 4. click the little pencil in the top right corner which allows you to
 edit the script online
 5. enter of copy and paste your changes into the site
 6. click at the bottom [suggest changes]()
 7. click create [pull request]()

Alternatively, you can send us you changes simply by [email](mailto: ralf.hielscher@mathematik.tu-chemnitz.de).

### The Publish Command

You may get a visual preview of your altered documentation page by using the
matlab function
[publish](https://de.mathworks.com/help/matlab/matlab_prog/publishing-matlab-code.html)

{% highlight matlab %}
publish filename
{% endhighlight %}

which creates an folder, named `html`, in your current directory where you can
find the generated html page.
