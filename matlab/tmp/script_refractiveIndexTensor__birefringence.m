%% birefringence
% (method of [[refractiveIndexTensor_index.html,refractiveIndexTensor]])
%% 
% birefringence from refractive index tensor
% 
%
%% View Code
% 
%% Description
% 
% Birefringence is the difference in light speed in anisotropic material.
% When entering an anisotrpic media plane polarised light migrating along
% the propagation direction vprop is split into two orthogonally vibrating
% waves that moves at different speed, the slowest with nmax and the faster
% wave with nmax. The values of nmin and nmax can be calculated from the
% refractive index tensor containg the three pricipal refractive index of
% the mineral, nalpha, nbeta and ngamma and the ligth propagation direction
% (vprop)  with repect to the crystal reference frame. The birefringence
% varies as function of the vprop and for each vprop coressponds to
% nmax-nmin.
% 
%
%% Syntax
% 
%   [n,nMin,nMax] = birefringence(rI,vprop)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>rI</tt>
%          </td>
%          <td>
%                <p>[[refractiveIndexTensor_index.html,refractiveIndexTensor]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>vprop</tt>
%          </td>
%          <td>
%                <p>propagation direction [[vector3d_index.html,vector3d]]</p>
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
%             <tt>nMin</tt>
%          </td>
%          <td>
%                <p>lowest refractive index for a given propagation direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>nMax</tt>
%          </td>
%          <td>
%                <p>highest refractive index for a given propagation direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>difference between nMax and nMin</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pMin</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] polarization direction with the lowest refractive index</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pMax</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] polarization direction with the highest refractive index</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 