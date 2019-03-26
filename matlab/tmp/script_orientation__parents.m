%% parents
% (method of <orientation_index.html orientation>)
%% 
% variants of an orientation relationship
% 
%
%% View Code
% 
%% Syntax
% 
%   ori_parents = ori_child * inv(mori.parents)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>mori</tt>
%          </td>
%          <td>
%                <p>child to parent <a href="orientation_index.html&#34;">orientation</a> relationship</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ori_child</tt>
%          </td>
%          <td>
%                <p>child orientation</p>
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
%             <tt>ori_parents</tt>
%          </td>
%          <td>
%                <p>all possible parent <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example

% parent symmetry
cs_fcc = crystalSymmetry('m-3m', [3.6599 3.6599 3.6599], 'mineral', 'Iron fcc');

%% 
% 

% child symmetry
cs_bcc = crystalSymmetry('m-3m', [2.866 2.866 2.866], 'mineral', 'Iron bcc')

%% 
% 

% define a bcc child orientation
ori_bcc = orientation.goss(cs_bcc)

%% 
% 

% define Nishiyama Wassermann fcc to bcc orientation relation ship
NW = orientation.NishiyamaWassermann (cs_fcc,cs_bcc)

%% 
% 

% compute a fcc parent orientation related to the bcc child orientation
ori_fcc = ori_bcc * NW

%% 
% 

% compute all symmetrically possible parent orientations
ori_fcc = unique(ori_bcc.symmetrise * NW)

%% 
% 

% same using the function parents
ori_fcc2 = ori_bcc * NW.parents

%% 
% 

%% See also
% orientation/variants
% 
%