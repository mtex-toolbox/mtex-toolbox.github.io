%% RK_symmetrised
% (method of <kernel_index.html kernel>)
%% 
% sum Radon trasformed kernel
% 
%
%% View Code
% 
%% Description
% formulae
% 
% $$ f_j = \sum_i c_i \mathcal{R}K(g_i,h,r_j)$$
% 
% $$ \mathcal{R}K((h,r);g) = \sum_l A_l P_l(gh, r)$$
% 
%
%% Syntax
%   f = RK_symmetrised(psi,g,h,r,c,CS,SS,varargin) -
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>psi</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="kernel_index.html&#34;">kernel</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>g</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>(s)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h</tt>
%          </td>
%          <td>
%                <p>list of crystal directions</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>r</tt>
%          </td>
%          <td>
%                <p>list of ein specimen directions</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>c</tt>
%          </td>
%          <td>
%                <p>coefficients</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS,SS</tt>
%          </td>
%          <td>
%                <p>crystal, specimen <a href="symmetry_index.html&#34;">symmetry</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control RK_symmetrised<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'antipodal'</tt>
%                   </td>
%                   <td>
%                         <p>antipodal Radon transform <equation>
%                               <img alt="$P(h,r) = (\mathcal{R}f(h,r) + \mathcal{R}f(-h,r))/2$" class="equation" height="15px" src="kernel.RK_symmetrised_tmp_eq14913632029063642768.png" width="228px"/>
%                            </equation>
%                         </p>
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
%             <tt>matrix</tt>
%          </td>
%          <td>
%                <p>1. dim -&gt; g, 2.dim -&gt; r</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% kernel/k kernel/rkk
%