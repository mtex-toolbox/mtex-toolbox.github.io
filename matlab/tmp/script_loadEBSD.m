%% loadEBSD
% import ebsd data
% 
%
%% View Code
% 
%% Description
% *loadEBSD* is a high level method for importing EBSD data from external
% files. It autodetects the format of the file. As parameters the method
% requires a filename and the crystal and specimen [[symmetry_index.html,symmetry]]. Furthermore,
% you can specify a comment to be associated with the data. In the case of
% generic ascii files each of which consist of a table containing in each
% row the euler angles of a certain orientation see
% <loadEBSD_generic.html loadEBSD_generic> for additional options.
% 
%
%% Syntax
%   ebsd = loadEBSD(fname)
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
%          <td>Parameters and values that control loadEBSD<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>[[EBSD_index.html,EBSD]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ImportEBSDData EBSD/calcODF ebsd_demo loadEBSD_generic
%