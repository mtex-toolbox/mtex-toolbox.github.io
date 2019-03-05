%% plotEllipse
% plot multiple ellipses
% 
%
%% View Code
% 
%% Syntax
% 
%   [omega,a,b] = principalComponents(grains);
%   plotEllipse(grains.centroid,a,b,omega,'lineColor','r')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>cxy</tt>
%          </td>
%          <td>
%                <p>center of the ellipse</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>a,b</tt>
%          </td>
%          <td>
%                <p>length of the half axes</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>orientation of the ellipse</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control plotEllipse<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'lineColor'</tt>
%                   </td>
%                   <td>
%                         <p>colorspec</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% grain2d/plot grainBoundary/plot grain2d/principalComponents
% 
%