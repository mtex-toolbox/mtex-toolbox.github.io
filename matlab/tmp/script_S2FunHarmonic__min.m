%% min
% (method of <S2FunHarmonic_index.html S2FunHarmonic>)
%% 
% global, local and pointwise minima of spherical functions
% 
%
%% View Code
% 
%% Syntax
%   [v,pos] = min(sF) % the position where the minimum is atained
% 
%   [v,pos] = min(sF,'numLocal',5) % the 5 largest local minima
% 
%   sF = min(sF, c) % minimum of a spherical functions and a constant
%   sF = min(sF1, sF2) % minimum of two spherical functions
%   sF = min(sF1, sF2, 'bandwidth', bw) % specify the new bandwidth
% 
%   % compute the minimum of a multivariate function along dim
%   sF = min(sFmulti,[],dim)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>sF, sF1, sF2</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="S2Fun_index.html&#34;">S2Fun</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>sFmulti</tt>
%          </td>
%          <td>
%                <p>a multivariate <a href="S2Fun_index.html&#34;">S2Fun</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>c</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control min<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'kmax'</tt>
%                   </td>
%                   <td>
%                         <p>number of iterations</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'numLocal'</tt>
%                   </td>
%                   <td>
%                         <p>number of peaks to return</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'startingNodes'</tt>
%                   </td>
%                   <td>
%                         <p>
%                            <a href="vector3d_index.html&#34;">vector3d</a>
%                         </p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'tolerance'</tt>
%                   </td>
%                   <td>
%                         <p>minimum distance between two peaks</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>minimum step size</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'maxStepSize'</tt>
%                   </td>
%                   <td>
%                         <p>maximm step size</p>
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
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>pos</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 