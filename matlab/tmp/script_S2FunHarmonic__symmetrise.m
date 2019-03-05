%% symmetrise
% (method of [[S2FunHarmonic_index.html,S2FunHarmonic]])
%% 
% symmetrises a function with respect to a symmetry or a direction
% 
%
%% View Code
% 
%% Syntax
% 
%   % symmetrise with respect to a crystal or specimen symmetry
%   sFs = symmetrise(sF,cs)
%   sFs = symmetrise(sF,ss)
%   [sFs,psi] = symmetrise(sF,d)
% 
%   % symmetrise with respect to an axis
%   sFs = symmetrise(sF,d)
% 

%% Input
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
%       <tr>
%          <td width="100px">
%             <tt>cs,ss</tt>
%          </td>
%          <td>
%                <p>[[crystalSymmetry_index.html,crystalSymmetry]], [[specimenSymmetry_index.html,specimenSymmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>d</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]]</p>
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
%             <tt>sFs</tt>
%          </td>
%          <td>
%                <p>symmetrised [[S2FunHarmonic_index.html,S2FunHarmonic]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>psi</tt>
%          </td>
%          <td>
%                <p>[[S2Kernel_index.html,S2Kernel]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 