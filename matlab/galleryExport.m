function galleryExport(name,varargin)
% Export a gallery thumbnail on a 960 by 720 canvas.
% 'crop',f selects a fraction of a map; 'center',[x y] sets its relative centre.

fig = gcf;
fig.Color = 'white';
axesList = findall(fig,'Type','axes');
mapCount = sum(arrayfun(@(ax) isappdata(ax,'mapPlot'),axesList));
for ax = reshape(axesList,1,[])
  mP = getappdata(ax,'mapPlot');
  if isempty(mP) || ~check_option(varargin,'crop'), continue; end
  extent = mP.extent;
  if any(~isfinite(extent)) || extent(2)<=extent(1) || extent(4)<=extent(3)
    extent = [xlim(ax),ylim(ax)];
  end
  span = [diff(extent(1:2)),diff(extent(3:4))];
  ratio = 4/3/max(mapCount,1);
  if abs(ax.CameraUpVector(1))>abs(ax.CameraUpVector(2)), ratio = 1/ratio; end
  width = min(span(1),span(2)*ratio) * get_option(varargin,'crop',1);
  window = [width,width/ratio];
  center = [extent(1),extent(3)] + span .* get_option(varargin,'center',[0.5 0.5]);
  center = max([extent(1),extent(3)]+window/2,...
    min([extent(2),extent(4)]-window/2,center));
  xlim(ax,center(1)+[-1 1]*window(1)/2);
  ylim(ax,center(2)+[-1 1]*window(2)/2);
end
if isappdata(fig,'mtexFig')
  drawNow(gcm,'position',[100 100 640 480]);
else
  set(fig,'Units','pixels','Position',[100 100 640 480]);
end
drawnow;
if check_option(varargin,'fit3d')
  for ax = reshape(axesList,1,[])
    set(ax,'CameraViewAngleMode','auto','CameraTargetMode','auto','CameraPositionMode','auto');
    drawnow;
    axis(ax,'vis3d');
  end
end
fig.ResizeFcn = [];
set(fig,'PaperUnits','inches','PaperPositionMode','manual',...
  'PaperPosition',[0 0 6.4 4.8],'PaperSize',[6.4 4.8],'InvertHardcopy','off');
outDir = fullfile(fileparts(mfilename('fullpath')),'..','figures','gallery');
if ~exist(outDir,'dir'), mkdir(outDir); end
print(fig,fullfile(outDir,[name '.png']),'-dpng','-r150');
close(fig);
end
