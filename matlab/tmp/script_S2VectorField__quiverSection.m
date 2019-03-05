%% quiverSection
% (method of [[S2VectorField_index.html,S2VectorField]])
%% 
% plot a vector field along another vectorfield
% 
%
%% View Code
% 
%% Syntax
% 
%   N = vector3d.Z;
%   quiverSection(sVF1,v,N)
%   quiverSection(sVF1,sVF2,N,pi/3)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>sVF1, sVF2</tt>
%          </td>
%          <td>
%                <p>[[S2VectorField_index.html,S2VectorField]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>N</tt>
%          </td>
%          <td>
%                <p>normal [[vector3d_index.html,vector3d]] of the section</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control quiverSection<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'normalized'</tt>
%                   </td>
%                   <td>
%                         <p>draw unit length vectors</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 