function makeDoc(varargin)

addpath ../../makeDoc; DocHelpInstall;

% build help with the DocHelp Toolbox
%

if check_option(varargin,'clear')
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

global mtex_progress;
mtex_progress = false;
setMTEXpref('generatingHelpMode',true);
set(0,'FormatSpacing','compact')
set(0,'DefaultFigureColor','white');

options.outputDir = fullfile(pwd,'..','pages','function_reference_matlab');
options.tempDir = fullfile(pwd,'tmp');
options.publishSettings.stylesheet = fullfile(pwd,'web.xsl');
dir2 = fullfile(pwd,'..','pages','documentation_matlab');

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
  DocFile( fullfile(mtex_path,'tools')) ];

%mtexFunctionFiles = exclude(mtexFunctionFiles,'Patala');

mtexDocFiles = DocFile( fullfile(mtex_path,'doc2'));
mtexDocFiles = exclude(mtexDocFiles,'makeDoc','html');

mtexHelpFiles = [mtexFunctionFiles,mtexDocFiles];


%% Publish Function Reference

options.evalCode = true;
options.force = false;
publish(mtexFunctionFiles,options);

% add frontmatter to html files
files = dir(fullfile(options.outputDir, '*.html'));
for idx = 1:length(files)
  add_frontmatter(options.outputDir, files(idx), 'function_reference');
end

move_images(options.outputDir);
makeFunctionReferenceToc();

%% Publish Doc

options.outputDir = dir2;
options.evalCode = true;
options.force = false;
publish(mtexDocFiles,options);
%copy(mtexDocFiles,fullfile(mtex_path,'examples','UsersGuide'));

% add frontmatter to html files
files = dir(fullfile(options.outputDir, '*.html'));
for idx = 1:length(files)
  add_frontmatter(options.outputDir, files(idx), 'documentation');
end

move_images(options.outputDir);

%%
if check_option(varargin,'checkLinks')
  deadlink(mtexDocFiles,options.outputDir);
end

%% make help toc

makeHelpToc(mtexHelpFiles,'Documentation','FunctionMainFile','FunctionReference','outputDir','.');
makeDocumentationToc();

%% make function reference overview pages

makeFunctionsReference(mtexHelpFiles,'FunctionReference','outputDir',options.outputDir);
makeFunctionReferenceToc



%% set back mtex options

setMTEXpref('generatingHelpMode',false);
mtex_progress = true;

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

