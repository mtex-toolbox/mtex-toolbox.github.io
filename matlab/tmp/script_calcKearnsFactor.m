%% calcKearnsFactor
%
%% View Code
% 
%% Syntax
% 
%   k = calcKearnsFactor(odf,N,h)
%   k = calcKearnsFactor(pdf,N)
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
%                <p>orientation distribution function, [[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>crystal direction, [[Miller_index.html,Miller]] (default is [0001])</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pdf</tt>
%          </td>
%          <td>
%                <p>pole density function, [[S2Fun_index.html,S2Fun]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>N</tt>
%          </td>
%          <td>
%                <p>normal direction [[vector3d_index.html,vector3d]], (default is Z)</p>
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
%             <tt>k</tt>
%          </td>
%          <td>
%                <p>Kearns texture factors</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 