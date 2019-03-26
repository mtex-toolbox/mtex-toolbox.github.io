%% fundamentalRegion
% get the fundamental zone in orientation space for a symmetry
% 
%
%% View Code
% 
%% Syntax
%   oR = fundamentalRegion(cs)
%   oR = fundamentalRegion(cs1,cs2)
%   [oR,dcs,nSym] = fundamentalRegion(ori)
%   [oR,dcs,nSym] = fundamentalRegion(odf)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>cs,cs1,cs2</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="symmetry_index.html&#34;">symmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%                <p>ut</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>oR</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="orientationRegion_index.html&#34;">orientationRegion</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dcs</tt>
%          </td>
%          <td>
%                <p>common symmetries in cs1 and cs2</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>nSym</tt>
%          </td>
%          <td>
%                <p>number of zones</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control fundamentalRegion<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'invSymmetry'</tt>
%                   </td>
%                   <td>
%                         <p>wheter mori == inv(mori)</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 