%% BinghamODF
% defines a Bingham distributed ODF
% 
%
%% View Code
% 
%% Description
% BinhamODF defines a Bingham distributed ODF with A and Lambda.
% 
%
%% Syntax
%   odf = BinghamODF(kappa,A,CS,SS)
%   odf = BinghamODF(kappa,q,CS,SS)
%   odf = BinghamODF(kappa,h,r,CS,SS)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>kappa</tt>
%          </td>
%          <td>
%                <p>form parameter</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>A</tt>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>h,r</tt>
%          </td>
%          <td>
%                <p>fibre</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS, SS</tt>
%          </td>
%          <td>
%                <p>crystal, specimen <a href="symmetry_index.html&#34;">symmetry</a>
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
%             <tt>odf</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="ODF_index.html&#34;">ODF</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/ODF uniformODF unimodalODF fibreODF
%