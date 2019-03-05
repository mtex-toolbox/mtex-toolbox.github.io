%% calcPDF
% (method of [[ODF_index.html,ODF]])
%% 
% calcPDF computed the PDF corresponding to an ODF
% 
%
%% View Code
% 
%% Syntax
%   pdf = calcPDF(odf,h)
%   pdf = calcPDF(odf,h,'superposition',c)
%   value = calcPDF(odf,h,r)
%   ipdf = calcPDF(odf,[],r)
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
%                <p>[[Miller_index.html,Miller]] / [[vector3d_index.html,vector3d]] crystal directions</p>
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
%          <td>Parameters and values that control calcPDF<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'superposition'</tt>
%                   </td>
%                   <td>
%                         <p>calculate superposed pdf</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the calcPDF behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%             <tt>pdf</tt>
%          </td>
%          <td>
%                <p>pole density function [[S2FunHarmonicSym_index.html,S2FunHarmonicSym]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ipdf</tt>
%          </td>
%          <td>
%                <p>inverse pole density function [[S2FunHarmonicSym_index.html,S2FunHarmonicSym]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>value</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/plotPDF ODF/plotIPDF ODF/calcPoleFigure
%