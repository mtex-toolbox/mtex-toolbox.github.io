%% centerSpecimen
% (method of <ODF_index.html ODF>)
%% 
% rotatates an odf with specimen symmetry into its symmetry axes
% 
% centerSpecimen(odf,center) trys to find the normal vectors of orthorhombic
% symmetry for the x mirror and y mirror plane and calculates an rotation needed
% to rotate the odf back into these mirror planes.
% the routine starts with an lookaround grid for a given center (default
% xvector) to find a starting value for newton iteration.
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[odf,rot,v1,v2] = centerSpecimen(odf,v0,'param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 
%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v0</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a> initial gues for a symmetry axis (default xvector)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control centerSpecimen<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'SO3Grid'</tt>
%                   </td>
%                   <td>
%                         <p>a <a href="SO3Grid_index.html&#34;">SO3Grid</a> the <a href="ODF_index.html&#34;">ODF</a> is evaluatete on</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'delta'</tt>
%                   </td>
%                   <td>
%                         <p>specifies the opening angle for the initial search grid around input center</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>specifies the resolution for the initial search grid</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'silent'</tt>
%                   </td>
%                   <td>
%                         <p>dont verbose number of initial axes and the newton iteration</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'fourier'</tt>
%                   </td>
%                   <td>
%                         <p>use fourier coefficents as objective function</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Output
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>rotated <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rot</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="rotation_index.html&#34;">rotation</a> such that rotate(odf_out,r) = odf_in</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v1,v2</tt>
%          </td>
%          <td>
%                <p>normal vector of the two fold symmetry axes</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

%Starting with an synthetic odf with orthorhombic symmetry
CS = crystalSymmetry('cubic')
SS = specimenSymmetry('orthorhombic')
ori = [orientation.byEuler(135*degree,45*degree,120*degree,CS,SS) ...
orientation.byEuler( 60*degree, 54.73*degree, 45*degree,CS,SS) ...
orientation.byEuler(70*degree,90*degree,45*degree,CS,SS)...
orientation.byEuler(0*degree,0*degree,0*degree,CS,SS)];

%% 
% 

odf = unimodalODF(SS*ori);

%% 
% 

%we define a rotational displacement
r2 = rotation.byEuler( 6*degree,4*degree,0*degree)
odf = rotate(odf,r2);
h = [Miller(0,0,1,CS),Miller(0,1,1,CS),Miller(1,1,1,CS)];
plotPDF(odf,h,'antipodal','complete');

%% 
% 

%and now retrive the rotation back
[odr,r,v1,v2] = centerSpecimen(odf);
plotPDF(odr,h,'antipodal')

%% 
% 
