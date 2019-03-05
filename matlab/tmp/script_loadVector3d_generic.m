%% loadVector3d_generic
% load pole figure data from (alpha,beta,gamma) files
% 
%
%% View Code
% 
%% Description
% 
% *loadVector3d_generic* is a  function that reads any txt or exel files
% The assoziation of the columns as cartesian coordinates or polar angles
% is specified by the options |ColumnNames| and |Columns|. The files can be
% contain any number of header lines.
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>v   = loadVector3d_generic(fname,'ColumnNames',{'x','y','z'})
%   v   = loadVector3d_generic(fname,'ColumnNames',{'latitude','longitude'})
%   v   = loadVector3d_generic(fname,'ColumnNames',{'polar angle','azimuth'})</tt>
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
%                <p>file name (text files only)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control loadVector3d_generic<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ColumnNames'</tt>
%                   </td>
%                   <td>
%                         <p>names of the colums to be imported</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'Columns'</tt>
%                   </td>
%                   <td>
%                         <p>postions of the columns to be imported</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'RADIANS'</tt>
%                   </td>
%                   <td>
%                         <p>treat input in radiand</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'DELIMITER'</tt>
%                   </td>
%                   <td>
%                         <p>delimiter between numbers</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% 
% azimuth, longitude - angle in the xy plane
% polar angle, colatitude
% latitude
% 
%