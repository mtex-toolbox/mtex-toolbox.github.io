%% SchmidTensor
% computes the Schmidt tensor
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>m = SchmidTensor(n,b,'param1',val1,'param2',val2)</tt>
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
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>normal vector of the slip or twinning plane</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>b</tt>
%          </td>
%          <td>
%                <p>Burgers vector (slip) or twin shear direction (twinning)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control SchmidTensor<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'generalized'</tt>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'symmetric'</tt>
%                   </td>
%                   <td>
%                         <p>default</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'antisymmetric'</tt>
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
%             <tt>m</tt>
%          </td>
%          <td>
%                <p>Schmid tensor</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 