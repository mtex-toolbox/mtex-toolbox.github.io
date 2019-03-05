%% inpolygon
% (method of [[EBSD_index.html,EBSD]])
%% 
% checks which ebsd data are within given polygon
% 
%
%% View Code
% 
%% Syntax
%   ind = inpolygon(ebsd,[xmin,ymin,dx,dy]) % select indices by rectangle
%   ind = inpolygon(ebsd,[x1 y1; x2 y2; x3 y3; x4 y4]) % select indices by poylgon
%   ebsd = ebsd(ind) % select EBSD data by indices
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>[[EBSD_index.html,EBSD]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>xmin, xmax</tt>
%          </td>
%          <td>
%                <p>lower left corner of a rectangle</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>dx, dy</tt>
%          </td>
%          <td>
%                <p>extend of a rectangle</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>x, y</tt>
%          </td>
%          <td>
%                <p>vertices of a polygon</p>
%                <p>ut</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ind</tt>
%          </td>
%          <td>
%                <p>logical</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% inpolygon
%