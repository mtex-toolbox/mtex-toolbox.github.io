%% fibreVolume
% (method of [[ODF_index.html,ODF]])
%% 
% ratio of orientations with a certain orientation
% 
%
%% View Code
% 
%% Description
% returns the ratio of mass of the odf that is within a certain
% distance from a given fibre
% 
%
%% Syntax
%   v = fibreVolume(odf,h,r,radius)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>[[ODF_index.html,ODF]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>[[Miller_index.html,Miller]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>radius</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control fibreVolume<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>resolution of discretization</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/volume ODF/entropy ODF/textureindex
%