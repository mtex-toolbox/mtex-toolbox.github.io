%% textureindex
% (method of <ODF_index.html ODF>)
%% 
% caclulate texture index of ODF
% 
% The tetxure index of an ODF f is defined as:
% 
% $$ t = \int f(g)^2 dg$$
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>t = textureindex(odf,'param1',val1,'param2',val2)</tt>
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
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control textureindex<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'resolution'</tt>
%                   </td>
%                   <td>
%                         <p>resolution of the discretization</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'fourier'</tt>
%                   </td>
%                   <td>
%                         <p>use Fourier coefficients</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'bandwidth'</tt>
%                   </td>
%                   <td>
%                         <p>bandwidth used for Fourier calculation</p>
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
%             <tt>texture index</tt>
%          </td>
%          <td>
%                <p>double</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/norm ODF/entropy ODF/volume ODF_index ODF/calcFourier
%