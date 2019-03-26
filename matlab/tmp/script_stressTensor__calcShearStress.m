%% calcShearStress
% (method of <stressTensor_index.html stressTensor>)
%% 
% shear stress
% 
%
%% View Code
% 
%% Syntax
%   [tauMax,m,n,tau] = calcShearStress(sigma,m,n)
% 
% Formula
% 
%  q = T_i1i2i3...id v_i1 v_i2 v_i3 ... v_id
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>sigma</tt>
%          </td>
%          <td>
%                <pre>&lt;stressTensor_index.html" stressTensor&gt;</pre>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>m</tt>
%          </td>
%          <td>
%                <p>normal vector the the slip or twinning plane</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>Burgers vector (slip) or twin shear direction (twinning)</p>
%                <p>tut</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>tauMax</tt>
%          </td>
%          <td>
%                <p>maximum shear stress</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>m</tt>
%          </td>
%          <td>
%                <p>active plane</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>active direction</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>tau</tt>
%          </td>
%          <td>
%                <p>shear stresses with respect to all planes</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control calcShearStress<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'symmetrise'</tt>
%                   </td>
%                   <td>
%                         <p>consider also all symmetrically equivalent  planes and directions</p>
%                         <pre>Also</pre>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 