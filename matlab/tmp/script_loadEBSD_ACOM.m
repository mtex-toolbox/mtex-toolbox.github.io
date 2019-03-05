%% loadEBSD_ACOM
% read ACOM files (converted from *.res ASTAR)
% 
%
%% View Code
% 
%% Syntax
%   ebsd = loadEBSD_ACOM(fname)
%   ebsd = loadEBSD_ACOM(fname,'convertSpatial2EulerReferenceFrame')
%   ebsd = loadEBSD_ACOM(fname,'convertEuler2SpatialReferenceFrame')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>fname</tt>
%          </td>
%          <td>
%                <p>file name</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the loadEBSD_ACOM behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'convertSpatial2EulerReferenceFrame'</tt>
%                   </td>
%                   <td>
%                         <p>change x and y values such that atial and Euler reference frame coincide, i.e., rotate them by 180 gree</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'convertEuler2SpatialReferenceFrame'</tt>
%                   </td>
%                   <td>
%                         <p>change the Euler angles such that atial and Euler reference frame coincide, i.e., rotate them by 180 gree</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 