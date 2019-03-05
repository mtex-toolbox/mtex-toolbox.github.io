%% fitEllipse
% (method of [[grain2d_index.html,grain2d]])
%% 
% fit ellipses to grains using the method described in Mulchrone&
% Choudhury,2004 (https://doi.org/10.1016/S0191-8141(03)00093-2)
% 
%
%% View Code
% 
%% Syntax
% 
%   [omega,a,b] = fitEllipse(grains);
%   plotEllipse(grains.centroid,a,b,omega,'lineColor','r')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>grains</tt>
%          </td>
%          <td>
%                <p>[[grain2d_index.html,grain2d]]</p>
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
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>angle giving trend of ellipse long axis</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>a</tt>
%          </td>
%          <td>
%                <p>long axis radius</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>b</tt>
%          </td>
%          <td>
%                <p>short axis radius</p>
%                <p>ion</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>boundary</tt>
%          </td>
%          <td>
%                <p>scale to fit boundary length</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 
% mtexdata csl
% grains = calcGrains(ebsd('indexed'))
% grains = smooth(grains,10)
% plot(ebsd('indexed'),ebsd('indexed').orientations,'micronbar','off')
% hold on
% plot(grains.boundary,'lineWidth',2)
% grains = grains(grains.grainSize>20)
% [omega,a,b] = fitEllipse(grains(grains));
% plotEllipse(grains.centroid,a,b,omega,'lineColor','w','linewidth',2)
% hold off
