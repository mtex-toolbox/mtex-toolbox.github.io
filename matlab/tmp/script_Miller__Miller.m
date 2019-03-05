%% Miller
% (method of [[Miller_index.html,Miller]])
%% 
% define a crystal direction by Miller indice
% 
%
%% View Code
% 
%% Syntax
%   m = Miller(h,k,l,cs)
%   m = Miller(h,k,l,cs,'hkl')
%   m = Miller(h,k,l,cs,'pole')
%   m = Miller(h,k,i,l,cs)
%   m = Miller('(hkl)',cs)
%   m = Miller(u,v,w,cs,'uvw')
%   m = Miller(u,v,t,w,cs,'uvw')
%   m = Miller(u,v,w,cs,'direction')
%   m = Miller('[uvw]',cs)
%   m = Miller('[uvw]\[uvw],cs)
%   m = Miller('(hkl)\(hkl),cs)
%   m = Miller(x,cs) % transform vector3d to Miller
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>h,k,l,i(optional)</tt>
%          </td>
%          <td>
%                <p>Miller indice of the plane normal</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>uw,v,w,t(optional)</tt>
%          </td>
%          <td>
%                <p>Miller indice of a direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>x</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>cs</tt>
%          </td>
%          <td>
%                <p>crystal [[symmetry_index.html,symmetry]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% vector3d_index symmetry_index
%