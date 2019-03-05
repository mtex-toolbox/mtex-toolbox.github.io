%% symmetrise
% (method of [[quaternion_index.html,quaternion]])
%% 
% symmetrcially equivalent orientations
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>varargout = symmetrise(q,CS,SS,'param1',val1,'param2',val2)</tt>
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
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>[[quaternion_index.html,quaternion]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>crystal [[symmetry_index.html,symmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SS</tt>
%          </td>
%          <td>
%                <p>specimen [[symmetry_index.html,symmetry]]</p>
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
%             <tt>q</tt>
%          </td>
%          <td>
%                <p>symmetrically equivalent orientations CS x SS x q</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% CrystalSymmetries
%