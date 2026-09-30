%% galleryFigures
% The gallery of the website: one cell per figure. The visible lines of a
% cell are the code the gallery shows for its figure; lines ending in
% "% hide" only prepare or export it. The lines
%   %#page    the documentation page the figure belongs to
%   %#title   its title in the gallery
%   %#labels  comma separated labels, the filters of the gallery
% describe it. tools/gallery-data.py turns this file into _data/gallery.yml,
% and galleryExport.m writes the figures to ../figures/gallery/<cell>.png.
% The cells run in order: a cell may use the variables of the one before.

setMTEXpref('FontSize',15);                                             % hide
plottingConvention.default('y↑→x');                                     % hide
rng(7);                                                                % hide
close all                                                               % hide


%% ebsdtutorial
%#page EBSDTutorial
%#title Your first EBSD analysis
%#labels Tutorials, EBSD
mtexdata forsterite silent
ebsd = ebsd(inpolygon(ebsd,[12000 3000 9000 6750]));
grains = smoothBoundary(calcGrains(ebsd,'angle',10*degree,'minPixel',5),5);
plot(ebsd('Forsterite'),ebsd('Forsterite').orientations)
hold on, plot(grains.boundary,'lineWidth',1.5), hold off
galleryExport('ebsdtutorial')                                           % hide

%% graintutorial
%#page GrainTutorial
%#title Your first grain analysis
%#labels Tutorials, Grains
mtexdata mylonite silent
ebsd = ebsd(inpolygon(ebsd,[21000 1500 2000 1500]));
[grains,ebsd] = calcGrains(ebsd,'angle',15*degree);
plot(grains)
hold on
plot(grains('Quartz'),grains('Quartz').meanOrientation)
plot(grains.boundary,'lineWidth',1.5)
hold off
legend off                                                             % hide
galleryExport('graintutorial')                                          % hide

%% boundarytutorial
%#page BoundaryTutorial
%#title Your first boundary analysis
%#labels Tutorials, Boundaries
mtexdata twins silent
grains = smoothBoundary(calcGrains(ebsd,'angle',15*degree),5);
gB = grains.boundary('Magnesium','Magnesium');
plot(gB,gB.misorientation.angle./degree,'lineWidth',3)
mtexColorbar('title','Misorientation (degree)')
galleryExport('boundarytutorial','crop',0.8)                             % hide

%% pftutorial
%#page PoleFigureTutorial
%#title Your first pole figure analysis
%#labels Tutorials, Pole figures
cs = crystalSymmetry('6/mmm',[2.633 2.633 4.8],'X||a*','Y||b','Z||c');
h = Miller({0,0,2},{1,0,0},{1,0,1},{1,0,2},cs);
pname = fullfile(mtexDataPath,'PoleFigure','ZnCuTi');                 % hide
fname = arrayfun(@(n) fullfile(pname,['ZnCuTi_Wal_50_5x5_PF_' n{1} '_R.UXD']),... % hide
  {'002','100','101','102'},'UniformOutput',false);                      % hide
fnameDef = arrayfun(@(n) fullfile(pname,['ZnCuTi_defocusing_PF_' n{1} '_R.UXD']),... % hide
  {'002','100','101','102'},'UniformOutput',false);                      % hide
pf = PoleFigure.load(fname,h,cs,'interface','uxd');
pfDef = PoleFigure.load(fnameDef,h,cs,'interface','uxd');
pf = correct(pf,'def',pfDef);
pf(pf.intensities<0) = 0;
odf = calcODF(pf,'silent');
plotPDF(odf,h(1))
galleryExport('pftutorial')                                             % hide

%% odftutorial
%#page ODFTutorial
%#title Your first texture analysis
%#labels Tutorials, Texture
mtexdata titanium silent
odf = calcDensity(ebsd('Titanium (Alpha)').orientations,'halfwidth',10*degree);
plotSection(odf,'sigma','sections',4,'contourf')
mtexColorbar('title','mrd')
galleryExport('odftutorial')                                            % hide

%% ipfmap
%#page EBSDIPFMap
%#title Colouring EBSD maps
%#labels EBSD, Grains
mtexdata twins
[grains,ebsd] = calcGrains(ebsd('indexed'),'angle',5*degree);
plot(ebsd,'ipfDirection',zvector)
hold on, plot(grains.boundary,'lineWidth',1.5), hold off
galleryExport('ipfmap','crop',0.95)                                 % hide

