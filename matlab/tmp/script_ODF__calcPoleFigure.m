%% calcPoleFigure
% (method of [[ODF_index.html,ODF]])
%% 
% simulate pole figures from an ODF
% 
% *calcPoleFigure* allows to simulate diffraction counts given an ODF.
% It supports superposed pole figures and irregular sampling grids.
% 
%
%% View Code
% 
%% Syntax
%   pf = calcPolefigure(odf,h,r)
%   pf = calcPolefigure(odf,h,'resolution',5*degree)
%   pf = calcPoleFigure(odf,h,'resolution',5*degree,'complete')
%   pf = calcPoleFigure(odf,{h1,h2,h3},{r1,r2,r3})
%   pf = calcPoleFigure(odf,{h1,{h2,h3]},'superposition',{[1,[0.2 0.8]]})
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
%                <p>[[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>[[Miller_index.html,Miller]] / [[vector3d_index.html,vector3d]] crystallographic directions</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] specimen directions</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcPoleFigure<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'antipodal'</tt>
%                   </td>
%                   <td>
%                         <p>include [[AxialDirectional.html,antipodal symmetry]]</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'complete'</tt>
%                   </td>
%                   <td>
%                         <p>do not include [[AxialDirectional.html,antipodal symmetry]]</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'superposition'</tt>
%                   </td>
%                   <td>
%                         <p>[double] superposition weights</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% PoleFigure/scale PoleFigure/calcPoleFigure PoleFigure/noisepf
%