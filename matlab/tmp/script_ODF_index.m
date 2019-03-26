%% Orientation Density Functions
% This sections describes the class *ODF* and gives an overview how to work
% with orientation density functions in MTEX.
%
%% Class Description
% ODFs are at the very heart of MTEX. Almost any computation in MTEX can be
% done by estimating ODFs from various data, analyzing model ODFs,
% simulating experimental data from ODFs, or calculating any texture
% characteristics from an ODF. The following mindmap may give you an idea
% what is possible in MTEX.
%
% <<odf.png>>
% 
%% SUB: Model ODFs
%
% MTEX provides a very simple way to define model ODFs, e.g. unimodal ODFs,
% fibre ODF, Bingham ODFs or ODFs specified by Fourier
% coefficients. The central idea is that MTEX allows you to calculate with
% ODF as with ordinary number. That is you can multiply and ODF with a
% certain number, you can add, subtract or rotate ODFs. More precise
% information how to work with model ODFs in MTEX can be found in the
% section <ModelODFs.html ModelODFs>. 
%


%% SUB: Estimating ODFs from EBSD Data or Pole Figure Data
%
% The second natural way how ODFs occurs in MTEX is by estimating them from
% EBSD or pole figure data. It should be stressed that for MTEX there is no
% estimated ODFs and difference between model ODFs and estimated ODF. That
% means any operation that is valid for model ODFs is valid for estimated
% ODFs as well. More information how to estimate ODFs can be found in the
% sections <EBSD2odf.html ODF estimation from EBSD data> and
% <PoleFigure2odf.html ODF estimation from Pole Figure data>.
%
%% SUB: Analyzing ODFs
%
% MTEX provides a lot of tools to make analyzing and interpreting ODFs as
% simple as possible. The tools may be split into two groups - texture
% characteristics and visualization tools.
%
% <<odf2.png>>
%
% Have a look at the sections <ODFCalculations.html ODF Calculations>  and
% <ODFPlots.html ODF plots> for more information. 