%% twins
%#page TwinningBoundaries
%#title Twin boundaries
%#labels Grains, Boundaries
twin = orientation.map(Miller(0,1,-1,-2,grains.CS),Miller(0,-1,1,-2,grains.CS),...
  Miller(2,-1,-1,0,grains.CS),Miller(2,-1,-1,0,grains.CS));
gB = grains.boundary('Magnesium','Magnesium');
twinB = gB(gB.isTwinning(twin,5*degree));
plot(grains,'faceColor',[0.13 0.22 0.25]), hold on
plot(twinB,'lineColor',[1 0.72 0.15],'lineWidth',3), hold off
galleryExport('twins','crop',0.7)                                  % hide

%% misorientation
%#page BoundaryMisorientations
%#title Boundary misorientations
%#labels Boundaries
plot(gB,gB.misorientation.angle./degree,'lineWidth',2)
mtexColorbar('title','degree')
galleryExport('misorientation','crop',0.8)                         % hide

%% angledist
%#page AngleDistributionFunction
%#title Misorientation distributions
%#labels Boundaries, Texture
plotAngleDistribution(gB.misorientation)
galleryExport('angledist')                              % hide

%% caxes
%#page VectorsDensityEstimation
%#title Density estimation
%#labels EBSD, Texture
c = ebsd('Magnesium').orientations * Miller(0,0,0,1,ebsd('Magnesium').CS);
plot(calcDensity(c,'halfwidth',7.5*degree),'upper')
galleryExport('caxes')                                  % hide

%% kam
%#page EBSDKAM
%#title Kernel average misorientation
%#labels EBSD, Deformation
mtexdata ferrite
[grains,ebsd] = calcGrains(ebsd,'minPixel',8);
plot(ebsd,ebsd.KAM('threshold',2.5*degree)./degree)
setColorRange([0 2]), mtexColorMap LaboTeX
hold on, plot(grains.boundary,'lineWidth',1.5), hold off
galleryExport('kam','crop',0.65)                                    % hide

%% denoising
%#page EBSDDenoising
%#title Denoising orientation maps
%#labels EBSD, Deformation
ebsdS = smooth(ebsd('indexed'),l1TVFilter);
newMtexFigure('layout',[1 2]);
plot(ebsd,ebsd.KAM('threshold',2.5*degree)./degree)
mtexTitle('Measured')
nextAxis
plot(ebsdS,ebsdS.KAM('threshold',2.5*degree)./degree)
mtexTitle('Denoised')
setColorRange([0 2]), mtexColorMap LaboTeX
mtexColorbar('title','KAM (degree)')
galleryExport('denoising','crop',0.35)                                   % hide

%% gos
%#page GrainOrientationParameters
%#title Grain orientation parameters
%#labels Grains, Deformation
mis2mean = calcGROD(ebsd,grains);
GOS = ebsd.grainMean(mis2mean.angle,grains);
plot(grains,GOS./degree)
mtexColorbar('title','degree')
galleryExport('gos','crop',0.65)                                    % hide

%% phases
%#page EBSDPlotting
%#title Phase maps
%#labels EBSD
mtexdata forsterite
ebsd = ebsd(inpolygon(ebsd,[12000 3000 9000 6750]));
plot(ebsd)
galleryExport('phases','crop',0.95)                                 % hide

%% shape
%#page ShapeParameters
%#title Grain shape parameters
%#labels Grains
grains = calcGrains(ebsd('indexed'),'minPixel',10);
plot(grains,grains.aspectRatio)
setColorRange([1 4]), mtexColorbar('title','aspect ratio')
galleryExport('shape','crop',0.95)                                  % hide

%% ellipses
%#page EllipseBasedParameters
%#title Ellipse fitting
%#labels Grains
[c,a,b] = grains(grains.numPixel>200).fitEllipse;
plot(grains,'faceColor',[0.88 0.93 0.96]), hold on
plot(grains.boundary,'lineWidth',1,'lineColor',[0.55 0.65 0.7])
plotEllipse(c,a,b,'lineColor',[0.02 0.35 0.42],'lineWidth',2.5), hold off
legend off                                                              % hide
galleryExport('ellipses','crop',0.95)                               % hide

