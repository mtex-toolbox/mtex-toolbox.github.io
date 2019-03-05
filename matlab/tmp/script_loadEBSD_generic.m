%% loadEBSD_generic
% load ebsd data from generic text files
% 
%
%% View Code
% 
%% Description
% 
% *loadEBSD_generic* loads EBSD data from text or exel files that have a
% column oriented format as
% 
%  x1 y1 phi1_1 Phi_1 phi2_1 phase_1
%  x2 y2 phi1_2 Phi_2 phi2_2 phase_2
%  x2 y3 phi1_3 Phi_3 phi2_3 phase_3
%  .      .       .       .
%  .      .       .       .
%  .      .       .       .
%  xM yM phi1_M Phi_M phi2_M phase_m
% 
% The assoziation of the columns as Euler angles, phase informationl, etc.
% is specified by the options |ColumnNames| and |Columns|. The files can be
% contain any number of header lines.
% 
%
%% Syntax
%   ebsd   = loadEBSD_generic(fname,'ColumnNames',{'x','y','Euler1','Euler2','Euler3','phase'},'cs',cs)
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
%             <tt>cs</tt>
%          </td>
%          <td>
%                <p>[[crystalSymmetry_index.html,crystalSymmetry]] or cell array of [[crystalSymmetry_index.html,crystalSymmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control loadEBSD_generic<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%                      <tt>'Bunge'</tt>
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
%                      <tt>'passive'</tt>
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

fname = fullfile(mtexDataPath,'EBSD','85_829grad_07_09_06.txt');
CS = {'notIndexed',...
crystalSymmetry('m-3m','mineral','Fe'),...
crystalSymmetry('m-3m','mineral','Mg')};
SS = specimenSymmetry('triclinic');
ebsd = loadEBSD_generic(fname,'CS',CS,'SS',SS, 'ColumnNames', ...
{'Index' 'Phase' 'x' 'y' 'Euler1' 'Euler2' 'Euler3' 'MAD' 'BC' 'BS'...
'Bands' 'Error' 'ReliabilityIndex'}, 'Bunge')

%% 
% 

%% See also
% ImportEBSDData loadEBSD ebsd_demo
%