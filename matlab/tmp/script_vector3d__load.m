%% load
% (method of [[vector3d_index.html,vector3d]])
%% 
% import directions
% 
%
%% View Code
% 
%% Description
% 
% vector3d.load is a high level method for importing vector data from
% external files. It autodetects the format of the file. As parameters the
% method requires a filename and the column positions of either the x, y, z
% coordinates or the polar angles
% 
%
%% Syntax
%   v = vector3d.load(fname,'ColumnNames',{'x','y','z'})
%   v = vector3d.load(fname,'ColumnNames',{'latitude','longitude'})
%   v = vector3d.load(fname,'ColumnNames',{'polar angle','azimuth'},'columns',[2,3])
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
%                <p>file name (text files only)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control load<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'columnNames'</tt>
%                   </td>
%                   <td>
%                         <p>names of the colums to be imported</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'columns'</tt>
%                   </td>
%                   <td>
%                         <p>postions of the columns to be imported</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'radians'</tt>
%                   </td>
%                   <td>
%                         <p>treat input in radiand</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'delimiter'</tt>
%                   </td>
%                   <td>
%                         <p>delimiter between numbers</p>
%                   </td>
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
% 
%