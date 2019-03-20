%% WignerD
% Wigner-D function
% 
%
%% View Code
% 
%% Syntax
% 
%   Dl = WignerD(g,'degree',l)
%   D  = WignerD(g,'bandwidth',l)
%   D  = W
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>g</tt>
%          </td>
%          <td>
%                <p>[[quaternion_index.html,quaternion]] / [[rotation_index.html,rotation]] / [[orientation_index.html,orientation]] / [[symmetry_index.html,symmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control WignerD<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'bandwidth'</tt>
%                   </td>
%                   <td>
%                         <p>harmonic degree of series expansion</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'degree'</tt>
%                   </td>
%                   <td>
%                         <p>number or array, single degree reshapes result</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'kernel'</tt>
%                   </td>
%                   <td>
%                         <p>multiply wigner coefficients by kernel</p>
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
%             <tt>Dl</tt>
%          </td>
%          <td>
%                <p>
%                   <equation>
%                      <img alt="$(2l+1) \times (2l+1)$" class="equation" height="15px" src="WignerD_tmp_eq04683391488311913943.png" width="113px"/>
%                   </equation>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>D</tt>
%          </td>
%          <td>
%                <p>
%                   <equation>
%                      <img alt="$(l(2*l-1)(2*l+1)/3) \times n$" class="equation" height="15px" src="WignerD_tmp_eq07595780989338402044.png" width="182px"/>
%                   </equation> where n is the number of rotations</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% sphericalY
%