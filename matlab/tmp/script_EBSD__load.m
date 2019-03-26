%% load
% (method of <EBSD_index.html EBSD>)
%% 
% load ebsd data from file
% 
%
%% View Code
% 
%% Description
% 
% EBSD.load is a high level method for importing EBSD data from files. If
% possible it autodetects the format of the file. Supported formats are
% listed <supportedInterfaces.html here>. Additionally, EBSD data can be
% read from column aligned text file or excel spread sheets. In those cases
% it is neccesary to tell MTEX the column positions of the spatial
% coordinates, the phase information as well as Euler angles.
% 
%
%% Syntax
%   ebsd = EBSD.load('filename.ang')
%   ebsd = EBSD.load('filename.ctf')
%   ebsd = EBSD.load('filename.osc')
%   ebsd = EBSD.load('filename.hf5')
% 
%   csList = {'notIndexed',...
%   CS = {'notIndexed',...
%          crystalSymmetry('m-3m','mineral','Fe'),...
%          crystalSymmetry('m-3m','mineral','Mg')};
%   ebsd = EBSD.load(fname,'cs',cs,'ColumnNames',{'x','y','Euler1','Euler2','Euler3','phase'})
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
%             <tt>cs</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="crystalSymmetry_index.html&#34;">crystalSymmetry</a> or cell array of <a href="crystalSymmetry_index.html&#34;">crystalSymmetry</a>
%                </p>
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
%                      <tt>'passive'</tt>
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
%                <p>
%                   <a href="EBSD_index.html&#34;">EBSD</a>
%                </p>
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
ebsd = EBSD.load(fname,'CS',CS,'SS',SS, 'ColumnNames', ...
{'Index' 'Phase' 'x' 'y' 'Euler1' 'Euler2' 'Euler3' 'MAD' 'BC' 'BS'...
'Bands' 'Error' 'ReliabilityIndex'}, 'Bunge')

%% 
% 

%% See also
% ImportEBSDData ebsd_demo EBSD_index
%