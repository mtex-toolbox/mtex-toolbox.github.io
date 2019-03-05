%% calcAngleDistribution
% (method of [[symmetry_index.html,symmetry]])
%% 
% compute the angle distribution of a uniform ODF for a crystal symmetry
% 
%
%% View Code
% 
%% Syntax
%   [ad,omega] = calcAngleDistribution(cs1)
%   [ad,omega] = calcAngleDistribution(cs1,cs2)
%   [ad,omega] = calcAngleDistribution(cs1,omega)
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
%                <pre>[[crystalSymmetry_index.html,crystalSymmetry]]</pre>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>angle</p>
%                <p>ut</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>ad</tt>
%          </td>
%          <td>
%                <p>angle distribution</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>angles</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcAngleDistribution<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'angle', 'threshold'</tt>
%                   </td>
%                   <td>
%                         <p>distribution with the angles within  a threshold</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 