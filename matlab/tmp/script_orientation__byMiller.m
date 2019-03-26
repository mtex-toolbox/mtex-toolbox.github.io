%% byMiller
% (method of <orientation_index.html orientation>)
%% 
% define orientations by Miller Bravais indeces
% 
%
%% View Code
% 
%% Description
% Defines an <orientation_index.html,orientation> |ori|
% by Miller indece (hkl) and [uvw] such that |ori * (hkl) = 001| and
% |ori * [uvw] = 100|
% 
%
%% Syntax
% 
%   hkl = Miller(h,k,l,CS,'hkl')
%   uvw =  Miller(u,v,w,CS,'uvw')
%   ori = orientation.byMiller(hkl,uvw)
% 
%   ori = orientation.byMiller([h k l],[u v w],CS)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>hkl, uvw</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="Miller_index.html&#34;">Miller</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h,k,l</tt>
%          </td>
%          <td>
%                <p>Miller indece (double)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>u,v,w</tt>
%          </td>
%          <td>
%                <p>Miller indece (double)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="crystalSymmetry_index.html&#34;">crystalSymmetry</a>
%                </p>
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
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation_index orientation/byEuler orientation/byAxisAngle
%