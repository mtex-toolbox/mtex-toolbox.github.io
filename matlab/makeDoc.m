function makeDoc(varargin)

addpath ../../makeDoc; DocHelpInstall;

dispPerm('start building documentation ...')

% build help with the DocHelp Toolbox
%

if check_option(varargin,'clear') && ...
    strcmpi(input('Really want to remove all files? Y/N [N]:','s'),'Y')
  !rm -r ../pages/function_reference_matlab/*
  !rm -r ../pages/documentation_matlab/*
  !rm -r ./tmp/*

  % clear all data
  mtexdata clear

  % and reload them again
  allData = mtexdata;
  for str = allData.'
    disp("loading " + char(str))
    mtexdata(char(str),'silent')
  end
end

%% settings

mtex_settings
close all
setMTEXpref('FontSize',13)
setMTEXpref('figSize',0.5)

setMTEXpref('generatingHelpMode',true);
global mtex_progress; mtex_progress = 0; %#ok<GVMIS>
set(0,'FormatSpacing','compact')
set(0,'DefaultFigureColor','white');

options.tmpDir = fullfile(pwd,'tmp');
options.imageDir = fullfile(pwd,'..','images');
options.LaTex = 'mathJax';
options.publishSettings.stylesheet = fullfile(pwd,'web.xsl');
options.force = check_option(varargin,'force');

options.xml.toolbox.versionName.Text = getMTEXpref('version');
options.xml.toolbox.name.Text = 'MTEX';
options.xml.toolbox.fullname.Text = '<b>MTEX</b> - A MATLAB Toolbox for Quantitative Texture Analysis';
options.xml.toolbox.lastUpdated.Text = date;

doAll = ~check_option(varargin,{'ref','doc','examples'});

%% Publish Function Reference

if doAll || check_option(varargin,'ref')

  % define source files
  mtexFunctionFiles = [...
    DocFile( fullfile(mtex_path,'S2Fun')) ...
    DocFile( fullfile(mtex_path,'SO3Fun')) ...
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

  % publish files
  funOut = fullfile(pwd,'..','pages','function_reference_matlab');
  options.outDir = funOut;
  options.xml.toolbox.folder.Text = 'function_reference';

  options.force = check_option(varargin,'force');
  publish(mtexFunctionFiles,options);

end

%% Publish Doc

if doAll || check_option(varargin,'doc')

  % define source files
  mtexDocFiles = DocFile( fullfile(mtex_path,'doc'));
  mtexDocFiles = exclude(mtexDocFiles,'makeDoc','html','FunctionReference');

  % make sidebar
  makeHelpToc(mtexDocFiles,'Documentation','doc.xml');
  xml2yml('doc.xml','../_data/sidebars/documentation_sidebar.yml','Topics')

  % publish files
  docOut = fullfile(pwd,'..','pages','documentation_matlab');
  options.outDir = docOut;
  options.xml.toolbox.folder.Text = 'documentation';

  publish(mtexDocFiles,options);
end

%% make examples

if doAll || check_option(varargin,'examples')

  % define source files
  mtexExFiles = DocFile( fullfile(mtex_path,'..','examples'));
  mtexExFiles = exclude(mtexExFiles,'JAC-Creuziger');


  % make sidebar
  makeHelpToc(mtexExFiles,'Examples','examples.xml');
  xml2yml('examples.xml','../_data/sidebars/examples_sidebar.yml','Examples')

  % publish files
  exOut = fullfile(pwd,'..','pages','examples_matlab');
  options.outDir = exOut;
  options.xml.toolbox.folder.Text = 'examples';
  options.publishSettings.stylesheet = fullfile(pwd,'examples.xsl');

  publish(mtexExFiles,options);
end

%% check links

if check_option(varargin,'checkLinks')
  deadlink([mtexFunctionFiles,mtexDocFiles,mtexExFiles], {funOut,docOut,exOut}); 
end

%% set back mtex options

setMTEXpref('generatingHelpMode',false);
mtex_progress = 1;

end


