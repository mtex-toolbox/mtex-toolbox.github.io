function heroExport(step,n,varargin)
% save the current figure for the code card of the homepage (heroFigures.m)
%
% heroExport(step,n,'dark') draws it on the background of the card
% heroExport(step,n,'noLabels') removes all text from the axes
% heroExport(name,[],'dir','gallery') writes ../figures/gallery/<name>.png

outDir = fullfile(fileparts(mfilename('fullpath')),'..','figures',get_option(varargin,'dir','hero'));
if ~exist(outDir,'dir'), mkdir(outDir); end
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
  boxed = ~strcmp(get(t,'BackgroundColor'),'none');
  delete(t(boxed));
  set(t(~boxed),'Color',[0.86 0.92 0.9]);
end
drawnow
if isempty(n), name = step; else, name = sprintf('%s_%d',step,n); end
exportgraphics(fig,fullfile(outDir,[name '.png']),...
  'Resolution',144,'BackgroundColor',bg);
close(fig)

end
