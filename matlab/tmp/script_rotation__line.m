%% line
% (method of <rotation_index.html rotation>)
%% 
% draw rotations connected by lines
% 
%
%% View Code
% 
%% Syntax
%   line(rot,'linecolor','r','linewith',2)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>rot</tt>
%          </td>
%          <td>
%                <p>list of <a href="rotation_index.html&#34;">rotation</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example

cs1 = crystalSymmetry('321')
cs2 = crystalSymmetry('432')
oR = fundamentalRegion(cs1,cs2)
plot(oR)

%% 
% 

% connect to vertices of the fundamental region
f = fibre(oR.V(1),oR.V(2))

%% 
% 

% determine some orientations along the fibre
o = f.orientation

%% 
% 

% plot the line
hold on
line(o,'color','r','linewidth',2)
hold off

%% 
% 

%% See also
% 
%