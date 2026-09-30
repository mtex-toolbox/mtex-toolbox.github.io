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
cd(fullfile(mtexDataPath,'EBSD'));                                      % hide
close all                                                               % hide

%% Import
%#captions orientation map
% an EBSD map of magnesium with many twins
ebsd = EBSD.load('twins.ctf',...
  'EulerCorrection',rotation.byAxisAngle(xvector,180*degree));
plot(ebsd('Magnesium'),'ipfDirection',zvector)
heroExport('import',1)                                                  % hide

%% Grains
%#captions grains
% reconstruct grains and smooth their boundaries
[grains,ebsd] = calcGrains(ebsd('indexed'),'angle',5*degree);
grains = smoothBoundary(grains,5);
plot(grains,'ipfDirection',zvector)
heroExport('grains',1)                                                  % hide

%% Clean
%#captions KAM 0-2°, measured | KAM 0-2°, denoised
% total variation denoising of the orientations
F = l1TVFilter;
ebsdS = smooth(ebsd,F);
plot(ebsd,ebsd.KAM./degree), setColorRange([0 2])                       % hide
heroExport('clean',1)                                                   % hide
plot(ebsdS,ebsdS.KAM./degree)
setColorRange([0 2])                                                    % hide
heroExport('clean',2)                                                   % hide

%% Twins
%#captions twin boundaries | twins merged into their parents
% the {10-12} extension twin is a near Sigma 17a boundary
gB = grains.boundary('Magnesium','Magnesium');
%show twin = CSL(17,grains.CS,'delta',0.02);
twin = orientation.map(Miller(0,1,-1,-2,grains.CS),...                  % hide
  Miller(0,-1,1,-2,grains.CS),Miller(2,-1,-1,0,grains.CS),...           % hide
  Miller(2,-1,-1,0,grains.CS));                                         % hide
twinB = gB(gB.isTwinning(twin,5*degree));
plot(grains,'ipfDirection',zvector), hold on                            % hide
plot(twinB,'lineColor','w','lineWidth',3)
hold off                                                                % hide
heroExport('twins',1)                                                   % hide
parents = merge(grains,twinB);
plot(grains,'ipfDirection',zvector), hold on                            % hide
plot(parents.boundary,'lineWidth',3), hold off                          % hide
heroExport('twins',2)                                                   % hide

%% Texture
%#captions (0001) pole figure | sigma sections
% the ODF by kernel density estimation
odf = calcDensity(ebsd('Magnesium').orientations);
plotPDF(odf,Miller(0,0,0,1,odf.CS))
heroExport('texture',1)                                                 % hide
plotSection(odf,'sigma','sections',9)
heroExport('texture',2)                                                 % hide

%% Parent grains
%#captions measured alpha titanium | reconstructed beta grains
% prior beta grains from an alpha titanium map
mtexdata alphaBetaTitanium
[grains,ebsd] = calcGrains(ebsd,'threshold',1.5*degree);
plot(ebsd('Ti (alpha)'),'ipfDirection',zvector)                         % hide
heroExport('parent',1)                                                  % hide
job = parentGrainReconstructor(ebsd,grains);
job.p2c = orientation.Burgers(job.csParent,job.csChild);
job.calcVariantGraph('threshold',1.5*degree);
job.clusterVariantGraph('numIter',3);
job.calcParentFromVote;
plot(job.parentGrains,'ipfDirection',zvector)
heroExport('parent',2)                                                  % hide

%% Properties
%#captions single crystal | textured polycrystal
% Young's modulus of magnesium and of the textured map
ebsd = EBSD.load('twins.ctf',...                                        % hide
  'EulerCorrection',rotation.byAxisAngle(xvector,180*degree));          % hide
Cij = [59.7 26.2 21.7 0 0 0;  26.2 59.7 21.7 0 0 0;
       21.7 21.7 61.7 0 0 0;  0 0 0 16.4 0 0;
       0 0 0 0 16.4 0;  0 0 0 0 0 16.75];
C = stiffnessTensor(Cij,ebsd('Magnesium').CS);
[~,~,CHill] = calcTensor(ebsd('Magnesium'),C);
plot(C.YoungsModulus,'complete','upper')
mtexColorbar('title','GPa')                                             % hide
heroExport('properties',1)                                              % hide
plot(CHill.YoungsModulus,'complete','upper')
mtexColorbar('title','GPa')                                             % hide
heroExport('properties',2)                                              % hide

%% 3D EBSD
%#captions 3D grains | the largest grain
% a 3D EBSD volume and its grains
ebsd = EBSD3.load('SmallIN100_MeshStats.dream3d');
[grains,ebsd] = calcGrains(ebsd,'angle',5*degree);
plot(grains,grains.meanOrientation,'edgeAlpha',0.1)
setCamera(plottingConvention.default3D)                                 % hide
heroExport('3d',1)                                                      % hide
[~,id] = max(grains.volume);
plot(grains(id),grains(id).meanOrientation,'edgeAlpha',0.2)
setCamera(plottingConvention.default3D)                                 % hide
heroExport('3d',2)                                                      % hide
