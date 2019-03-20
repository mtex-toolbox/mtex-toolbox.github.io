%% fit
% (method of [[BinghamS2_index.html,BinghamS2]])
%% 
% function to fit Bingham parameters
% 
%
%% View Code
% 
%% Syntax
%   BS2 = BinghamS2.fit(v)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>v</tt>
%          </td>
%          <td>
%                <p>vector3d</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>param,val</tt>
%          </td>
%          <td>Parameters and values that control fit<table cellpadding="4" cellspacing="0" class="paramval" width="100%">
%                <tr>
%                   <td class="header" width="100px">Parameter</td>
%                   <td class="header">Description</td>
%                </tr>
%                <tr>
%                   <td width="150px">
%                      <tt>'ConfElli'</tt>
%                   </td>
%                   <td>
%                         <p>specify the level p (default at 0.95)          for the confidence ellipse for the mean direction          based on Tanaka (1999) https://doi.org/10.1186/BF03351601</p>
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
%             <tt>BS2</tt>
%          </td>
%          <td>
%                <p>[[BinghamS2_index.html,BinghamS2]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

% simulate some directions
odf = unimodalODF(quaternion.id,'halfwidth',10*degree);
N = 100;
v = odf.discreteSample(N) .* ...
rotation.byAxisAngle(vector3d.X,rand(N,1)*2*pi) * vector3d.Y;

%% 
% 

% fit a Bingham distribution
S2F = BinghamS2.fit(v)

%% 
% 

% visualization
plot(S2F)
mtexColorMap LaboTeX
hold on
plot(t,'Markercolor','k','MarkerSize',3)
hold off

%% 
% 
