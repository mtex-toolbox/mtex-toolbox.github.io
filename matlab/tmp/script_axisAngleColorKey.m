%% axisAngleColorKey
% Colorizes orientations according to their misorientation axis and
% misorientation angle in specimen coordinates with respect to some
% refererence orientation. The angle determines the saturation of the
% color, i.e., a misorientation angle of 0 corresponds to gray and the
% misorientation ange at maximum corresponds to fully saturated colors.
% The saturated color is determined by the misorientation axis. In the
% X-Y plane the colors circle through the rainbow colors and goes to
% white and black for z to +/-1.
% 
% The reference orientation may be single fixed orientation or a list of
% orientations. A typical example is to set the reference orientation as
% the mean orientation of the grain the pixel orientation belongs to.
% 
% Reference: Thomsen et al.: Quaternion-based disorientation coloring of
% orientation maps, 2017
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>oM = axisAngleColorKey('param1',val1,'param2',val2)</tt>
%       </div>
%    </div>
% </html>
% 