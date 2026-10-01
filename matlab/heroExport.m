function heroExport(step,n,varargin)
% save the current figure for the code card of the homepage (heroFigures.m)
%
% heroExport(step,n,'dark') draws it on the background of the card
% heroExport(step,n,'noLabels') removes all text from the axes
% heroExport(name,[],'dir','gallery') writes ../figures/gallery/<name>.png
% heroExport(step,n,'fitMap') fits the axes to the map and crops the margin
% heroExport(step,n,'fit3d') crops a 3D plot and makes its background transparent

outDir = fullfile(fileparts(mfilename('fullpath')),'..','figures',get_option(varargin,'dir','hero'));
if ~exist(outDir,'dir'), mkdir(outDir); end
if check_option(varargin,'fit3d')
  galleryExport(sprintf('%s_%d',step,n),'dir','hero','fit3d','trim','transparent');
  return
end
shrinkScaleBars(gcf);
if check_option(varargin,'fitMap')
  galleryExport(sprintf('%s_%d',step,n),'dir','hero','trim');
  return
end
fig = gcf;
fig.Units = 'pixels';
fig.Position(3:4) = [620 480];
bg = 'white';
if check_option(varargin,'noLabels'), delete(findall(fig,'type','text')); end
if check_option(varargin,'dark')
  bg = [16 35 31]/255;
  fig.Color = bg;
  set(findall(fig,'type','axes'),'Color','none');
  % light labels, and none of the boxed ones
  t = findall(fig,'type','text');
  if ~isempty(t)
    boxed = ~strcmp(get(t,'BackgroundColor'),'none');
    delete(t(boxed));
    set(t(~boxed),'Color',[0.86 0.92 0.9]);
  end
end
drawnow
if isempty(n), name = step; else, name = sprintf('%s_%d',step,n); end
exportgraphics(fig,fullfile(outDir,[name '.png']),...
  'Resolution',144,'BackgroundColor',bg);
close(fig)

end

function shrinkScaleBars(fig)
% the scale bar is sized from its font, which the card displays at half size
for ax = reshape(findall(fig,'type','axes'),1,[])
  mP = getappdata(ax,'mapPlot');
  if isempty(mP) || isempty(mP.micronBar), continue; end
  set([mP.micronBar.txt,mP.micronBar.rfLabels],'FontSize',9);
  mP.micronBar.update(true);
end
end