%% crystals
%#page CrystalShapes
%#title Crystal shapes
%#labels Grains, Crystal geometry
fo = grains('Forsterite');
[~,id] = sort(fo.area,'descend');
cS = crystalShape.olivine(fo.CS);
plot(grains,'faceColor',[0.91 0.94 0.96]), hold on
plot(grains.boundary,'lineWidth',1,'lineColor',[0.55 0.65 0.7])
plot(fo(id(1:min(20,numel(id)))),0.55*cS,'colored'), hold off
legend off                                                              % hide
galleryExport('crystals','crop',0.95)                               % hide

%% polefigure
%#page EBSDOrientationPlots
%#title Pole figures
%#labels EBSD, Texture
ori = ebsd('Forsterite').orientations;
plotPDF(ori,Miller(0,0,1,ori.CS),'points',5000,'markerSize',3)
galleryExport('polefigure')                             % hide

%% sigma
%#page SigmaSections
%#title ODF sections
%#labels Texture
odf = calcDensity(ori);
plotSection(odf,'sigma',(60:15:105)*degree,'contourf')
galleryExport('sigma')                                  % hide

%% ipf
%#page OrientationInversePoleFigure
%#title Inverse pole figures
%#labels Texture
plotIPDF(odf,zvector)
mtexColorbar
galleryExport('ipf')                                    % hide

%% fundamental
%#page OrientationFundamentalRegion
%#title Fundamental regions
%#labels Crystal geometry, Texture
plot(grains('Forsterite').meanOrientation,'axisAngle','markerSize',12)
camzoom(0.85)                                                           % hide
galleryExport('fundamental')                            % hide

%% ipfkey
%#page EBSDIPFMap
%#title Colour keys
%#labels Crystal geometry, EBSD
plot(ipfColorKey(ebsd('Forsterite')))
galleryExport('ipfkey')                                 % hide

%% goss
%#page ODFModeling
%#title Model textures
%#labels Texture, Pole figures
cs = crystalSymmetry('m-3m');
odf = unimodalODF(orientation.goss(cs),'halfwidth',10*degree);
plotPDF(odf,Miller({1,0,0},{1,1,0},{1,1,1},cs),'layout',[2 2])
galleryExport('goss')                                   % hide

%% miller
%#page CrystalDirections
%#title Miller indices
%#labels Crystal geometry
m = Miller({1,0,0},{1,1,0},{1,1,1},{2,1,0},cs,'uvw');
plot(m,'symmetrised','labeled','upper','grid')
galleryExport('miller')                                 % hide

%% quartz
%#page CrystalShapes
%#title Crystal morphology
%#labels Crystal geometry
plot(crystalShape.quartz,'colored')
legend off                                                             % hide
galleryExport('quartz','fit3d')                                 % hide

%% velocity
%#page WaveVelocities
%#title Wave velocities
%#labels Properties
cs = crystalSymmetry('mmm',[4.7646 10.2296 5.9942],'mineral','Olivine');
C = stiffnessTensor.load(fullfile(mtexDataPath,'tensor','Olivine1997PC.GPa'),cs);
C = addOption(C,'density',3.355);
plot(C.velocity,'complete','upper')
mtexColorbar('title','km/s')
galleryExport('velocity')                               % hide

%% youngs
%#page AnisotropicTheory
%#title Elastic anisotropy
%#labels Properties
plot(C.YoungsModulus,'complete','upper')
mtexColorbar('title','GPa')
galleryExport('youngs')                                 % hide

%% frames
%#page EBSDReferenceFrame
%#title Reference frames
%#labels EBSD, Crystal geometry
plottingConvention.default('y↓→x');                                     % hide
ebsd = EBSD.load(fullfile(mtexEBSDPath,'olivineopticalmap.ang'),'setting',2);
grains = calcGrains(ebsd);
plot(ebsd('olivine'),'ipfDirection',zvector,'refFrame','on')
hold on, plot(grains(grains.numPixel>500),crystalShape.olivine,'colored'), hold off
legend off                                                              % hide
galleryExport('frames','crop',0.75)                                 % hide
plottingConvention.default('y↑→x');                                     % hide

