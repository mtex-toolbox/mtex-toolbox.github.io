%% deformationGradientTensor
% (method of [[deformationGradientTensor_index.html,deformationGradientTensor]])
%% 
% The deformation gradient F contains the full information about the
% local rotation and deformation of the material. It also shows, for
% example, how a small line segment in the undeformed body, dX, is
% rotated and stretched into a line segment in the deformed body, dx,
% since dx = F dX. As F is volume preserving this implies that det F = 1.
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>F = deformationGradientTensor('param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 