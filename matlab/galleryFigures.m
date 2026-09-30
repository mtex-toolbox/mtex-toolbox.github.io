%% galleryFigures
% The gallery of the website: one cell per figure. The visible lines of a
% cell are the code the gallery shows for its figure; lines ending in
% "% hide" only prepare or export it. The lines
%   %#page    the documentation page the figure belongs to
%   %#title   its title in the gallery
%   %#text    one sentence
% describe it. tools/gallery-data.py turns this file into _data/gallery.yml,
% and heroExport.m writes the figures to ../figures/gallery/<cell>.png.

setMTEXpref('FontSize',15);                                             % hide
plottingConvention.default('y↑→x');                                     % hide
close all                                                               % hide

%% ipfmap
%#page EBSDIPFMap
%#title Orientation map with grain boundaries
%#text Magnesium with many twins, coloured by the crystal direction along z.
mtexdata twins
[grains,ebsd] = calcGrains(ebsd('indexed'),'angle',5*degree);
plot(ebsd,'ipfDirection',zvector)
hold on, plot(grains.boundary,'lineWidth',1.5), hold off
heroExport('ipfmap',[],'dir','gallery')                                 % hide

%% misorientation
%#page BoundaryMisorientations
%#title Boundary misorientation angles
%#text Every grain boundary coloured by the angle between the grains on either side.
gB = grains.boundary('indexed','indexed');
plot(gB,gB.misorientation.angle./degree,'lineWidth',2)
mtexColorbar('title','degree')
heroExport('misorientation',[],'dir','gallery')                         % hide

%% kam
%#page EBSDKAM
%#title Kernel average misorientation
%#text Local orientation changes inside the grains of a deformed ferrite map.
mtexdata ferrite
[grains,ebsd] = calcGrains(ebsd,'minPixel',8);
plot(ebsd,ebsd.KAM('threshold',2.5*degree)./degree)
setColorRange([0 2]), mtexColorMap LaboTeX
hold on, plot(grains.boundary,'lineWidth',1.5), hold off
heroExport('kam',[],'dir','gallery')                                    % hide

%% shape
%#page ShapeParameters
%#title Grain aspect ratio
%#text Grains of a forsterite map coloured by the aspect ratio of their fitted ellipse.
mtexdata forsterite
grains = calcGrains(ebsd('indexed'),'minPixel',10);
plot(grains,grains.aspectRatio)
setColorRange([1 4]), mtexColorbar('title','aspect ratio')
heroExport('shape',[],'dir','gallery')                                  % hide

%% crystals
%#page CrystalShapes
%#title Grains drawn as crystals
%#text Each large olivine grain shown as a crystal rotated to its mean orientation.
fo = grains('Forsterite');
[~,id] = sort(fo.area,'descend');
cS = crystalShape.olivine(fo.CS);
plot(grains,'faceAlpha',0.3), hold on
plot(fo(id(1:40)),0.8*cS), hold off
legend off                                                              % hide
heroExport('crystals',[],'dir','gallery')                               % hide

%% sigma
%#page SigmaSections
%#title ODF in sigma sections
%#text The orientation distribution of the forsterite map in nine sigma sections.
odf = calcDensity(ebsd('Forsterite').orientations);
plotSection(odf,'sigma','sections',9)
heroExport('sigma',[],'dir','gallery')                                  % hide

%% fundamental
%#page OrientationFundamentalRegion
%#title Orientations in the fundamental region
%#text Mean grain orientations of forsterite in axis-angle space.
plot(grains('Forsterite').meanOrientation,'axisAngle','markerSize',4)
heroExport('fundamental',[],'dir','gallery')                            % hide

%% ipf
%#page OrientationInversePoleFigure
%#title Inverse pole figure density
%#text Which crystal directions of forsterite align with the specimen z direction.
plotIPDF(odf,zvector)
mtexColorbar
heroExport('ipf',[],'dir','gallery')                                    % hide

%% polefigures
%#page PoleFigure2ODF
%#title ODF from neutron pole figures
%#text The ODF fitted to seven measured neutron pole figures of quartz, in the same pole figures.
mtexdata dubna
odf = calcODF(pf,'silent');
plotPDF(odf,pf.allH,'antipodal','superposition',pf.c)
heroExport('polefigures',[],'dir','gallery')                            % hide
