%% equispacedSO3Grid
% defines a equispaced grid in the orientation space
% 
%
%% View Code
% 
%% Syntax
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
%                <p>[[crystalSymmetry_index.html,crystalSymmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SS</tt>
%          </td>
%          <td>
%                <p>[[specimenSymmetry_index.html,specimenSymmetry]]</p>
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
%                <p>[[SO3Grid_index.html,SO3Grid]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control equispacedSO3Grid<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
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
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% equispacedS2Grid, SO3Grid_index
%