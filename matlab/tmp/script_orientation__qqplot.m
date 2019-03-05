%% qqplot
% (method of [[orientation_index.html,orientation]])
%% 
% quantile-quantile of misorientation angle against random angular
% misorientation
% 
%
%% View Code
% 
%% Syntax
% 
% <html>
%    <div class="syntax" width="100%">
%       <div>
%          <tt>qqplot(o)</tt>
%       </div>
%    </div>
% </html>
% 
%% Example

cs = crystalSymmetry('-43m');
odf1 = unimodalODF(orientation.id(cs),'halfwidth',20*degree);
odf2 = unimodalODF(orientation.id(cs),'halfwidth',50*degree);

%% 
% 

qqplot(odf1.calcOrientations(1000))
qqplot(odf2.calcOrientations(1000))

%% 
% 
