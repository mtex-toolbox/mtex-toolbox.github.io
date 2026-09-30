%% galleryFigures
% The gallery of the website: one cell per figure. The visible lines of a
% cell are the code the gallery shows for its figure; lines ending in
% "% hide" only prepare or export it. The lines
%   %#page    the documentation page the figure belongs to
%   %#title   its title in the gallery
%   %#labels  comma separated labels, the filters of the gallery
% describe it. tools/gallery-data.py turns this file into _data/gallery.yml,
% and heroExport.m writes the figures to ../figures/gallery/<cell>.png.
% The cells run in order: a cell may use the variables of the one before.

setMTEXpref('FontSize',15);                                             % hide
plottingConvention.default('y↑→x');                                     % hide
close all                                                               % hide

%% ipfmap
%#page EBSDIPFMap
%#title Orientation map with grain boundaries
%#labels EBSD, Grains
mtexdata twins
[grains,ebsd] = calcGrains(ebsd('indexed'),'angle',5*degree);
plot(ebsd,'ipfDirection',zvector)
hold on, plot(grains.boundary,'lineWidth',1.5), hold off
heroExport('ipfmap',[],'dir','gallery')                                 % hide

%% twins
%#page TwinningBoundaries
%#title Twin boundaries in magnesium
%#labels Grains, Boundaries
twin = orientation.map(Miller(0,1,-1,-2,grains.CS),Miller(0,-1,1,-2,grains.CS),...
  Miller(2,-1,-1,0,grains.CS),Miller(2,-1,-1,0,grains.CS));
gB = grains.boundary('Magnesium','Magnesium');
twinB = gB(gB.isTwinning(twin,5*degree));
plot(grains,'ipfDirection',zvector), hold on
plot(twinB,'lineColor','w','lineWidth',3), hold off
heroExport('twins',[],'dir','gallery')                                  % hide

%% misorientation
%#page BoundaryMisorientations
%#title Boundary misorientation angles
%#labels Boundaries
plot(gB,gB.misorientation.angle./degree,'lineWidth',2)
mtexColorbar('title','degree')
heroExport('misorientation',[],'dir','gallery')                         % hide

%% angledist
%#page AngleDistributionFunction
%#title Misorientation angle distribution
%#labels Boundaries, Texture
plotAngleDistribution(gB.misorientation)
heroExport('angledist',[],'dir','gallery')                              % hide

%% caxes
%#page VectorsDensityEstimation
%#title Density of c-axes
%#labels EBSD, Texture
c = ebsd('Magnesium').orientations * Miller(0,0,0,1,ebsd('Magnesium').CS);
plot(calcDensity(c,'halfwidth',7.5*degree))
heroExport('caxes',[],'dir','gallery')                                  % hide

%% kam
%#page EBSDKAM
%#title Kernel average misorientation
%#labels EBSD, Deformation
mtexdata ferrite
[grains,ebsd] = calcGrains(ebsd,'minPixel',8);
plot(ebsd,ebsd.KAM('threshold',2.5*degree)./degree)
setColorRange([0 2]), mtexColorMap LaboTeX
hold on, plot(grains.boundary,'lineWidth',1.5), hold off
heroExport('kam',[],'dir','gallery')                                    % hide

%% gos
%#page GrainOrientationParameters
%#title Grain orientation spread
%#labels Grains, Deformation
mis2mean = calcGROD(ebsd,grains);
GOS = ebsd.grainMean(mis2mean.angle,grains);
plot(grains,GOS./degree)
mtexColorbar('title','degree')
heroExport('gos',[],'dir','gallery')                                    % hide

%% phases
%#page EBSDPlotting
%#title Phase map
%#labels EBSD
mtexdata forsterite
plot(ebsd)
heroExport('phases',[],'dir','gallery')                                 % hide

%% shape
%#page ShapeParameters
%#title Grain aspect ratio
%#labels Grains
grains = calcGrains(ebsd('indexed'),'minPixel',10);
plot(grains,grains.aspectRatio)
setColorRange([1 4]), mtexColorbar('title','aspect ratio')
heroExport('shape',[],'dir','gallery')                                  % hide

%% ellipses
%#page EllipseBasedParameters
%#title Fitted ellipses
%#labels Grains
[c,a,b] = grains(grains.numPixel>200).fitEllipse;
plot(grains,'faceAlpha',0.3), hold on
plotEllipse(c,a,b,'lineColor','k','lineWidth',1.5), hold off
legend off                                                              % hide
heroExport('ellipses',[],'dir','gallery')                               % hide

