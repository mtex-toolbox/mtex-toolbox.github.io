%% calcDensity
% (method of <Miller_index.html Miller>)
%% 
% calculate a density function out of (weighted) crystal directions
% 
%
%% View Code
% 
%% Syntax
% 
%   sF = calcDensity(h)
%   sF = calcDensity(h,'weights',w)
%   sF = calcDensity(h,'halfwidth',delta)
%   sF = calcDensity(h,'kernel',psi)
%    f = calcDensity(h,S2G)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>list of crystal directions <a href="Miller_index.html&#34;">Miller</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>S2G</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
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
%                <p>
%                   <a href="kernel_index.html&#34;">kernel</a> function, default is de la Vallee Poussin</p>
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
%                <p>
%                   <a href="S2FunHarmonicSym_index.html&#34;">S2FunHarmonicSym</a>
%                </p>
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