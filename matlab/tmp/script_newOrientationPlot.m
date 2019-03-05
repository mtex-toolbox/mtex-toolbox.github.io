%% newOrientationPlot
% prepare a 3d orientation plot
% 
%
%% View Code
% 
%% Description
% Checks whether a compatible 3d orientation plot already exist - then plot
% into this one - otherwise create a new one.
% 
%
%% Syntax
% 
%   oP = newOrientationPlot(CS1,CS2)
%   oP = newOrientationPlot(CS,SS,'Bunge')
%   oP = newOrientationPlot(CS1,CS2,'axisAngle')
%   oP = newOrientationPlot(CS1,CS2,'Rodrigues','antipodal')
%   oP = newOrientationPlot(CS1,CS2,'ignoreFundamentalRegion')
%   oP = newOrientationPlot(CS1,CS2,'noBoundary')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>CS, CS1, CS2</tt>
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
%             <tt>param</tt>
%          </td>
%          <td>Options that control the newOrientationPlot behavior<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ignoreFundamentalRegion'</tt>
%                   </td>
%                   <td>
%                         <p>plot orientation as they are</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'project2FundamentalRegion'</tt>
%                   </td>
%                   <td>
%                         <p>project orientations to fundamentalRegion (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'restrict2FundamentalRegion'</tt>
%                   </td>
%                   <td>
%                         <p>ignore all orientations outside the fundamentalRegion</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'noBoundary'</tt>
%                   </td>
%                   <td>
%                         <p>do not plot the boundary</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 