function makeDoc(varargin)

dispPerm('start building documentation ...')

addpath ../../makeDoc; DocHelpInstall;

% build help with the DocHelp Toolbox
%

if check_option(varargin,'clear') && ...
    strcmpi(input('Really want to remove all files? Y/N [N]:','s'),'Y')
  !rm -r ../pages/function_reference_matlab/*
  !rm -r ../pages/documentation_matlab/*
  !rm -r ./tmp/*
  mtexdata clear
end

%% settings

mtex_settings
close all
setMTEXpref('FontSize',13)
setMTEXpref('figSize',0.5)
plotx2east

setMTEXpref('generatingHelpMode',true);
set(0,'FormatSpacing','compact')
set(0,'DefaultFigureColor','white');

tmpDir = fullfile(pwd,'tmp');
stylesheet = fullfile(pwd,'web.xsl');

funRefOut = fullfile(pwd,'..','pages','function_reference_matlab');
docOut = fullfile(pwd,'..','pages','documentation_matlab');

%% DocFiles
mtexFunctionFiles = [...
  DocFile( fullfile(mtex_path,'S2Fun')) ...
  DocFile( fullfile(mtex_path,'EBSDAnalysis')) ...
  DocFile( fullfile(mtex_path,'ODFAnalysis')) ...
  DocFile( fullfile(mtex_path,'PoleFigureAnalysis')) ...
  DocFile( fullfile(mtex_path,'TensorAnalysis')) ...
  DocFile( fullfile(mtex_path,'plotting')) ...
  DocFile( fullfile(mtex_path,'geometry')) ...
  DocFile( fullfile(mtex_path,'interfaces')) ...
  DocFile( fullfile(mtex_path,'tools')) ...
  DocFile( fullfile(mtex_path,'doc','FunctionReference'));];

%mtexFunctionFiles = exclude(mtexFunctionFiles,'Patala');

mtexDocFiles = DocFile( fullfile(mtex_path,'doc'));
mtexDocFiles = exclude(mtexDocFiles,'makeDoc','html','FunctionReference');

mtexHelpFiles = [mtexFunctionFiles,mtexDocFiles];

%% Publish Function Reference

publish(mtexFunctionFiles,'outDir',funRefOut,'tmpDir',tmpDir,'evalCode',true,'stylesheet',stylesheet);

% add frontmatter to html files
files = dir(fullfile(funRefOut, '*.html'));
for idx = 1:length(files)
  add_frontmatter(funRefOut, files(idx), 'function_reference');
end

move_images(funRefOut);

%% Publish Doc

publish(mtexDocFiles,'outDir',docOut,'tmpDir',tmpDir,'evalCode',true,'stylesheet',stylesheet);

% add frontmatter to html files
files = dir(fullfile(docOut, '*.html'));
for idx = 1:length(files)
  add_frontmatter(docOut, files(idx), 'documentation');
end

move_images(docOut);

%%
if check_option(varargin,'checkLinks')
  deadlink(mtexDocFiles,{funRefOut,docOut});
end

%% make help toc

makeHelpToc(mtexHelpFiles,'Documentation','doc.xml');
xml2yml('doc.xml','../_data/sidebars/documentation_sidebar.yml','Topics')

makeHelpToc(mtexHelpFiles,'FunctionReference','funcRef.xml');
xml2yml('funcRef.xml','../_data/sidebars/function_reference_sidebar.yml','Functions')


%% set back mtex options

setMTEXpref('generatingHelpMode',false);


end


function move_images(Dir)
  files = dir(fullfile(Dir, '*.png'));
  for j = 1:length(files)
    filename = files(j);
    filename = filename.name;
    movefile(fullfile(Dir, filename), fullfile(Dir, '..', '..', 'images', filename))
  end


  files = dir(fullfile(Dir, '*.gif'));
  for j = 1:length(files)
    filename = files(j);
    filename = filename.name;
    movefile(fullfile(Dir, filename), fullfile(Dir, '..', '..', 'images', filename))
  end

end

function add_frontmatter(dir, file, name)
  filename = file;
  filename = filename.name;
  f = fopen(fullfile(dir, filename), 'r');
  s = fread(f);
  fclose(f);
  s = reshape(s,1,[]);
  if ~strcmp(sprintf('%s', s(1:3)), '---')
    p1 = strfind(s, '<title>')+7;
    p2 = strfind(s(p1:end), '</title>');
    title = s(p1:p1+p2-2);

    frontmatter = sprintf([ 
      '---\n'...
      'title: %s\n'...
      'last_updated: %s\n'...
      'sidebar: ' name '_sidebar\n'...
      'permalink: %s\n'...
      'folder: ' name '\n'...
      'toc: false\n'...
      '---\n'],...
      title,...
      date,...
      filename);

    s = [frontmatter s];

    f = fopen(fullfile(dir, filename), 'w');
    fwrite(f,s);
    fclose(f);
  end
end