%% crystals
%#page CrystalShapes
%#title Grains drawn as crystals
%#labels Grains, Crystal geometry
fo = grains('Forsterite');
[~,id] = sort(fo.area,'descend');
cS = crystalShape.olivine(fo.CS);
plot(grains,'faceAlpha',0.3), hold on
plot(fo(id(1:40)),0.8*cS), hold off
legend off                                                              % hide
heroExport('crystals',[],'dir','gallery')                               % hide

%% polefigure
%#page EBSDOrientationPlots
%#title Pole figures of individual orientations
%#labels EBSD, Texture
ori = ebsd('Forsterite').orientations;
h = Miller({1,0,0},{0,1,0},{0,0,1},ori.CS);
plotPDF(ori,h,'points',5000,'markerSize',2)
heroExport('polefigure',[],'dir','gallery')                             % hide

%% sigma
%#page SigmaSections
%#title ODF in sigma sections
%#labels Texture
odf = calcDensity(ori);
plotSection(odf,'sigma','sections',9)
heroExport('sigma',[],'dir','gallery')                                  % hide

%% ipf
%#page OrientationInversePoleFigure
%#title Inverse pole figure density
%#labels Texture
plotIPDF(odf,zvector)
mtexColorbar
heroExport('ipf',[],'dir','gallery')                                    % hide

%% fundamental
%#page OrientationFundamentalRegion
%#title Orientations in the fundamental region
%#labels Crystal geometry, Texture
plot(grains('Forsterite').meanOrientation,'axisAngle','markerSize',4)
heroExport('fundamental',[],'dir','gallery')                            % hide

%% ipfkey
%#page EBSDIPFMap
%#title Inverse pole figure colour key
%#labels Crystal geometry, EBSD
plot(ipfColorKey(ebsd('Forsterite')))
heroExport('ipfkey',[],'dir','gallery')                                 % hide

%% goss
%#page ODFModeling
%#title Pole figures of a model texture
%#labels Texture, Pole figures
cs = crystalSymmetry('m-3m');
odf = unimodalODF(orientation.goss(cs),'halfwidth',10*degree);
plotPDF(odf,Miller({1,0,0},{1,1,0},{1,1,1},cs))
heroExport('goss',[],'dir','gallery')                                   % hide

%% miller
%#page CrystalDirections
%#title Crystal directions in a stereographic projection
%#labels Crystal geometry
m = Miller({1,0,0},{1,1,0},{1,1,1},{2,1,0},cs,'uvw');
plot(m,'symmetrised','labeled','upper','grid')
heroExport('miller',[],'dir','gallery')                                 % hide

%% quartz
%#page CrystalShapes
%#title A quartz crystal
%#labels Crystal geometry
plot(crystalShape.quartz,'colored')
heroExport('quartz',[],'dir','gallery')                                 % hide

%% velocity
%#page WaveVelocities
%#title P-wave velocity of olivine
%#labels Properties
cs = crystalSymmetry('mmm',[4.7646 10.2296 5.9942],'mineral','Olivine');
C = stiffnessTensor.load(fullfile(mtexDataPath,'tensor','Olivine1997PC.GPa'),cs);
C = addOption(C,'density',3.355);
plot(C.velocity,'complete','upper')
mtexColorbar('title','km/s')
heroExport('velocity',[],'dir','gallery')                               % hide

%% youngs
%#page AnisotropicTheory
%#title Young's modulus of olivine
%#labels Properties
plot(C.YoungsModulus,'complete','upper')
mtexColorbar('title','GPa')
heroExport('youngs',[],'dir','gallery')                                 % hide

%% parents
%#page TiBetaReconstruction
%#title Parent beta grains in titanium
%#labels Parent grains, Grains
mtexdata alphaBetaTitanium
job = parentGrainReconstructor(ebsd);
job.p2c = orientation.Burgers(job.csParent,job.csChild);
job.calcVariantGraph('threshold',1.5*degree);
job.clusterVariantGraph('numIter',3);
job.calcParentFromVote;
plot(job.parentGrains,'ipfDirection',zvector)
heroExport('parents',[],'dir','gallery')                                % hide

%% polefigures
%#page PoleFigure2ODF
%#title ODF from neutron pole figures
%#labels Pole figures, Texture
mtexdata dubna
odf = calcODF(pf,'silent');
plotPDF(odf,pf.allH,'antipodal','superposition',pf.c)
heroExport('polefigures',[],'dir','gallery')                            % hide

%% measured
%#page PoleFigurePlot
%#title Measured neutron pole figures
%#labels Pole figures
plot(pf)
heroExport('measured',[],'dir','gallery')                               % hide
