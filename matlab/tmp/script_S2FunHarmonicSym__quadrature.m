%% quadrature
% (method of [[S2FunHarmonicSym_index.html,S2FunHarmonicSym]])
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>sF = S2FunHarmonicSym.quadrature(nodes,values,'weights',w,CS)
%   sF = S2FunHarmonicSym.quadrature(f,CS)
%   sF = S2FunHarmonicSym.quadrature(f, 'bandwidth', bandwidth,CS)</tt>
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
%             <tt>values</tt>
%          </td>
%          <td>
%                <p>double (first dimension has to be the evaluations)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>nodes</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>w</tt>
%          </td>
%          <td>
%                <p>double quadrature weights</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>f</tt>
%          </td>
%          <td>
%                <p>function handle in vector3d (first dimension has to be the evaluations)</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control quadrature<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'symmetrise'</tt>
%                   </td>
%                   <td>
%                         <p>apply symmetrisation, only required if the function is not yet symmetric</p>
%                   </td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'bandwidth'</tt>
%                   </td>
%                   <td>
%                         <p>harmonic cut off degree</p>
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
%             <tt>sF</tt>
%          </td>
%          <td>
%                <p>[[S2FunHarmonic_index.html,S2FunHarmonic]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 