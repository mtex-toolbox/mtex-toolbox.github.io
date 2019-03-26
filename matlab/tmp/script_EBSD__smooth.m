%% smooth
% (method of <EBSD_index.html EBSD>)
%% 
% smooth spatial EBSD
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>[ebsd,filter] = smooth(ebsd,'param1',val1,'param2',val2)</tt>
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
%             <tt>ebsd</tt>
%          </td>
%          <td>
%                <p>
%                   <a href="EBSD_index.html&#34;">EBSD</a>
%                </p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example

mtexdata forsterite
ebsd = ebsd('indexed');
% segment grains
[grains,ebsd.grainId] = calcGrains(ebsd)

%% 
% 

% find largest grains
largeGrains = grains(grains.grainSize>800)
ebsd = ebsd(largeGrains(1))

%% 
% 

figure
plot(largeGrains(1).boundary,'linewidth',2)
hold on
oM = ipfHSVKey(ebsd);
oM.inversePoleFigureDirection = mean(ebsd.orientations) * oM.whiteCenter;
oM.colorStretching = 50;
plot(ebsd,oM.orientation2color(ebsd.orientations))
hold off

%% 
% 
%% 