%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="ODF.FourierODF.html"><tt>FourierODF</tt></a></td><td>compute FourierODF from another ODF</td></tr><tr><td width="200px"><a href="ODF.bandwidth.html"><tt>bandwidth</tt></a></td><td>of the ODF</td></tr><tr><td width="200px"><a href="ODF.calcAngleDistribution.html"><tt>calcAngleDistribution</tt></a></td><td>compute the angle distribution of an ODF or an MDF </td></tr><tr><td width="200px"><a href="ODF.calcAxisDistribution.html"><tt>calcAxisDistribution</tt></a></td><td>compute the axis distribution of an ODF or MDF</td></tr><tr><td width="200px"><a href="ODF.calcAxisVolume.html"><tt>calcAxisVolume</tt></a></td><td>amount of orientations with a specific misorientation axis </td></tr><tr><td width="200px"><a href="ODF.calcComponents.html"><tt>calcComponents</tt></a></td><td>heuristic to find modal orientations</td></tr><tr><td width="200px"><a href="ODF.calcError.html"><tt>calcError</tt></a></td><td>calculate approximation error between two ODFs</td></tr><tr><td width="200px"><a href="ODF.calcFourier.html"><tt>calcFourier</tt></a></td><td>compute Fourier coefficients of odf</td></tr><tr><td width="200px"><a href="ODF.calcMDF.html"><tt>calcMDF</tt></a></td><td>calculate the uncorrelated misorientation distribution function (MDF) from one or two ODF</td></tr><tr><td width="200px"><a href="ODF.calcMIndex.html"><tt>calcMIndex</tt></a></td><td>Computes the Mindex from an odf  in contrast to using a discrete number</td></tr><tr><td width="200px"><a href="ODF.calcModes.html"><tt>calcModes</tt></a></td><td>heuristic to find modal orientations</td></tr><tr><td width="200px"><a href="ODF.calcOrientations.html"><tt>calcOrientations</tt></a></td><td>draw random orientations from ODF</td></tr><tr><td width="200px"><a href="ODF.calcPDF.html"><tt>calcPDF</tt></a></td><td>computed the PDF corresponding to an ODF </td></tr><tr><td width="200px"><a href="ODF.calcPoleFigure.html"><tt>calcPoleFigure</tt></a></td><td>simulate pole figures from an ODF</td></tr><tr><td width="200px"><a href="ODF.calcTensor.html"><tt>calcTensor</tt></a></td><td>compute the average tensor for an ODF</td></tr><tr><td width="200px"><a href="ODF.calcpdf_special3.html"><tt>calcpdf_special3</tt></a></td><td>compute the pdf for h = (theta,rhoh), r = (theta,rhor)</td></tr><tr><td width="200px"><a href="ODF.centerSpecimen.html"><tt>centerSpecimen</tt></a></td><td>rotatates an odf with specimen symmetry into its symmetry axes</td></tr><tr><td width="200px"><a href="ODF.char.html"><tt>char</tt></a></td><td>odf &gt; char</td></tr><tr><td width="200px"><a href="ODF.concentration.html"><tt>concentration</tt></a></td><td>not yet implemeted</td></tr><tr><td width="200px"><a href="ODF.conv.html"><tt>conv</tt></a></td><td>olute ODF with kernel psi</td></tr><tr><td width="200px"><a href="ODF.discreteSample.html"><tt>discreteSample</tt></a></td><td>draw a random sample</td></tr><tr><td width="200px"><a href="ODF.display.html"><tt>display</tt></a></td><td>standard output</td></tr><tr><td width="200px"><a href="ODF.entropy.html"><tt>entropy</tt></a></td><td>caclulate entropy of ODF</td></tr><tr><td width="200px"><a href="ODF.eval.html"><tt>eval</tt></a></td><td>uate an odf at orientation g</td></tr><tr><td width="200px"><a href="ODF.export.html"><tt>export</tt></a></td><td>an ODF to an ASCII file</td></tr><tr><td width="200px"><a href="ODF.export_VPSC.html"><tt>export_VPSC</tt></a></td><td>export an ODF to the VPSC format</td></tr><tr><td width="200px"><a href="ODF.export_generic.html"><tt>export_generic</tt></a></td><td>export an ODF to an ASCII file</td></tr><tr><td width="200px"><a href="ODF.export_mtex.html"><tt>export_mtex</tt></a></td><td>export an ODF into the MTEX format</td></tr><tr><td width="200px"><a href="ODF.fibreVolume.html"><tt>fibreVolume</tt></a></td><td>ratio of orientations with a certain orientation</td></tr><tr><td width="200px"><a href="ODF.grad.html"><tt>grad</tt></a></td><td>ient of odf at orientation ori</td></tr><tr><td width="200px"><a href="ODF.hist.html"><tt>hist</tt></a></td><td>calcualtes a histogram of ODF</td></tr><tr><td width="200px"><a href="ODF.interp.html"><tt>interp</tt></a></td><td>compute an ODF by interpolating orientations and weights</td></tr><tr><td width="200px"><a href="ODF.isFourier.html"><tt>isFourier</tt></a></td><td>check whether odf is given by Fourier coefficients</td></tr><tr><td width="200px"><a href="ODF.load.html"><tt>load</tt></a></td><td>import ebsd data </td></tr><tr><td width="200px"><a href="ODF.max.html"><tt>max</tt></a></td><td>heuristic to find local modal orientations</td></tr><tr><td width="200px"><a href="ODF.mean.html"><tt>mean</tt></a></td><td>expected value of an ODF</td></tr><tr><td width="200px"><a href="ODF.minus.html"><tt>minus</tt></a></td><td>superposeing two ODFs</td></tr><tr><td width="200px"><a href="ODF.mrdivide.html"><tt>mrdivide</tt></a></td><td>scaling of the ODF</td></tr><tr><td width="200px"><a href="ODF.mtimes.html"><tt>mtimes</tt></a></td><td>scaling of the ODF</td></tr><tr><td width="200px"><a href="ODF.neuralgas.html"><tt>neuralgas</tt></a></td><td>attempt to distribute measuresites equally according to invers polefigure density (experimental)</td></tr><tr><td width="200px"><a href="ODF.norm.html"><tt>norm</tt></a></td><td>caclulate texture index of ODF</td></tr><tr><td width="200px"><a href="ODF.plot.html"><tt>plot</tt></a></td><td>s odf or append to a previous plot using 'add2all'</td></tr><tr><td width="200px"><a href="ODF.plot3d.html"><tt>plot3d</tt></a></td><td>plots odf</td></tr><tr><td width="200px"><a href="ODF.plotDiff.html"><tt>plotDiff</tt></a></td><td>difference plot between two odfs or an odf and a pole figure</td></tr><tr><td width="200px"><a href="ODF.plotFibre.html"><tt>plotFibre</tt></a></td><td>plot odf along a fibre</td></tr><tr><td width="200px"><a href="ODF.plotFourier.html"><tt>plotFourier</tt></a></td><td>plots Fourier coefficients of the odf</td></tr><tr><td width="200px"><a href="ODF.plotIPDF.html"><tt>plotIPDF</tt></a></td><td>plot inverse pole figures</td></tr><tr><td width="200px"><a href="ODF.plotPDF.html"><tt>plotPDF</tt></a></td><td>plot pole figures</td></tr><tr><td width="200px"><a href="ODF.plotSection.html"><tt>plotSection</tt></a></td><td>plot ODF sections</td></tr><tr><td width="200px"><a href="ODF.plus.html"><tt>plus</tt></a></td><td>superposeing two ODFs</td></tr><tr><td width="200px"><a href="ODF.quantile.html"><tt>quantile</tt></a></td><td>orientations of an ODF</td></tr><tr><td width="200px"><a href="ODF.rdivide.html"><tt>rdivide</tt></a></td><td>scaling of the ODF</td></tr><tr><td width="200px"><a href="ODF.rotate.html"><tt>rotate</tt></a></td><td>ODF</td></tr><tr><td width="200px"><a href="ODF.rotate_outer.html"><tt>rotate_outer</tt></a></td><td>rotate ODF</td></tr><tr><td width="200px"><a href="ODF.slope.html"><tt>slope</tt></a></td><td>| grad(r) |</td></tr><tr><td width="200px"><a href="ODF.smooth.html"><tt>smooth</tt></a></td><td>ODF</td></tr><tr><td width="200px"><a href="ODF.steepestDescent.html"><tt>steepestDescent</tt></a></td><td>find maximum with steepest descent</td></tr><tr><td width="200px"><a href="ODF.steepestDescentX.html"><tt>steepestDescentX</tt></a></td><td>find maximum with steepest descent</td></tr><tr><td width="200px"><a href="ODF.textureindex.html"><tt>textureindex</tt></a></td><td>caclulate texture index of ODF</td></tr><tr><td width="200px"><a href="ODF.times.html"><tt>times</tt></a></td><td>scaling of the ODF</td></tr><tr><td width="200px"><a href="ODF.uminus.html"><tt>uminus</tt></a></td><td>superposeing two ODFs</td></tr><tr><td width="200px"><a href="ODF.volume.html"><tt>volume</tt></a></td><td>ratio of orientations with a certain orientation</td></tr></table></html>