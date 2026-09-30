function heroExport(step,n,varargin)
% save the current figure for the code card of the homepage (heroFigures.m)
%
% heroExport(step,n,'dark') draws it on the background of the card

outDir = fullfile(fileparts(mfilename('fullpath')),'..','figures','hero');
if ~exist(outDir,'dir'), mkdir(outDir); end
fig = gcf;
fig.Units = 'pixels';
fig.Position(3:4) = [620 480];
bg = 'white';
if check_option(varargin,'dark')
  bg = [16 35 31]/255;
  fig.Color = bg;
  set(findall(fig,'type','axes'),'Color','none');
  % light labels, except those on a box of their own
  t = findall(fig,'type','text');
  t = t(strcmp(get(t,'BackgroundColor'),'none'));
  set(t,'Color',[0.86 0.92 0.9]);
end
drawnow
exportgraphics(fig,fullfile(outDir,sprintf('%s_%d.png',step,n)),...
  'Resolution',144,'BackgroundColor',bg);
close(fig)

end
