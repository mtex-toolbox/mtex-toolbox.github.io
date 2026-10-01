---
title: Installation problems
eyebrow: Get started
lead: What to do when MTEX does not start, when its binaries are missing or fail, and how to turn a script into a standalone application.
keywords: installation issues, startup_mtex, mex, check_mex, mex_install, compiler, macOS, nfft, mcc, matlab compiler, standalone, deployment
layout: prose
permalink: installation
---

This page is about MTEX for MATLAB. For MTEX for Python, see *When something
goes wrong* in [Installing MTEX for Python](Installation_py.html).

## MTEX does not start

* **The MATLAB release.** MTEX needs MATLAB R2022b or newer. Most of MTEX
  runs in releases back to 2016b, but the import wizard needs R2022b and
  reading HDF5 files R2019b. `startup_mtex` warns when the release is too old.
* **The folder.** Run `startup_mtex` from the MTEX folder itself, the one
  that contains `startup_mtex.m`, not from a folder above it.
* **Another MTEX.** `startup_mtex` removes an MTEX started earlier in the same
  session from the path. An older MTEX saved on the MATLAB path permanently
  is not removed: open *Home > Set Path*, remove its folders, and run
  `startup_mtex` again.

## Missing or failing binaries

MTEX speeds up its time-critical computations with compiled binaries, called
mex files, in the folder `mtex/mex`. The download of MTEX contains no
binaries. On its first start `startup_mtex` downloads the ones for your
system from GitHub, file by file, and checks them. The example data sets are
downloaded the same way the first time `mtexdata` asks for one. So the first
start needs an internet connection.

To check the binaries at any later time, type

``` matlab
check_mex
```

It lists every binary with *ok*, *failed* or *missing*, downloads the missing
ones once more and says what to do next.

### A binary is missing

The download was blocked, most often by a firewall or a virus scanner. Two
ways round it:

1. Download the files by hand from the assets of the
   [release page](https://github.com/mtex-toolbox/mtex/releases/latest) and
   copy them into `mtex/mex`. You need the files ending in `.mexw64` on
   Windows, `.mexa64` on Linux, `.mexmaca64` on a Mac with Apple silicon and
   `.mexmaci64` on a Mac with an Intel processor. `mexext` in MATLAB tells
   you which.
2. Compile them yourself, see below.

### A binary fails

A binary that is present but does not load was built for a different system
than yours, or is blocked by the operating system. Compile the binaries
yourself with

``` matlab
mex_install('force')
```

This needs a C compiler that MATLAB knows about:

* **Windows:** the add-on *MATLAB Support for MinGW-w64 C/C++ Compiler*, from
  *Home > Add-Ons > Get Add-Ons*.
* **macOS:** the Xcode command line tools. In a terminal type
  `xcode-select --install`, and after a system update also
  `sudo xcodebuild -license accept`.
* **Linux:** gcc, from the package manager of your distribution.

`mex -setup C` in MATLAB shows which compiler MATLAB uses. `mex_install`
compiles every binary MTEX builds itself and reports the ones that failed at
the end. Run `check_mex` afterwards to confirm.

### macOS: "cannot be opened because the developer cannot be verified"

macOS blocks native code that a browser downloaded, such as binaries fetched
by hand from the release page. Lift the block for the MTEX folder by typing in
MATLAB

``` matlab
!xattr -r -d com.apple.quarantine /path/to/mtex
```

with the path of your MTEX folder, and start MTEX again.

## The NFFT binaries

The fast Fourier transforms on the sphere and the rotation group come from
the [NFFT](https://www-user.tu-chemnitz.de/~potts/nfft/) library: the files
`nfftmex`, `nfsftmex`, `nfsoftmex` and `fptmex` in `mtex/mex`. They are
downloaded with the other binaries, but `mex_install` cannot build them. If
they fail on your system, compile the NFFT yourself, following the
[NFFT installation guide](https://www-user.tu-chemnitz.de/~potts/nfft/installation.php):

``` bash
./bootstrap.sh
./configure --with-matlab=/path/to/MATLAB --enable-nfsft --enable-nfsoft \
  --enable-openmp --enable-portable-binary
make
```

This needs the [FFTW](https://www.fftw.org/) library and, for `--enable-openmp`,
a compiler with OpenMP support; on macOS install both with
[Homebrew](https://brew.sh/), `brew install fftw gcc libtool`. Then copy the
four files

```
matlab/nfft/nfftmex.mex*
matlab/nfsft/nfsftmex.mex*
matlab/nfsoft/nfsoftmex.mex*
matlab/fpt/fptmex.mex*
```

from the NFFT folder into `mtex/mex`.

## Compiling a script into a standalone application

Everything above is about the **mex binaries** MTEX calls from inside MATLAB.
A different kind of compiling is turning your own script into an executable
that runs *without* a MATLAB licence, with the
[MATLAB Compiler](https://www.mathworks.com/products/compiler.html) (`mcc`).
That is what the `compile-mtex` script in the root of the MTEX folder does:

``` bash
MTEX_DIR=/path/to/mtex /path/to/mtex/compile-mtex my-script.m -o my-app
```

It puts every MTEX directory on the compiler's include path and bundles the
files MTEX reads at run time. Two things are worth knowing:

* **The dependency checker cannot see everything.** `data/`,
  `plotting/plotting_tools/colors.mat` and `ciexyz31_1.csv` are located
  through `mtex_path` at run time, not by a literal `load` the checker can
  follow, so they have to be passed to `mcc` explicitly with `-a`.
  `compile-mtex` does this for you; if you drive `mcc` yourself, or use the
  Compiler app, add them by hand.
* **The MTEX folder is bigger than your application needs.** `tests/`,
  `userScripts/`, `templates/` and `doc/makeDoc/` are not part of a deployed
  application, and some of them have been reported to make the dependency
  checker itself fall over. `compile-mtex` leaves them out.

If you prefer the graphical Compiler app, add the same three payload files
under *Files required for your application to run*.

Thanks to [gcapes](https://github.com/gcapes) and
[vtvivian](https://github.com/vtvivian), who worked this out in
[issue #2369](https://github.com/mtex-toolbox/mtex/issues/2369).
