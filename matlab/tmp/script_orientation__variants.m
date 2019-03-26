%% variants
% (method of <orientation_index.html orientation>)
%% 
% variants of an orientation relationship
% 
%
%% View Code
% 
%% Syntax
% 
%   ori_variants = ori_parent * mori.variants
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
%             <tt>ori_parent</tt>
%          </td>
%          <td>
%                <p>parent <a href="orientation_index.html&#34;">orientation</a>
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
%             <tt>ori_variants</tt>
%          </td>
%          <td>
%                <p>all possible child <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example

% parent symmetry
cs_fcc = crystalSymmetry('432', [3.6599 3.6599 3.6599], 'mineral', 'Iron fcc');

%% 
% 

% child symmetry
cs_bcc = crystalSymmetry('432', [2.866 2.866 2.866], 'mineral', 'Iron bcc')

%% 
% 

% define a fcc parent orientation
ori_fcc = orientation.brass(cs_fcc)

%% 
% 

% define Nishiyama Wassermann fcc to bcc orientation relation ship
NW = orientation.NishiyamaWassermann(cs_fcc,cs_bcc)

%% 
% 

% compute a bcc child orientation related to the fcc orientation
ori_bcc = ori_fcc * inv(NW)

%% 
% 

% compute all symmetrically possible child orientations
ori_bcc = unique(ori_fcc.symmetrise * inv(NW))

%% 
% 

% same using the function variants
ori_bcc2 = ori_fcc * inv(NW.variants)

%% 
% 

% we may also compute all possible child to child misorientations
bcc2bcc = unique(NW.variants * inv(NW))

%% 
% 

%% See also
% orientation/parents
%