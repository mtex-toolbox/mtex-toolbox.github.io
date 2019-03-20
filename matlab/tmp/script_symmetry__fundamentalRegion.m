%% fundamentalRegion
% (method of [[symmetry_index.html,symmetry]])
%% 
% fundamental region in orientation space for a (pair) of symmetries
% 
%
%% View Code
% 
%% Syntax
%   oR = fundamentalRegion(cs)
%   oR = fundamentalRegion(cs1,cs2)
%   [oR,dcs,nSym] = fundamentalRegion(cs1,cs2)
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
%                <p>[[symmetry_index.html,symmetry]]</p>
%                <p>ut</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>sR</tt>
%          </td>
%          <td>
%                <p>[[orientationRegion_index.html,orientationRegion]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dc</tt>
%          </td>
%          <td>
%                <p>[[symmetry_index.html,symmetry]] intersection between cs1 and cs2</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>nSym</tt>
%          </td>
%          <td>
%                <p>number of disjoined symmetry elements in cs2 * cs1</p>
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
%                      <tt>'antipodal'</tt>
%                   </td>
%                   <td>
%                         <p>grain exchange symmetry, i.e.,  mori == inv(mori)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'LaueGroup'</tt>
%                   </td>
%                   <td>
%                         <p>consider only Laue groups (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'pointGroup'</tt>
%                   </td>
%                   <td>
%                         <p>consider point groups</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 