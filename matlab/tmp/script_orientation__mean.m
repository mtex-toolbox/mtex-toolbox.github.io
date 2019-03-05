%% mean
% (method of [[orientation_index.html,orientation]])
%% 
% mean of a list of orientations, principle axes and moments of inertia
% 
%
%% View Code
% 
%% Syntax
%   [m, q, lambda, V] = mean(ori)
%   [m, q, lambda, V] = mean(ori,'robust')
%   [m, q, lambda, V] = mean(ori,'weights',weights)
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
%                <p>list of [[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control mean<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'weights'</tt>
%                   </td>
%                   <td>
%                         <p>list of weights</p>
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
%             <tt>m</tt>
%          </td>
%          <td>
%                <p>mean [[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>lambda</tt>
%          </td>
%          <td>
%                <p>principle moments of inertia</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>V</tt>
%          </td>
%          <td>
%                <p>principle axes of inertia ([[orientation_index.html,orientation]])</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>crystallographic equivalent [[quaternion_index.html,quaternion]] projected to fundamental region</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% BinghamODF
%