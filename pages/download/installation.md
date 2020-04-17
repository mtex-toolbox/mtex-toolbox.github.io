---
title: Installation Issues
keywords: installation
last_updated: January 8, 2018
hide_sidebar: true
permalink: installation.html
folder: download
toc: false
---

## MAC installation issues ##

Since binaries are sometimes not compatible across different versions of
macOS and due to increasing security measures of Apple, some extra work might be
required to get MTEX running on macOS.

### library load disallowed by system policy ###

If you experience the following error message

```
Invalid MEX-file 'some path to
mtex/mtex-5.3/extern/nfft/nfsoftmex.mexmaci64': dlopen(some path to
mtex//mtex-5.3/extern/nfft/nfsoftmex.mexmaci64, 6): no suitable image
found.  Did find:
some path to mtex/mtex-5.3/extern/nfft/nfsoftmex.mexmaci64: code
signature in (some path to
mtex/mtex-5.3/extern/nfft/nfsoftmex.mexmaci64) not valid for use in
process using Library Validation: library load disallowed by system policy
```

you can either download MTEX with a command line tool such as
[```curl```](https://www.youtube.com/watch?v=6pyVl3GdSuU) or ```wget```
```
curl --output mtex.zip https://github.com/mtex-toolbox/mtex/releases/download/mtex-5.3/mtex-5.3.zip
```
or, if you have downloaded MTEX with a browser, type in Matlab

``` matlab
!sudo xattr -r -d com.apple.quarantine /path/to/mtexfolder
```

### Unable to compile mex files during startup_mtex ###

If you (still) get the following error, you will need to recompile the mex files
on your own. MTEX tries to perform the compilation automatically. However, in
some case you might experience error messages like

```
Error: unable to compile mex files during startup_mtex e.g.:

Checking mex files failed!
 > Trying now to recompile mex files.
 > In mex_install (line 15)
   In check_installation>check_mex (line 69)
   In check_installation (line 33)
   In startup_mtex (line 66)
   In startup (line 7)
... compiling S1Grid_find.c
Building with 'Xcode with Clang'.
Compiling some path to mtex/mtex-5.3/mex/S1Grid_find.c failed!
```
or
```
 >   MTEX: Couldn't get the mex files working!
 >   The original error message was:
 >   Invalid MEX-file
 > 'some path to mtex/mtex-5.3/mex/SO3Grid_dist_region.mexmaci64':
 > dlopen(some path to mtex/mtex-5.3/mex/SO3Grid_dist_region.mexmaci64,
 > 6): Library not loaded: @loader_path/libmex.dylib
 >   Referenced from:
 > some path to mtex/mtex-5.3/mex/SO3Grid_dist_region.mexmaci64
 >   Reason: image not found
 >   Contact author for help!
```

1. Make sure that after upgrading your system, to also upgrade ```xcode```
 (via appstore) and install the command line tools and accept the licence by
``` bash
sudo xcodebuild -license accept
xcode-select --install
```
2. You might need to modify the compiler options used by Matlab. Therefore you need to figure out the
 options path (example output) from within Matlab (you can also add -v to
 the mex compile options and look for the line starting with Options file: /):
``` matlab
m  = mex.getCompilerConfigurations
m.MexOpt
ans =
      /Users/rk/Library/Application
Support/MathWorks/MATLAB/R2019b/mex_C_maci64.xml
```

it might also be elsewhere, e.g. in
```/Applications/MATLAB_R2019a.app/bin/maci64/mexopts/clang_maci64.xml```.
Within the file ```mex_C_maci64.xml``` change the line

```
<SDKVER>
   <cmdReturns name="xcrun -sdk macosx --show-sdk-version"/>
</SDKVER>
```
to
```
<SDKVER>
   <cmdReturns name="xcrun -sdk macosx --show-sdk-version  | cut -c1-5"/>
</SDKVER>
```
and do a

``` matlab
mex -setup C
```

from within Matlab. Now startup_mtex.m will hopefully run without any trouble.

## Compiling the nfft ##
