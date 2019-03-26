%% niceEuler
% (method of <orientation_index.html orientation>)
%% 
% orientation to euler angle
% 
%
%% View Code
% 
%% Description
% calculates the Euler angle for a rotation |q|
% 
%
%% Syntax
%   [alpha,beta,gamma] = niceEuler(ori) -
%   [phi1,Phi,phi2] = niceEuler(ori,'Bunge') -
%   euler = Euler(ori,'Bunge') -
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control niceEuler<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ABG, ZYZ'</tt>
%                   </td>
%                   <td>
%                         <p>Matthies (alpha,beta,gamma) convention (default)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'BUNGE, ZXZ'</tt>
%                   </td>
%                   <td>
%                         <p>Bunge (phi, Phi, phi2) convention</p>
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