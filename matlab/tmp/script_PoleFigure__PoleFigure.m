%% PoleFigure
% (method of [[PoleFigure_index.html,PoleFigure]])
%% 
% constructor
% 
% *PoleFigure* is the low level constructor. For importing real world data
% you might want to use the predefined [[ImportPoleFigureData.html,interfaces]]
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>pf = PoleFigure(h,r,intensities,'param1',val1,'param2',val2)</tt>
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
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>crystal directions ([[vector3d_index.html,vector3d]] | [[Miller_index.html,Miller]])</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>specimen directions ([[S2Grid_index.html,S2Grid]])</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>intensities</tt>
%          </td>
%          <td>
%                <p>diffraction counts (double)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS,SS</tt>
%          </td>
%          <td>
%                <p>crystal, specimen [[symmetry_index.html,symmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control PoleFigure<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'superposition'</tt>
%                   </td>
%                   <td>
%                         <p>weights for superposed crystal directions</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'background'</tt>
%                   </td>
%                   <td>
%                         <p>background intensities</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ImportPoleFigureData loadPoleFigure loadPoleFigure_generic
%