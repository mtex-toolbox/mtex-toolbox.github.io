#!/usr/bin/env python3
"""Prepare the correction-free magnesium map for the homepage.

Run with a Python environment containing mtex and h5py:
    python tools/prepare-hero-data.py ../master/data/EBSD/twins.ctf

This is a fixture conversion for the existing twins sample, not a general
HDF5 exporter. It writes the Oxford HDF5 layout understood by both ports,
with the sample alignment already applied and the scan rotation declared
as zero. The source digest and conversion are recorded in file attributes.
"""
from pathlib import Path
import h5py,numpy as np,hashlib
from mtex import EBSD,rotation,xvector,degree
import argparse
parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('source',type=Path,help='MTEX twins.ctf sample')
parser.add_argument('--output',type=Path,default=Path(__file__).resolve().parents[1]/'data/twins.h5')
args=parser.parse_args()
source=args.source
out=args.output
out.parent.mkdir(parents=True,exist_ok=True)
ebsd=EBSD.load(source,eulerCorrection=rotation.byAxisAngle(xvector,180*degree))
# Oxford HDF5 stores angles already in the declared map frame.
angles=np.column_stack([np.asarray(a).ravel() for a in ebsd.rotations.Euler()])
xy=np.column_stack([np.asarray(ebsd.pos.x).ravel(),np.asarray(ebsd.pos.y).ravel()])
order=np.lexsort((np.round(xy[:,0],6),np.round(xy[:,1],6)));angles=angles[order]
with h5py.File(out,'w') as f:
 f['Manufacturer']=np.bytes_('Oxford Instruments')
 f.attrs['source']='MTEX magnesium twins.ctf example, converted for the homepage'
 f.attrs['source_sha256']=hashlib.sha256(source.read_bytes()).hexdigest()
 f.attrs['orientation_frame']='The original 180 degree rotation about x is applied to the stored Euler angles; scan rotation is zero.'
 h=f.create_group('Scan/EBSD/Header');h['X Cells']=len(np.unique(xy[:,0]));h['Y Cells']=len(np.unique(xy[:,1]));h['X Step']=0.3;h['Y Step']=0.3;h['Scanning Rotation Angle']=0.
 cs=h.create_group('Phases/1');cs['Space Group']=194;cs['Phase Name']=np.bytes_('Magnesium');cs['Lattice Dimensions']=[3.2089,3.2089,5.2101];cs['Lattice Angles']=np.deg2rad([90.,90.,120.])
 d=f.create_group('Scan/EBSD/Data');d.create_dataset('Euler',data=angles,compression='gzip');d.create_dataset('Phase',data=np.asarray(ebsd.phase).ravel()[order].astype(np.uint8),compression='gzip')
 for key,value in ebsd.prop.items():
  data=np.asarray(value)
  if data.size==len(ebsd) and key not in ['grainId','oldId']:d.create_dataset(key,data=data.ravel()[order],compression='gzip')
loaded=EBSD.load(out)
# Compare in spatial order: each loader can choose its own grid layout.
def sorted_data(e):
 xy=np.column_stack([np.asarray(e.pos.x).ravel(),np.asarray(e.pos.y).ravel()]);ind=np.lexsort((np.round(xy[:,0],6),np.round(xy[:,1],6)));return xy[ind],np.asarray(e.phase).ravel()[ind],e.rotations.matrix().reshape(-1,3,3)[ind]
for a,b in zip(sorted_data(ebsd),sorted_data(loaded)):assert np.allclose(a,b,atol=1e-10,equal_nan=True)
assert loaded.EulerCorrection.angle()<1e-10
print('PYTHON H5 ROUND TRIP VERIFIED',len(loaded),'pixels;',out.stat().st_size,'bytes')
