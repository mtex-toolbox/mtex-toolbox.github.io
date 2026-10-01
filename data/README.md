The homepage examples use `twins.h5`, a conversion of MTEX's magnesium
`twins.ctf` sample to the Oxford HDF5 layout. Download it and put it in the
working directory before running `ebsd = EBSD.load('twins.h5')`.

The file preserves the original map, phase, crystal lattice and measured
properties. Its stored orientations already include the sample's 180°
rotation about x. Its scanning rotation is declared as zero, so no Euler
correction needs to be supplied on import. The source SHA-256 and conversion
notes are recorded in the HDF5 attributes.

Recreate and check the file with a Python environment containing mtex and h5py:

    python tools/prepare-hero-data.py ../mtex-next/data/EBSD/twins.ctf
