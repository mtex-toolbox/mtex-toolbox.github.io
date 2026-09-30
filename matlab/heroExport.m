function heroExport(step,n)
% save the current figure for the code card of the homepage (heroFigures.m)

outDir = fullfile(fileparts(mfilename('fullpath')),'..','figures','hero');
if ~exist(outDir,'dir'), mkdir(outDir); end
fig = gcf;
fig.Units = 'pixels';
fig.Position(3:4) = [620 480];
drawnow
exportgraphics(fig,fullfile(outDir,sprintf('%s_%d.png',step,n)),'Resolution',144);
close(fig)

end
