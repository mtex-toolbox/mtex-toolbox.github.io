%% calliper
% (method of <grain2d_index.html grain2d>)
%% 
% Calliper (Feret diameter) of a grain in measurement units, the projection
% length normal to it and its direction/trend.
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[cd, pcd, omega] = calliper(grains,'param1',val1,'param2',val2)</tt>
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
%                <p>
%                   <a href="grain2d_index.html&#34;">grain2d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calliper<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'shortest'</tt>
%                   </td>
%                   <td>
%                         <p>instead of maximum calliper, derive minimum (cd),          length normal to minimum  (pcd) and trend of minimum calliper          (omega)</p>
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
%             <tt>cd</tt>
%          </td>
%          <td>
%                <p>calliper (default = maximum calliper = grain2d/diameter)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pcd</tt>
%          </td>
%          <td>
%                <p>projection length length normal to cd</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>angle giving direction/trend of cd</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 