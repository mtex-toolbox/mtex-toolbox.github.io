%% PoissonRatio
% (method of <stiffnessTensor_index.html stiffnessTensor>)
%% 
% computes the Poisson ratio of an elasticity tensor
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>varargout = PoissonRatio(C,'param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 
%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>C</tt>
%          </td>
%          <td>
%                <p>elastic <a href="stiffnessTensor_index.html&#34;">stiffnessTensor</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>x</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="vector3d_index.html&#34;">vector3d</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>y</tt>
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
%% Output
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>nu</tt>
%          </td>
%          <td>
%                <p>Poisson ratio in directions x and y</p>
%                <p>arks</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>$$\nu = \frac{</tt>
%          </td>
%          <td>
%                <p>
%                   <i>{ijkl} x_i x_j y_k y_l}{S</i>{mnop} x_m x_n x_o x_p}$$</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 