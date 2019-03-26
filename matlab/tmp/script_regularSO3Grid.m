%% regularSO3Grid
% regular grid in Euler orientation space
% 
%
%% View Code
% 
%% Syntax
%   S3G = regularSO3Grid(cs)
%   S3G = regularSO3Grid(cs,ss,'resolution',2.5*degree)     % specify the resolution
%   S3G = regularSO3Grid(cs,ss,'resolution',5*degree,'ZYZ') % use ZYZ convention
%   S3G = regularSO3Grid(cs,ss,'phi2','sections',10) % 10 phi2 sections
%   S3G = regularSO3Grid
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>cs</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="crystalSymmetry_index.html&#34;">crystalSymmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ss</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="specimenSymmetry_index.html&#34;">specimenSymmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control regularSO3Grid<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>Euler angle resolution</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'sections'</tt>
%                   </td>
%                   <td>
%                         <p>number of sections</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param</tt>
%          </td>
%          <td>Options that control the regularSO3Grid behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'phi1', 'Phi', 'phi2'</tt>
%                   </td>
%                   <td>
%                         <p>sections along which variable</p>
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
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%"/>
% </html>
% 