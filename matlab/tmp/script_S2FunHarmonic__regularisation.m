%% regularisation
% (method of <S2FunHarmonic_index.html S2FunHarmonic>)
%% 
% computes a regularisation
%
%% View Code
% 
%% Syntax
%   sF = S2FunHarmonic.regularisation(S2Grid,f,lambda)
%   sF = S2FunHarmonic.regularisation(S2Grid,f,lambda,'bandwidth',
%        bandwidth,'node_weights',W,'fourier_weights',What)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>S2Grid</tt>
%          </td>
%          <td>
%                <p>grid on the sphere</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>f</tt>
%          </td>
%          <td>
%                <p>function values on the grid (may be multidimensional)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>lambda</tt>
%          </td>
%          <td>
%                <p>parameter for regularisation</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control regularisation<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'bandwidth'</tt>
%                   </td>
%                   <td>
%                         <p>maximum degree of the spherical harmonics used to            approximate the function</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'W'</tt>
%                   </td>
%                   <td>
%                         <p>weight w_n for the node nodes (default: voronoi weights)</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'What'</tt>
%                   </td>
%                   <td>
%                         <p>weight what_{m,l} for the fourier space (default sobolev            weights for s = 2)</p>
%                   </td>
%                </tr>
%             </table>
%          </td>
%       </tr>
%    </table>
% </html>
% 