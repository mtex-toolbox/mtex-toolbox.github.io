%% calcDensity
% (method of [[vector3d_index.html,vector3d]])
%% 
% calculate a density function out of (weighted) unit vectors
% 
%
%% View Code
% 
%% Syntax
% 
%   sF = calcDensity(v)
%   sF = calcDensity(v,'weights',w)
%   sF = calcDensity(v,'halfwidth',delta)
%   sF = calcDensity(v,'kernel',psi)
%    f = calcDensity(v,S2G)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>sampling points for density estimation [[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>S2G</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>w</tt>
%          </td>
%          <td>
%                <p>weights, default is all one</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>delta</tt>
%          </td>
%          <td>
%                <p>halfwidth of the kernel, default is 10 degree</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>psi</tt>
%          </td>
%          <td>
%                <p>[[kernel_index.html,kernel]] function, default is de la Vallee Poussin</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcDensity<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'halfwidth'</tt>
%                   </td>
%                   <td>
%                         <p>halfwidth of a kernel</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'kernel'</tt>
%                   </td>
%                   <td>
%                         <p>specify a kernel</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'weights'</tt>
%                   </td>
%                   <td>
%                         <p>vector of weights, with same length as v</p>
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
%             <tt>sF</tt>
%          </td>
%          <td>
%                <p>[[S2Fun_index.html,S2Fun]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>f</tt>
%          </td>
%          <td>
%                <p>function values</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 