%% rotate
% (method of [[triplePointList_index.html,triplePointList]])
%% 
% rotate triple points
% 
%
%% View Code
% 
%% Syntax
% 
%   % rotate the tP about the z-axis by 90*degree
%   tP = rotate(tP,10*degree)
% 
%   % rotate about the x-axis
%   tP = rotate(tP,rotation.byAxisAngle(xvector,180*degree))
% 
%   % rotate about a specific point
%   tP = rotate(tP,180*degree,'center',[0,0])
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>tP</tt>
%          </td>
%          <td>
%                <p>[[triplePointList_index.html,triplePointList]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>angle</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>rot</tt>
%          </td>
%          <td>
%                <p>[[rotation_index.html,rotation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control rotate<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'center'</tt>
%                   </td>
%                   <td>
%                         <p>[x,y] center of rotation, default is (0,0)</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the rotate behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'keepXY'</tt>
%                   </td>
%                   <td>
%                         <p>rotate only the orientation data, i.e. the Euler angles</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'keepEuler'</tt>
%                   </td>
%                   <td>
%                         <p>rotate only the spatial data, i.e., the x,y, and z values</p>
%                   </td>
%                </tr>
%             </table>
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
%             <tt>tP</tt>
%          </td>
%          <td>
%                <p>[[triplePointList_index.html,triplePointList]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 