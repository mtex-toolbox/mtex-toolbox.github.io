%% SO3Grid
% (method of <SO3Grid_index.html SO3Grid>)
%% 
% represent orientations in a gridded structure to allow quick access
% 
%
%% View Code
% 
%% Syntax
%   S3G = regularSO3Grid(CS)
%   S3G = regularSO3Grid(CS,SS,'resolution',2.5*degree)     % specify the resolution
%   S3G = regularSO3Grid(CS,SS,'resolution',5*degree,'ZYZ') % use ZYZ convention
%   S3G = regularSO3Grid(CS,SS,'phi2','sections',10) % 10 phi2 sections
%   S3G = regularSO3Grid
%   S3G = equispacedSO3Grid(CS,SS,'points',n)
%   S3G = equispacedSO3Grid(CS,'resolution',res)
% 
%   % fill only a ball with radius of 20 degree
%   S3G = equispacedSO3Grid(CS,'maxAngle',20*degree)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="crystalSymmetry_index.html&#34;">crystalSymmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SS</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="specimenSymmetry_index.html&#34;">specimenSymmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>approximate number of points</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>res</tt>
%          </td>
%          <td>
%                <p>resolution in radiant</p>
%                <p>tut</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>S3G</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="SO3Grid_index.html&#34;">SO3Grid</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control SO3Grid<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'maxAngle'</tt>
%                   </td>
%                   <td>
%                         <p>radius of the ball to be filles</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'center'</tt>
%                   </td>
%                   <td>
%                         <p>center of the ball</p>
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
%          <td>Options that control the SO3Grid behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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