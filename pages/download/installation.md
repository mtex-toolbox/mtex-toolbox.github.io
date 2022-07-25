---
title: Installation Issues for Mac OSX
keywords: installation
last_updated: January 8, 2018
hide_sidebar: true
permalink: installation.html
folder: download
toc: false
---

Since binaries are sometimes not compatible across different versions of
macOS and due to increasing security measures of Apple, some extra work might be
required to get MTEX running on macOS.

## library load disallowed by system policy ##

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
``` bash
curl -LJO --output mtex.zip https://github.com/mtex-toolbox/mtex/releases/download/mtex-5.3/mtex-5.3.zip
```
or, if you have downloaded MTEX with a browser, type in Matlab

``` matlab
!sudo xattr -r -d com.apple.quarantine /path/to/mtexfolder
```

## Unable to compile mex files during startup_mtex ##

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
2. You might need to modify the compiler options used by Matlab. The configuration file can be found by the command
``` matlab
m  = mex.getCompilerConfigurations
m.MexOpt
ans =
      /Users/rk/Library/Application/MathWorks/MATLAB/R2019b/mex_C_maci64.xml
```
The exact file name depends on the compiler installed on your system, e.g. ```/Applications/MATLAB_R2019a.app/bin/maci64/mexopts/clang_maci64.xml```.
Within the configuration file change the lines

```xml
   <SDKVER>
      <cmdReturns name="xcrun -sdk macosx --show-sdk-version"/>
   </SDKVER>
```

to

```xml
   <SDKVER>
      <cmdReturns name="xcrun -sdk macosx --show-sdk-version  | cut -c1-5"/>
   </SDKVER>
```

and do from within Matlab
``` matlab
mex -setup C
```
Now ```startup_mtex.m``` will hopefully run without any trouble.

## Compiling the nfft ##

### 1. Install gcc with openmp and libtools ###

Using [homebrew](https://brew.sh/) is probably the easiest
``` bash
brew install gcc libtool
```

### 2. Get nfft source from github ###

``` bash
git clone https://github.com/NFFT/nfft/
cd  nfft
./bootstrap.sh
```

### 3. Set the compilation parameters ###

The path to gcc and matlab depends on your system and should be set accordingly.
If you uesd homebrew to install gcc, it should have ended up in some place called
`Cellar` typically found in `/usr/local/`. Check the right version and replace them
accordingly in the lines below. The same of coure applies to the Mathlab path and
version. If you are one an architecture other than x86_64, also set this one correctly
(e.g. or leave the option out completely and hope that automatic recognition will work).
For the ARMv8 from Apple this is currectly untested.

``` bash
CC=/usr/local/Cellar/gcc/8.2.0/bin/gcc-8
LDFLAGS=-Wl,-L/usr/local/Cellar/gcc/8.2.0/lib/gcc/8
./configure --with-matlab=/Applications/MATLAB_R2018b.app --enable-nfsoft\
  --enable-nfsft --enable-openmp --enable-portable-binary\
  --with-apple-gcc-arch=x86_64 -
```
or if for some reason you can not use openMP
``` bash
CC=/usr/local/Cellar/gcc/8.2.0/bin/gcc-8
LDFLAGS=-Wl,-L/usr/local/Cellar/gcc/8.2.0/lib/gcc/8
./configure --with-matlab=/Applications/MATLAB_R2018b.app --enable-nfsoft\
  --enable-nfsft --enable-portable-binary --with-apple-gcc-arch=x86_64
```

### 4. Compile the nfft ###

``` bash
make
```

### 5. Link the nfft ###

The easists way is to make out of the following lines an executable shell script.
Please do not forget to include the definitions of gcc and Matlab pathes from above.
Most likely you changed the exact version and path, so do this here accordingly.

``` bash
#!/bin/bash
CC=/usr/local/Cellar/gcc/8.2.0/bin/gcc-8
MATLABDIR=/Applications/MATLAB_R2018b.app

for LIB in nfft nfsft nfsoft nnfft fastsum nfct nfst; do
  cd matlab/"$LIB"
  "$CC" -o .libs/lib"$LIB".mexmaci64 -bundle .libs/lib"$LIB"_la-"$LIB"mex.o \
    -Wl,-force_load,../../.libs/libnfft3_matlab.a \
    -Wl,-force_load,../../matlab/.libs/libmatlab.a \
    -L"$MATLABDIR"/bin/maci64 -lm -lmwfftw3 -lmx -lmex \
    -lmat -fopenmp -O3 -malign-double -march=core2 \
    -arch x86_64 -fopenmp -static-libgcc
  cp .libs/lib"$LIB".mexmaci64 "$LIB"mex.mexmaci64
  cd ../..
done
```

the vesion without ```openMP```

``` bash
#!/bin/bash
CC=/usr/local/Cellar/gcc/8.2.0/bin/gcc-8
MATLABDIR=/Applications/MATLAB_R2018b.app

for LIB in nfft nfsft nfsoft nnfft fastsum nfct nfst; do
  cd matlab/"$LIB"
  "$CC" -o .libs/lib"$LIB".mexmaci64 -bundle .libs/lib"$LIB"_la-"$LIB"mex.o \
    -Wl,-force_load,../../.libs/libnfft3_matlab.a \
    -Wl,-force_load,../../matlab/.libs/libmatlab.a \
    -L"$MATLABDIR"/bin/maci64 -lm -lmwfftw3 -lmx -lmex \
    -lmat -O3 -malign-double -march=core2 \
    -arch x86_64 -static-libgcc
  cp .libs/lib"$LIB".mexmaci64 "$LIB"mex.mexmaci64
  cd ../..
done
```


### 6. Copy the generated mex-files into the MTEX installation ###

``` bash
make install
```
for mtex, copy the two files
```
matlab/nfsft/.libs/libnfsft.mexmaci64
matlab/nfsoft/.libs/libnfsoft.mexmaci64
```
into your mtex installation into
```
mtex/extern/nfft_openMP/
```
or
```
mtex/extern/nfft/
```
