%% fundamentalSector
% (method of [[symmetry_index.html,symmetry]])
%% 
% get the fundamental sector for a symmetry in the inverse pole figure
% 
%
%% View Code
% 
%% Syntax
%   sR = fundamentalSector(cs)
% 
%   % undamental sector for a specific misorientation angle
%   sR = fundamentalSector(cs,omega)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>cs</tt>
%          </td>
%          <td>
%                <p>[[symmetry_index.html,symmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>misorientation angle</p>
%                <p>ut</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>sR</tt>
%          </td>
%          <td>
%                <p>[[sphericalRegion_index.html,sphericalRegion]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control fundamentalSector<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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