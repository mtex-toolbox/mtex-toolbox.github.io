%% loadVector3d
% import ebsd data
% 
%
%% View Code
% 
%% Description
% loadVector3d is a high level method for importing vector data from external
% files. It autodetects the format of the file. As parameters the method
% requires a filename. In the case of
% generic ascii files each of which consist of a table containing in each
% row the euler angles of a certain orientation see
% <loadVector3d_generic.html loadVector3d_generic> for additional options.
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>v = loadVector3d(fname)</tt>
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
%             <tt>fname</tt>
%          </td>
%          <td>
%                <p>filename</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control loadVector3d<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'interface'</tt>
%                   </td>
%                   <td>
%                         <p>specific interface to be used</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'comment'</tt>
%                   </td>
%                   <td>
%                         <p>comment to be associated with the data</p>
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
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% loadVector3d_generic
%