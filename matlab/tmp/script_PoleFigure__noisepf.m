%% noisepf
% (method of [[PoleFigure_index.html,PoleFigure]])
%% 
% simulate diffraction counts
% 
% noisepf simulates realistic diffraction counts by generating random
% samples of the Poisson distribution with mean m = alpha * pdf + bg
% 
%
%% View Code
% 
%% Syntax
%   pdfn = noisepf(pdf,alpha,bg)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>pf</tt>
%          </td>
%          <td>
%                <p>[[PoleFigure_index.html,PoleFigure]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>alpha</tt>
%          </td>
%          <td>
%                <p>uniform radiation (double)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>bg</tt>
%          </td>
%          <td>
%                <p>background radiation (double)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control noisepf<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'NONNEGATIV'</tt>
%                   </td>
%                   <td>
%                         <p>force data to be non negative</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/calcPoleFigure
%