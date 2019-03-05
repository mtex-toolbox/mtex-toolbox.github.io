%% calcCluster
% (method of [[orientation_index.html,orientation]])
%% 
% sort orientations into clusters
% 
%
%% View Code
% 
%% Syntax
%   [c,center] = calcCluster(ori,'halfwidth',2.5*degree)
%   [c,center] = calcCluster(ori,'numCluster',n,'method','hierarchical')
%   [c,center] = calcCluster(ori,'maxAngle',omega,'method','hierarchical')
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>n</tt>
%          </td>
%          <td>
%                <p>number of clusters</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>omega</tt>
%          </td>
%          <td>
%                <p>maximum angle</p>
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
%             <tt>c</tt>
%          </td>
%          <td>
%                <p>list of clusters</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>center</tt>
%          </td>
%          <td>
%                <p>center of the clusters</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Example
%% 
% 

% generate orientation clustered around 5 centers
cs = crystalSymmetry('432');
center = orientation.rand(5,cs);
odf = unimodalODF(center,'halfwidth',5*degree)
ori = odf.calcOrientations(1500);

%% 
% 

% find the clusters and its centers
[cId,centerRec] = calcCluster(ori);

%% 
% 

% visualize result
for i = 1:length(centerRec)
plot(ori(cId==i),'axisAngle')
hold on
plot(centerRec(i),'MarkerFaceColor','k','MarkerSize',15)
end
hold off

%% 
% 

%check the accuracy of the recomputed centers
min(angle_outer(center,centerRec)./degree)

%% 
% 
