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
global mtex_progress; mtex_progress = 0; %#ok<NASGU>
set(0,'FormatSpacing','compact')
set(0,'DefaultFigureColor','white');

options.tmpDir = fullfile(pwd,'tmp');
options.imageDir = fullfile(pwd,'..','images');
options.publishSettings.stylesheet = fullfile(pwd,'web.xsl');
options.xmlDom = makeToolboxXML('.','name','MTEX',...
  'fullname','<b>MTEX</b> - A MATLAB Toolbox for Quantitative Texture Analysis',...
  'versionname',getMTEXpref('version'),...
  'procuctpage','DocumentationMatlab.html');

%% Publish Function Reference

% define source files
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

% make sidebar
makeHelpToc(mtexFunctionFiles,'FunctionReference','funcRef.xml');
xml2yml('funcRef.xml','../_data/sidebars/function_reference_sidebar.yml','Functions')

% publsih files
options.outDir = fullfile(pwd,'..','pages','function_reference_matlab');
publish(mtexFunctionFiles,options);

% add frontmatter to html files
files = dir(fullfile(options.outDir, '*.html'));
for idx = 1:length(files)
  add_frontmatter(options.outDir, files(idx), 'function_reference');
end


%% Publish Doc

% define source files
mtexDocFiles = DocFile( fullfile(mtex_path,'doc'));
mtexDocFiles = exclude(mtexDocFiles,'makeDoc','html','FunctionReference');

% make sidebar
makeHelpToc(mtexDocFiles,'Documentation','doc.xml');
xml2yml('doc.xml','../_data/sidebars/documentation_sidebar.yml','Topics')

% publsih files
options.outDir = fullfile(pwd,'..','pages','documentation_matlab');
publish(mtexDocFiles,options);

% add frontmatter to html files
files = dir(fullfile(options.outDir, '*.html'));
for idx = 1:length(files)
  add_frontmatter(options.outDir, files(idx), 'documentation');
end


%% make examples

% define source files
mtexExFiles = DocFile( fullfile(mtex_path,'..','examples'));

% make sidebar
makeHelpToc(mtexExFiles,'Examples','examples.xml');
xml2yml('examples.xml','../_data/sidebars/examples_sidebar.yml','Examples')

% publsih files
options.outDir = fullfile(pwd,'..','pages','examples_matlab');
publish(mtexExFiles,options);

% add frontmatter to html files
files = dir(fullfile(options.outDir, '*.html'));
for idx = 1:length(files)
  add_frontmatter(options.outDir, files(idx), 'examples');
end


%%
if check_option(varargin,'checkLinks')
  deadlink(mtexDocFiles,{funRefOut,docOut});
end

%% set back mtex options

setMTEXpref('generatingHelpMode',false);
mtex_progress = 1;

end


function add_frontmatter(dir, file, name)
% this can be done more efficently within the xsl
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
