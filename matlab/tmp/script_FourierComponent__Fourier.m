%% Fourier
% (method of <FourierComponent_index.html FourierComponent>)
%% 
% get Fourier coefficients of and ODF
% 
% Returns the Fourier coefficients of an ODF. If no option is specified all
% allready precomputed Fourier coefficients are returned. If the option
% 'order' is specified only Fourier coefficients of this specific order are
% returned. If the option 'bandwidth' is specified all Fourier coefficients
% up to this bandwidth are returned.
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>f_hat = Fourier(odf,'order',L)
%   f_hat = Fourier(odf,'bandwidth',B)</tt>
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
%             <tt>L</tt>
%          </td>
%          <td>
%                <p>order of Fourier coefficients to be returned</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>B</tt>
%          </td>
%          <td>
%                <p>maximum order of Fourier coefficients to be returned</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control Fourier<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'l2-normalization'</tt>
%                   </td>
%                   <td>
%                         <p>used L^2 normalization</p>
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
%             <tt>f_hat</tt>
%          </td>
%          <td>
%                <p>Fourier coefficient - complex (2L+1)x(2L+1) matrix</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% ODF/plotFourier wignerD ODF/calcFourier FourierODF ODF/textureindex ODF/entropy ODF/eval
% 
%