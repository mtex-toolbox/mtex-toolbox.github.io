%% loadOrientation_generic
% load Orientation data from generic text files
% 
%
%% View Code
% 
%% Description
% 
% loadOrientation_generic loads individual orientations
% from text or exel files that have a column oriented format as
% 
%  phi1_1 Phi_1 phi2_1
%  phi1_2 Phi_2 phi2_2
%  phi1_3 Phi_3 phi2_3
%  .      .       .       .
%  .      .       .       .
%  .      .       .       .
%  phi1_M Phi_M phi2_M
% 
% The assoziation of the columns as Euler angles, phase informationl, etc.
% is specified by the options |ColumnNames| and |Columns|. The files can be
% contain any number of header lines.
% 
%
%% Syntax
%   ori   = loadOrientation_generic(fname,'ColumnNames',{'Euler1','Euler2','Euler3'})
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
%          <td>Parameters and values that control loadOrientation_generic<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%                <tr>
%                   <td width="150px">
%                      <tt>'HEADER'</tt>
%                   </td>
%                   <td>
%                         <p>number of header lines</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'BUNGE'</tt>
%                   </td>
%                   <td>
%                         <p>[phi1 Phi phi2] Euler angle in Bunge convention (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ABG'</tt>
%                   </td>
%                   <td>
%                         <p>[alpha beta gamma] Euler angle in Mathies convention</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'PASSIVE'</tt>
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
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>S</tt>
%          </td>
%          <td>
%                <p>struct with fields for the additional columns</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

fname = fullfile(mtexDataPath,'EBSD','85_829grad_07_09_06.txt');
CS = crystalSymmetry('m-3m','mineral','Mg');
SS = specimenSymmetry('triclinic');

%% 
% 

ori = loadOrientation_generic(fname,'CS',CS,'SS',SS, 'ColumnNames', ...
{'Euler1' 'Euler2' 'Euler3'},'Columns',[5,6,7],'Bunge')

%% 
% 

%% See also
% loadOrientation
%