---
search: exclude
---

to
```xml
  <SDKVER>
     <cmdReturns name="xcrun -sdk macosx --show-sdk-version  | cut -c1-5"/>
  </SDKVER>
```
and do a
``` matlab
mex -setup C
```
from within Matlab. Now ```startup_mtex.m```s will hopefully run without any trouble.

## Compiling the nfft ##

1. install gcc with openmp, libtools
```
brew install gcc libtool
```
2. get nfft source from github
```
git clone https://github.com/NFFT/nfft/tree/develop
./bootstrap.sh -configure
```
with, path to gcc might vary, not sure if -L is useful
```
CC=/usr/local/Cellar/gcc/8.2.0/bin/gcc-8
LDFLAGS=-Wl,-L/usr/local/Cellar/gcc/8.2.0/lib/gcc/8
./configure --with-matlab=/Applications/MATLAB_R2018b.app --enable-nfsoft
  --enable-nfsft --enable-openmp --enable-portable-binary
  --with-apple-gcc-arch=x86_64 - without openMOP
CC=/usr/local/Cellar/gcc/8.2.0/bin/gcc-8
LDFLAGS=-Wl,-L/usr/local/Cellar/gcc/8.2.0/lib/gcc/8
./configure
  --with-matlab=/Applications/MATLAB_R2018b.app --enable-nfsoft
  --enable-nfsft --enable-portable-binary --with-apple-gcc-arch=x86_64
make
```
3. use script postmake.sh |
|#!/bin/bash CC=/usr/local/Cellar/gcc/8.2.0/bin/gcc-8
MATLABDIR=/Applications/MATLAB_R2018b.app for LIB in nfft nfsft nfsoft
nnfft fastsum nfct nfst do cd matlab/"$LIB" "$CC" -o
.libs/lib"$LIB".mexmaci64 -bundle .libs/lib"$LIB"_la-"$LIB"mex.o
-Wl,-force_load,../../.libs/libnfft3_matlab.a
-Wl,-force_load,../../matlab/.libs/libmatlab.a -L"$MATLABDIR"/bin/maci64
-lm -lmwfftw3 -lmx -lmex -lmat -fopenmp -O3 -malign-double -march=core2
-arch x86_64 -fopenmp -static-libgcc cp .libs/lib"$LIB".mexmaci64
"$LIB"mex.mexmaci64 cd ../.. done -use a postmake.sh without openMP |
|#!/bin/bash CC=/usr/local/Cellar/gcc/8.2.0/bin/gcc-8
MATLABDIR=/Applications/MATLAB_R2018b.app for LIB in nfft nfsft nfsoft
nnfft fastsum nfct nfst do cd matlab/"$LIB" "$CC" -o
.libs/lib"$LIB".mexmaci64 -bundle .libs/lib"$LIB"_la-"$LIB"mex.o
-Wl,-force_load,../../.libs/libnfft3_matlab.a
-Wl,-force_load,../../matlab/.libs/libmatlab.a -L"$MATLABDIR"/bin/maci64
-lm -lmwfftw3 -lmx -lmex -lmat -O3 -malign-double -march=core2 -arch
x86_64 -static-libgcc cp .libs/lib"$LIB".mexmaci64 "$LIB"mex.mexmaci64
cd ../.. done make install % for mtex: cp
matlab/nfsft/.libs/libnfsft.mexmaci64
../../mtex/extern/nfft_openMP/nfsftmex.mexmaci64 cp
matlab/nfsoft/.libs/libnfsoft.mexmaci64
../../mtex/extern/nfft_openMP/nfsoftmex.mexmaci64 cp
matlab/nfsft/.libs/libnfsft.mexmaci64
../../mtex_work/extern/nfft/nfsftmex.mexmaci64 cp
matlab/nfsoft/.libs/libnfsoft.mexmaci64
../../mtex_work/extern/nfft/nfsoftmex.mexmaci64 |
