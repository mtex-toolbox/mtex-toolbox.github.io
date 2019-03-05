%% export
% (method of [[quaternion_index.html,quaternion]])
%% 
% export quaternions to a ascii file
% 
%
%% View Code
% 
%% Syntax
% 
%   fname = 'fileName.txt'
%   export(ori,fname)
%   export(ori,fname,'radians','Bunge')
% 
%   fit ellipses to grains and store halfaxes and orientation in a struct
%   [S.angle,S.a,S.b] = fitEllipse(grains);
% 
%   % store area
%   S.area = grains.area;
% 
%   % export orientation and custom data
%   export(grains.meanOrientation,S)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>[[quaternion_index.html,quaternion]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>fname</tt>
%          </td>
%          <td>
%                <p>filename</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>S</tt>
%          </td>
%          <td>
%                <p>struct</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control export<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'quaternion'</tt>
%                   </td>
%                   <td>
%                         <p>export quaternion values</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Bunge'</tt>
%                   </td>
%                   <td>
%                         <p>export Bunge Euler angles (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Matthies'</tt>
%                   </td>
%                   <td>
%                         <p>export Matthies Euler angles (alpha beta gamma)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'degree'</tt>
%                   </td>
%                   <td>
%                         <p>output in degree (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'radians'</tt>
%                   </td>
%                   <td>
%                         <p>output in radians</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 