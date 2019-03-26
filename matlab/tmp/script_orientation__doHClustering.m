%% doHClustering
% (method of <orientation_index.html orientation>)
%% 
% sort orientations into clusters
% 
%
%% View Code
% 
%% Syntax
%   [c,center] = doHCluster(ori,'numCluster',n)
%   [c,center] = doHCluster(ori,'maxAngle',omega)
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
%                <p>
%                   <a href="orientation_index.html&#34;">orientation</a>
%                </p>
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
cs = crystalSymmetry('m-3m');
center = orientation.rand(5,cs);
odf = unimodalODF(center,'halfwidth',5*degree)
ori = odf.calcOrientations(3000);

%% 
% 

% find the clusters and its centers
tic; [c,centerRec] = calcCluster(ori,'method','hierarchical','numCluster',5); toc

%% 
% 

% visualize result
oR = fundamentalRegion(cs)
plot(oR)

%% 
% 

hold on
plot(ori,c)
caxis([1,5])
plot(center,'MarkerSize',10,'MarkerFaceColor','k','MarkerEdgeColor','k')
plot(centerRec,'MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor','k')
hold off

%% 
% 

%check the accuracy of the recomputed centers
min(angle_outer(center,centerRec)./degree)

%% 
% 

odfRec = calcODF(ori)
[~,centerRec2] = max(odfRec,5)
min(angle_outer(center,centerRec2)./degree)

%% 
% 
