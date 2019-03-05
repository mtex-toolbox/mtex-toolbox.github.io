%% loadODF_generic
% load pole figure data from (alpha,beta,gamma) files
% 
%
%% View Code
% 
%% Description
% 
% *loadEBSD_txt* loads an ODF from any txt or exel files are of the following format
% 
%  alpha_1 beta_1 gamma_1 weight_1
%  alpha_2 beta_2 gamma_2 weight_2
%  alpha_3 beta_3 gamma_3 weight_3
%  .      .       .       .
%  .      .       .       .
%  .      .       .       .
%  alpha_M beta_M gamma_M weight_m
% 
% The assoziation of the columns as Euler angles, phase informationl, etc.
% is specified by the options |ColumnNames| and |Columns|. The file can
% contain any number of header lines.
% 
%
%% Syntax
%   cs = crystalSymmetry('432')
%   odf   = loadODF_generic(fname,'cs',cs,'ColumnNames',{'Euler 1' 'Euler 2' 'Euler 3' 'weight'})
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
%          <td>Parameters and values that control loadODF_generic<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ColumnNames'</tt>
%                   </td>
%                   <td>
%                         <p>names of the colums to be imported, mandatory are euler 1, euler 2, euler 3</p>
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
%                      <tt>'header'</tt>
%                   </td>
%                   <td>
%                         <p>number of header lines</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ZXZ, BUNGE'</tt>
%                   </td>
%                   <td>
%                         <p>[phi1 Phi phi2] Euler angle in Bunge convention (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ZYZ, ABG'</tt>
%                   </td>
%                   <td>
%                         <p>[alpha beta gamma] Euler angle in Mathies convention</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the loadODF_generic behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'interp'</tt>
%                   </td>
%                   <td>
%                         <p>determine the ODF by interpolation the weights</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'density'</tt>
%                   </td>
%                   <td>
%                         <p>determine the ODF as the density of the orientations</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

fname = fullfile(mtexDataPath,'ODF','odf.txt');
odf = loadODF_generic(fname,'cs',crystalSymmetry('cubic'),'header',5,...
'ColumnNames',{'Euler 1' 'Euler 2' 'Euler 3' 'weight'},...
'Columns',[1,2,3,4])

%% 
% 

%% See also
% import_wizard loadODF ODF_demo
%