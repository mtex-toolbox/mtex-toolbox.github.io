%% loadTensor_mpod
% import Tensor data
% 
%
%% View Code
% 
%% Description
% *loadTensor_mod* is a high level method for importing Tensor data from external
% files.
% <http://www.materialproperties.org/data/ Material Properties Open
% Database>
% 
%
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>pf = loadTensor_mpod(fname,cs,ss,&lt;options&gt;)</tt>
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
%             <tt>fname</tt>
%          </td>
%          <td>
%                <p>filename</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>cs, ss</tt>
%          </td>
%          <td>
%                <p>crystal, specimen [[symmetry_index.html,symmetry]] (optional)</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% download form MPOD

T = loadTensor_mpod(1000055)
T = loadTensor_mpod('1000055.mpod')

%% 
% 

%% See also
% loadTensor
%