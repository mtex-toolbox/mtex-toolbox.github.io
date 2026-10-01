%% heroFigures
% The code card at the top of the homepage: one cell per tab. The visible
% lines of every cell are shown on the homepage as they stand and draw its
% figures; lines ending in "% hide" only prepare or export a figure, and a
% line "%show <code>" is shown but not run, for a syntax MTEX does not have yet.
% tools/hero-code.py turns this file into _data/hero.yml.
%
% A cell starts with "%% <tab name>" and a line "%#captions a | b" naming
% its figures, which heroExport.m writes to ../figures/hero/<tab>_<n>.png.

setMTEXpref('FontSize',15);                                             % hide
plottingConvention.default('y↑→x');                                     % hide
cd(fullfile(fileparts(mfilename('fullpath')),'..','data'));                                      % hide
close all                                                               % hide

%% Import
%#captions orientation map
% load a magnesium EBSD map
ebsd = EBSD.load('twins.h5');

plot(ebsd('Magnesium'),'ipfDirection',zvector)
heroExport('import',1,'fitMap')                                                  % hide

%% Grains
%#captions grains
% reconstruct grains and smooth boundaries
[grains,ebsd] = calcGrains(ebsd,'angle',5*degree);
grains = smoothBoundary(grains,5);
plot(grains,'ipfDirection',zvector)
heroExport('grains',1,'fitMap')                                                  % hide

%% Clean
%#captions Measured KAM | Denoised KAM
% denoise the orientations
ebsdS = smooth(ebsd,l1TVFilter);

% compare kernel average misorientation
plot(ebsd,ebsd.KAM./degree)
setColorRange([0 2])                                                    % hide
heroExport('clean',1)                                                   % hide
plot(ebsdS,ebsdS.KAM./degree)
setColorRange([0 2])                                                    % hide
heroExport('clean',2)                                                   % hide

%% Twins
%#captions Twin boundaries | Merged parents
% magnesium {10-12} extension twin
twin = orientation.byAxisAngle(...
  Miller(1,0,-1,2,grains.CS),180*degree);
gB = grains.boundary('Magnesium','Magnesium');
twinB = gB(gB.isTwinning(twin,5*degree));
plot(grains,'ipfDirection',zvector), hold on                             % hide
plot(twinB,'lineColor','w','lineWidth',3)
hold off                                                               % hide
heroExport('twins',1)                                                   % hide

% merge grains across twin boundaries
parents = merge(grains,twinB);
plot(grains,'ipfDirection',zvector), hold on                             % hide
plot(parents.boundary,'lineWidth',3)
hold off                                                               % hide
heroExport('twins',2)                                                   % hide

%% Texture
%#captions (0001) pole figure | ODF sections
% estimate the orientation distribution
odf = calcDensity(ebsd('Magnesium').orientations,...
  'halfwidth',10*degree);

% show a pole figure and ODF sections
plotPDF(odf,Miller(0,0,0,1,odf.CS))
heroExport('texture',1,'dark')                                          % hide
plotSection(odf,'sigma','sections',9)
heroExport('texture',2,'dark')                                          % hide

%% Parent grains
%#captions Measured alpha | Reconstructed beta
% reconstruct beta grains from alpha titanium
mtexdata alphaBetaTitanium
plot(ebsd('Ti (alpha)'),'ipfDirection',zvector)                         % hide
heroExport('parent',1)                                                  % hide
job = parentGrainReconstructor(ebsd);
job.p2c = orientation.Burgers(job.csParent,job.csChild);

% group variants and assign parent orientations
job.calcVariantGraph('threshold',1.5*degree);
job.clusterVariantGraph('numIter',3);
job.calcParentFromVote;
plot(job.parentGrains,'ipfDirection',zvector)
heroExport('parent',2)                                                  % hide

%% Properties
%#captions Single crystal | Textured polycrystal
% single-crystal stiffness of magnesium (GPa)
ebsd = EBSD.load('twins.h5');                                          % hide
Cij = [59.7 26.2 21.7 0 0 0;  26.2 59.7 21.7 0 0 0;
       21.7 21.7 61.7 0 0 0;  0 0 0 16.4 0 0;
       0 0 0 0 16.4 0;  0 0 0 0 0 16.75];
C = stiffnessTensor(Cij,ebsd('Magnesium').CS);

% average over the measured texture (Hill)
[~,~,CHill] = calcTensor(ebsd('Magnesium'),C);
plot(C.YoungsModulus,'complete','upper')
heroExport('properties',1,'dark','noLabels')                            % hide
plot(CHill.YoungsModulus,'complete','upper')
heroExport('properties',2,'dark','noLabels')                            % hide

%% 3D EBSD
%#captions 3D grains | Largest grain
% a 3D EBSD volume and its grains
fname = fullfile(mtexEBSDPath,'SmallIN100_MeshStats.dream3d');
ebsd = EBSD3.load(fname);
[grains,ebsd] = calcGrains(ebsd,'angle',5*degree);
plot(grains,grains.meanOrientation,'edgeAlpha',0.1)
setCamera(plottingConvention.default3D)                                 % hide
axis off                                                               % hide
heroExport('3d',1,'fit3d')                                                      % hide

[~,id] = max(grains.volume);
grains = reduceBoundary(grains,2,'quadric');
grains = smoothBoundary(grains,taubinFilter(20));
plot(grains(id),grains(id).meanOrientation,'edgeAlpha',0)
setCamera(plottingConvention.default3D)                                 % hide
camlight; lighting gouraud
axis off                                                               % hide
heroExport('3d',2,'fit3d')                                                      % hide
