%% round2Miller
% (method of [[orientation_index.html,orientation]])
%% 
% find lattice alignements for arbitrary orientations and misorientations
% 
%
%% View Code
% 
%% Description
% 
% Given an orienation ori find [hkl](uvw) such that ori * [hkl] = Z and ori
% * (uvw) = X.
% 
% Given a misorientation mori find corresponding face normals n1, n2 and
% crystal directions d1, d2, i.e., such that mori * n1 = n2 and mori * d1 =
% d2.
% 
%
%% Syntax
% 
%   [uvw,hkl] = round2Miller(ori)
% 
%   [n1,n2,d1,d2] = round2Miller(mori)
%   [n1,n2,d1,d2] = round2Miller(mori,'penalty',0.01)
%   [n1,n2,d1,d2] = round2Miller(mori,'maxIndex',6)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>mori</tt>
%          </td>
%          <td>
%                <p>mis[[orientation_index.html,orientation]]</p>
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
%             <tt>uvw,hkl</tt>
%          </td>
%          <td>
%                <p>[[Miller_index.html,Miller]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n1,n2,d1,d2</tt>
%          </td>
%          <td>
%                <p>[[Miller_index.html,Miller]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example

% revert sigma3 misorientation relationship
[n1,n2,d1,d2] = round2Miller(CSL(3,crystalSymmetry('432')))

%% 
% 

% revert back Bain misorientation ship
cs_alpha = crystalSymmetry('m-3m', [2.866 2.866 2.866], 'mineral', 'Ferrite');
cs_gamma = crystalSymmetry('m-3m', [3.66 3.66 3.66], 'mineral', 'Austenite');
mori = orientation.Bain(cs_alpha,cs_gamma)
[n_gamma,n_alpha,d_gamma,d_alpha] = round2Miller(mori)

%% 
% 

%% See also
% CSL
%