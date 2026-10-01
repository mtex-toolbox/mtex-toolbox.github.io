# Python examples for the homepage hero, paired with matlab/heroFigures.m.
# Each cell continues the previous analysis. Lines ending in '# hide' are
# setup for running the file and are omitted from the displayed code.
import os  # hide
from pathlib import Path  # hide
import numpy as np  # hide
os.chdir(Path(__file__).resolve().parents[1] / 'data')  # hide
from mtex import *  # hide
plottingConvention.default('y↑→x')  # hide

# %% Import
# load a magnesium EBSD map
ebsd = EBSD.load('twins.h5')

plot(ebsd['Magnesium'],ipfDirection=zvector)

# %% Grains
# reconstruct grains and smooth boundaries
grains = calcGrains(ebsd,angle=5*degree)
grains = smoothBoundary(grains,5)
plot(grains,ipfDirection=zvector)

# %% Clean
# denoise the orientations
ebsdS = smooth(ebsd,l1TVFilter())

# compare kernel average misorientation
plot(ebsd,ebsd.KAM()/degree)
setColorRange([0,2])  # hide
plot(ebsdS,ebsdS.KAM()/degree)
setColorRange([0,2])  # hide

# %% Twins
# magnesium {10-12} extension twin
twin = orientation.byAxisAngle(
  Miller(1,0,-1,2,grains.CS),180*degree)
gB = grains.boundary['Magnesium','Magnesium']
twinB = gB[gB.isTwinning(twin,5*degree)]
plot(grains,ipfDirection=zvector); hold(True)  # hide
plot(twinB,lineColor='w',lineWidth=3)
hold(False)  # hide

# merge grains across twin boundaries
parents = merge(grains,twinB)
plot(grains,ipfDirection=zvector); hold(True)  # hide
plot(parents.boundary,lineWidth=3)
hold(False)  # hide

# %% Texture
# estimate the orientation distribution
odf = calcDensity(ebsd['Magnesium'].orientations,
  halfwidth=10*degree)

# show a pole figure and ODF sections
plotPF(odf,Miller(0,0,0,1,odf.CS))
plotSection(odf,'sigma',sections=9)

# %% Parent grains
# reconstruct beta grains from alpha titanium
ebsd = mtexdata('alphaBetaTitanium')
job = parentGrainReconstructor(ebsd)
job.p2c = orientation.Burgers(job.csParent,job.csChild)

# group variants and assign parent orientations
job.calcVariantGraph(threshold=1.5*degree)
job.clusterVariantGraph(numIter=3)
job.calcParentFromVote()
plot(job.parentGrains,ipfDirection=zvector)

# %% Properties
ebsd = EBSD.load('twins.h5')  # hide
# single-crystal stiffness of magnesium (GPa)
Cij = [[59.7,26.2,21.7,0,0,0], [26.2,59.7,21.7,0,0,0],
       [21.7,21.7,61.7,0,0,0], [0,0,0,16.4,0,0],
       [0,0,0,0,16.4,0], [0,0,0,0,0,16.75]]
C = stiffnessTensor(Cij,ebsd['Magnesium'].CS)

# average over the measured texture (Hill)
CHill = calcTensor(ebsd['Magnesium'],C,'Hill')
plot(C.YoungsModulus(),complete=True,upper=True)
plot(CHill.YoungsModulus(),complete=True,upper=True)

# %% 3D EBSD
# a 3D EBSD volume and its grains
ebsd = EBSD3.load(mtexdatafile('SmallIN100'))
grains = calcGrains(ebsd,angle=5*degree)
plot(grains,grains.meanOrientation,edgeAlpha=0.1)

id = grains.volume.argmax()
plot(grains[id],grains[id].meanOrientation,edgeAlpha=0.2)
