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
%                <p>orientation distribution function, <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>crystal direction, <a href="Miller_index.html&#34;">Miller</a> (default is [0001])</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pdf</tt>
%          </td>
%          <td>
%                <p>pole density function, <a href="S2Fun_index.html&#34;">S2Fun</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>N</tt>
%          </td>
%          <td>
%                <p>normal direction <a href="vector3d_index.html&#34;">vector3d</a>, (default is Z)</p>
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