%% clustering
%#page ClusterDemo
%#title Clustering
%#labels Texture
cs = crystalSymmetry('432');
odf = 0.7*fibreODF(fibre.gamma(cs),'halfwidth',10*degree) + ...
  0.3*unimodalODF(orientation.byEuler(30*degree,10*degree,60*degree,cs));
ori = odf.discreteSample(10000);
[cId,center] = calcCluster(ori,'method','classix');
plotSection(ori,ind2color(cId),'markerSize',5,'sigma','sections',4)
galleryExport('clustering')                             % hide

%% martensite
%#page GrainGraphBasedReconstruction
%#title Martensite reconstruction
%#labels Parent grains, Grains
mtexdata martensite
job = parentGrainReconstructor(ebsd);
job.p2c = orientation.KurdjumovSachs(job.csParent,job.csChild);
job.calcParent2Child;
job.calcGraph('threshold',2.5*degree,'tolerance',2.5*degree);
job.clusterGraph;
job.calcParentFromGraph;
plot(job.parentGrains,'ipfDirection',zvector)
galleryExport('martensite','crop',0.9)                             % hide

%% parents
%#page TiBetaReconstruction
%#title Parent grain reconstruction
%#labels Parent grains, Grains
mtexdata alphaBetaTitanium
job = parentGrainReconstructor(ebsd);
job.p2c = orientation.Burgers(job.csParent,job.csChild);
job.calcVariantGraph('threshold',1.5*degree);
job.clusterVariantGraph('numIter',3);
job.calcParentFromVote;
plot(job.parentGrains,'ipfDirection',zvector)
galleryExport('parents','crop',0.85)                                % hide

%% polefigures
%#page PoleFigure2ODF
%#title ODF reconstruction
%#labels Pole figures, Texture
mtexdata dubna
odf = calcODF(pf,'silent');
plotPDF(odf,pf.allH(1:3),'antipodal','superposition',pf.c(1:3),'layout',[2 2])
galleryExport('polefigures')                            % hide

%% measured
%#page PoleFigurePlot
%#title Pole figure data
%#labels Pole figures
plot(pf{1},'contourf')
galleryExport('measured')                               % hide

%% reconstruction
%#page GrainReconstruction
%#title Reconstructing grains
%#labels EBSD, Grains
mtexdata EMSphinx silent
ebsd = ebsd('Iron fcc');
ebsd = ebsd(inpolygon(ebsd,[40 30 80 60]));
grains = calcGrains(ebsd,'fmc',0.5,'minPixel',10);
grains = smoothBoundary(grains,5);
plot(ebsd,ebsd.orientations,'ipfDirection',zvector)
hold on, plot(grains.boundary,'lineWidth',2), hold off
galleryExport('reconstruction')                                         % hide

%% grod
%#page EBSDGROD
%#title Orientation gradients within grains
%#labels EBSD, Grains, Deformation
mtexdata ferrite silent
[grains,ebsd] = calcGrains(ebsd,'angle',10*degree,'minPixel',5);
grod = calcGROD(ebsd,grains);
plot(ebsd,grod.angle./degree)
mtexColorMap parula
mtexColorbar('title','GROD (degree)')
hold on, plot(grains.boundary,'lineWidth',1.5), hold off
galleryExport('grod','crop',0.65)                                        % hide

%% subgrains
%#page SubGrainBoundaries
%#title Revealing subgrain boundaries
%#labels Grains, Boundaries, Deformation
[grains,ebsd] = calcGrains(ebsd,'angle',[10 1]*degree,'minPixel',5);
subGB = grains.innerBoundary;
subGB = subGB(subGB.misorientation.angle<=10*degree & subGB.componentSize>50);
plot(ebsd('indexed'),ebsd('indexed').orientations,'faceAlpha',0.4)
hold on
plot(grains.boundary,'lineWidth',1.5)
plot(subGB,'lineWidth',2,'lineColor',[0.05 0.2 0.7])
hold off
galleryExport('subgrains','crop',0.55)                                   % hide

