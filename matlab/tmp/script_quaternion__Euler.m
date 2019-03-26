%% Euler
% (method of <quaternion_index.html quaternion>)
%% 
% quaternion to euler angle
% 
%
%% View Code
% 
%% Description
% calculates the Euler angle for a rotation |q|
% 
%
%% Syntax
%   [alpha,beta,gamma] = Euler(quat,'ABG') -
%   [phi1,Phi,phi2] = Euler(quat) -
%   euler = Euler(quat) -
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>quat</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="quaternion_index.html&#34;">quaternion</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control Euler<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ABG, ZYZ'</tt>
%                   </td>
%                   <td>
%                         <p>Matthies (alpha,beta,gamma) convention</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'BUNGE, ZXZ'</tt>
%                   </td>
%                   <td>
%                         <p>Bunge (phi, Phi, phi2) convention (default)</p>
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
%             <tt>alpha, beta, gamma</tt>
%          </td>
%          <td>
%                <p>Matthies</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>phi1, Phi, phi2</tt>
%          </td>
%          <td>
%                <p>BUNGE</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% quaternion/Rodrigues
%