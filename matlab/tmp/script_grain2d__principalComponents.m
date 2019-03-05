%% principalComponents
% (method of [[grain2d_index.html,grain2d]])
%% 
% returns the principalcomponents of grain polygon, without Holes
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[omega,a,b]= principalComponents(grains,'param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 
%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>grains</tt>
%          </td>
%          <td>
%                <p>[[grain2d_index.html,grain2d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control principalComponents<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'area'</tt>
%                   </td>
%                   <td>
%                         <p>scale a,b such that the corresponding ellipse has the same area as the grain (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'boundary'</tt>
%                   </td>
%                   <td>
%                         <p>scale a,b such that the corresponding ellipse has the boundary length as the grain</p>
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
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>angle of the ellipse</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>a</tt>
%          </td>
%          <td>
%                <p>length largest axis</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>b</tt>
%          </td>
%          <td>
%                <p>length smallest axis</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% plotEllipse
% 
%