%% gnd
%#page GND
%#title Mapping dislocation density
%#labels EBSD, Deformation
ebsd = EBSD.load(fullfile(mtexEBSDPath,'DC06_2uniax.ang'),'setting',2);
ebsd = ebsd(inpolygon(ebsd,[1 25 48 36]));
[grains,ebsd] = calcGrains(ebsd,'angle',2.5*degree,'minPixel',6);
ebsd = smooth(ebsd,l1TVFilter,'fill',grains);
dS = dislocationSystem.bcc(ebsd.CS);
dS(dS.isEdge).u = 1;
dS(dS.isScrew).u = 0.7;
gnd = calcGND(ebsd,dS);
plot(ebsd,gnd)
mtexColorMap hot
set(gca,'ColorScale','log','CLim',[1e11 5e14]);
mtexColorbar('title','density (1/m^2)')
hold on, plot(grains.boundary,'lineWidth',1.5,'lineColor','w'), hold off
galleryExport('gnd')                                                    % hide

%% schmid
%#page SchmidFactor
%#title Schmid factors and slip systems
%#labels Deformation, Crystal geometry
cs = crystalSymmetry('432');
sS = slipSystem.fcc(cs).symmetrise('antipodal');
SF = sS.SchmidFactor;
contourf(max(abs(SF),[],1),'upper')
mtexColorbar('title','Schmid factor')
galleryExport('schmid')                                                 % hide

%% taylor
%#page TaylorModel
%#title Predicting plastic deformation
%#labels Deformation, Texture
mtexdata csl silent
ebsd = ebsd(inpolygon(ebsd,[40 20 100 75]));
grains = smoothBoundary(calcGrains(ebsd,'minPixel',3),5);
sS = slipSystem.fcc(grains.CS).symmetrise;
epsilon = strainTensor(diag([1 0 -1]));
M = calcTaylor(inv(grains.meanOrientation)*epsilon,sS);
plot(grains,M)
mtexColorMap parula
mtexColorbar('title','Taylor factor')
galleryExport('taylor')                                                 % hide

%% slip
%#page SlipTransmission
%#title Slip across grain boundaries
%#labels Deformation, Boundaries
mtexdata titanium silent
[grains,ebsd] = calcGrains(ebsd);
grains = smoothBoundary(grains,5);
sS = slipSystem.basal(ebsd.CS).symmetrise;
[SF,id] = max(sS.SchmidFactor(inv(grains.meanOrientation)*xvector),[],2);
sSGrain = grains.meanOrientation .* sS(id);
gB = grains.boundary('indexed');
mP = mPrime(sSGrain(gB.grainId(:,1)),sSGrain(gB.grainId(:,2)));
plot(grains,'faceColor',[0.92 0.94 0.95])
hold on
plot(gB,mP,'lineWidth',4)
quiver(grains,sSGrain.trace,'color',[0.08 0.2 0.4])
hold off
mtexColorbar('title',"m'")
galleryExport('slip','crop',0.75)                                        % hide

%% grains3d
%#page Grains3D
%#title Exploring grains in 3D
%#labels 3D, Grains
grains3 = grain3d.load(fullfile(mtexEBSDPath,'SmallIN100_MeshStats.dream3d'));
plot(grains3,grains3.meanOrientation,'edgeAlpha',0.08,'micronbar','off')
setCamera(plottingConvention.default3D)
axis off                                                               % hide
galleryExport('grains3d')                                               % hide

%% volume
%#page EBSD3Plotting
%#title Slicing a 3D microstructure
%#labels 3D, EBSD
ebsd3 = mtexdata('xnovo');
plot(slice(ebsd3,plane3d(zvector,vector3d(0,0,0))),'micronbar','off')
hold on
plot(slice(ebsd3,plane3d(xvector,vector3d(0,0,0))),'micronbar','off')
plot(slice(ebsd3,plane3d(yvector,vector3d(0,0,0))),'micronbar','off')
hold off
legend off                                                             % hide
setCamera(plottingConvention.default3D)
axis off                                                               % hide
galleryExport('volume')                                                 % hide

%% austenite
%#page MaParentGrainReconstruction
%#title Reconstructing parent austenite
%#labels Parent grains, Grains
mtexdata martensite silent
job = parentGrainReconstructor(ebsd);
job.p2c = orientation.KurdjumovSachs(job.csParent,job.csChild);
job.calcParent2Child;
job.calcVariantGraph('threshold',3.5*degree,'tolerance',3.5*degree);
job.clusterVariantGraph('includeSimilar');
job.calcParentFromVote;
job.mergeSimilar('threshold',7.5*degree);
job.mergeInclusions('maxSize',50);
plot(job.parentGrains,job.parentGrains.meanOrientation)
galleryExport('austenite','crop',0.85)                                   % hide

%% images
%#page EBSDMapsAndImages
%#title Correlating EBSD and SEM images
%#labels EBSD
mtexdata trueEbsdWCCoSmall silent
img = ebsd.opt.trueEbsdImgs;
sem = mapImage(img.fsdT1,'dxy',img.pixSzImg,'origin',ebsd.pos(1,1));
ebsd.prop.fsd = interp(sem,ebsd.pos);
plot(ebsd,ebsd.fsd)
mtexColorMap gray
hold on
grains = calcGrains(ebsd);
plot(grains.boundary,'lineColor',[1 0.65 0.1],'lineWidth',2)
hold off
galleryExport('images','crop',0.8)                                       % hide

%% ebsdtexture
%#page EBSD2ODF
%#title Estimating texture from EBSD
%#labels EBSD, Texture
mtexdata copper silent
ori = ebsd('copper').orientations;
odf = calcDensity(ori,'halfwidth',10*degree);
plotSection(odf,'sigma','sections',4,'contourf')
mtexColorbar('title','mrd')
galleryExport('ebsdtexture')                                            % hide

%% aggregate
%#page TensorAverage
%#title Properties of textured polycrystals
%#labels Properties, Texture
mtexdata twins silent
Cij = [59.7 26.2 21.7 0 0 0;26.2 59.7 21.7 0 0 0;21.7 21.7 61.7 0 0 0;...
  0 0 0 16.4 0 0;0 0 0 0 16.4 0;0 0 0 0 0 16.75];
C = stiffnessTensor(Cij,ebsd('Magnesium').CS);
[~,~,CHill] = calcTensor(ebsd('Magnesium'),C);
plot(CHill.YoungsModulus,'complete','upper')
mtexColorbar('title',"Young's modulus (GPa)")
galleryExport('aggregate')                                              % hide

%% density
%#page DensityEstimation
%#title From samples to a density
%#labels Texture, Mathematics
x = linspace(0,1,500);
f = @(x) (Gaussian(0.2,0.05,x)+Gaussian(0.5,0.2,x))/2;
sample = discreteSample(f,80,'range',[0 1]);
psi = Gaussian(0,0.05);
estimate = @(x) mean(psi(x-sample),1);
plot(x,f(x),'lineWidth',3), hold on
plot(x,estimate(x),'lineWidth',3)
plot(sample,zeros(size(sample)),'.','markerSize',14)
hold off
legend('True density','Kernel estimate','Sample','Location','northeast')
xlabel('x'), ylabel('Density')
galleryExport('density')                                                % hide

%% misorientationtheory
%#page MisorientationTheory
%#title Understanding misorientations
%#labels Crystal geometry, Boundaries
mtexdata twins silent
grains = smoothBoundary(calcGrains(ebsd,'angle',5*degree),5);
plot(grains,grains.meanOrientation,'ipfDirection',zvector)
hold on
plot(grains([57 58]).boundary,'lineColor','w','lineWidth',3)
text(grains([57 58]),{'1','2'},'fontSize',22)
hold off
galleryExport('misorientationtheory','crop',0.7)                         % hide

%% symmetry
%#page CrystalSymmetries
%#title Crystal symmetry
%#labels Crystal geometry
plot(crystalSymmetry('m-3m'))
galleryExport('symmetry')                                               % hide

%% sphere
%#page S2FunPlotting
%#title Functions on the sphere
%#labels Mathematics
surf(S2Fun.smiley)
axis off
how2plot = plottingConvention;
how2plot.north = yvector;
how2plot.outOfScreen = vector3d(1,0,2);
setCamera(how2plot)
galleryExport('sphere')                                                 % hide

%% plotting
%#page PlotTypes
%#title Choosing your plot style
%#labels Texture, Pole figures
cs = crystalSymmetry('-3m');
odf = fibreODF(Miller(1,1,0,cs),zvector);
plotPDF(odf,Miller(1,0,0,cs),'antipodal')
galleryExport('plotting')                                               % hide
