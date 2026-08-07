function makeDoc(varargin)

obj = onCleanup(@delete);

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

% figure sizes are a fraction of the screen, so without this every figure
% would come out at whatever size the monitor of the machine running the
% build happens to imply - and the whole of ../images would change as soon
% as the documentation is rebuilt elsewhere. 1920x1200 is what the images
% currently in the repository were rendered at.
setMTEXpref('screenSize',[1920 1200])

% the maps in the documentation do not carry the reference frame indicator
% in their scale bar - the pages that are about the axes alignment ask for
% it explicitly with 'refFrame','on'
setMTEXpref('showRefFrame','off')

setMTEXpref('generatingHelpMode',true);
global mtex_progress; mtex_progress = 0; %#ok<GVMIS>
set(0,'FormatSpacing','compact')
set(0,'DefaultFigureColor','white');

% resolved here because publishing runs from tmpDir
revertScript = fullfile(pwd,'..','tools','revert-unchanged-images.py');

options.tmpDir = fullfile(pwd,'tmp');
options.imageDir = fullfile(pwd,'..','images');
options.logFile = fullfile(pwd,'publish_log.txt');
options.LaTex = 'mathJax';
options.publishSettings.stylesheet = fullfile(pwd,'web.xsl');
options.force = check_option(varargin,'force');

% by default the figures show up on screen while they are being published
options.showFigures = ~check_option(varargin,'hideFigures');

% pages whose figures differ from the committed ones are republished even when
% their source has not changed - such an image is normally the trace of an MTEX
% bug that was found and fixed in between, and re-rendering re-tests it against
% the current toolbox. The list is taken once, here, because publishing dirties
% ../images itself and a later query would see this run's own output.
% See ../CLAUDE.md.
if check_option(varargin,'skipDirtyImages')
  options.forceDoc = {};
else
  options.forceDoc = dirtyImagePages;
  if ~isempty(options.forceDoc)
    dispPerm(sprintf('%d page(s) have uncommitted images and will be republished', ...
      numel(options.forceDoc)));
  end
end

options.xml.toolbox.versionName.Text = getMTEXpref('version');
options.xml.toolbox.name.Text = 'MTEX';
options.xml.toolbox.fullname.Text = '<b>MTEX</b> - A MATLAB Toolbox for Quantitative Texture Analysis';
options.xml.toolbox.lastUpdated.Text = date;

doAll = ~check_option(varargin,{'ref','doc','examples'});

% restrict the build to single pages or folders, e.g.
%
%   makeDoc('file','EBSDTutorial')
%   makeDoc('doc','file','Plotting')
%
% the pattern is matched against the full source path, so a page name, a
% folder or a full path all work. This implies 'force' - the point of naming
% a page is to rebuild it, and it would otherwise be skipped whenever it is
% not newer than its html. The sidebars are left untouched, since they can
% only be regenerated from the complete file list.
restrictTo = ensurecell(get_option(varargin,'file',{}));
doSidebars = isempty(restrictTo);
options.force = options.force || ~doSidebars;

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
  if doSidebars
    makeHelpToc(mtexFunctionFiles,'FunctionReference','funcRef.xml');
    xml2yml('funcRef.xml','../_data/sidebars/function_reference_sidebar.yml','Functions')
  end

  % publish files
  funOut = fullfile(pwd,'..','pages','function_reference_matlab');
  options.outDir = funOut;
  options.xml.toolbox.folder.Text = 'function_reference';

  publish(select(mtexFunctionFiles,restrictTo{:}),options);

end

%% Publish Doc

if doAll || check_option(varargin,'doc')

  % define source files
  mtexDocFiles = DocFile( fullfile(mtex_path,'doc'));
  mtexDocFiles = exclude(mtexDocFiles,'makeDoc','html','FunctionReference');

  % make sidebar
  if doSidebars
    makeHelpToc(mtexDocFiles,'Documentation','doc.xml');
    xml2yml('doc.xml','../_data/sidebars/documentation_sidebar.yml','Topics')
  end

  % publish files
  docOut = fullfile(pwd,'..','pages','documentation_matlab');
  options.outDir = docOut;
  options.xml.toolbox.folder.Text = 'documentation';

  publish(select(mtexDocFiles,restrictTo{:}),options);
end

%% make examples

if doAll || check_option(varargin,'examples')

  % define source files
  mtexExFiles = DocFile( fullfile(mtex_path,'..','examples'));
  mtexExFiles = exclude(mtexExFiles,'JAC-Creuziger');


  % make sidebar
  if doSidebars
    makeHelpToc(mtexExFiles,'Examples','examples.xml');
    xml2yml('examples.xml','../_data/sidebars/examples_sidebar.yml','Examples')
  end

  % publish files
  exOut = fullfile(pwd,'..','pages','examples_matlab');
  options.outDir = exOut;
  options.xml.toolbox.folder.Text = 'examples';
  options.publishSettings.stylesheet = fullfile(pwd,'examples.xsl');

  publish(select(mtexExFiles,restrictTo{:}),options);
end

%% revert images that were only re-rendered, not really changed

% publishing overwrites every figure it draws, but most re-renders show the
% very same picture - see ../CLAUDE.md. Restoring those from git keeps the
% change set of ../images meaningful as a test of what the toolbox does.
if ~check_option(varargin,'keepImages')

  dispPerm('reverting images that did not really change ...')

  [status,out] = system(['python3 "' revertScript '"']);

  disp(out);
  if status ~= 0
    warning('MTEX:makeDoc','could not revert unchanged images');
  end
end

%% check links

if check_option(varargin,'checkLinks')
  deadlink([mtexFunctionFiles,mtexDocFiles,mtexExFiles], {funOut,docOut,exOut});
end

%% set back mtex options

end

function delete

global mtex_progress;
setMTEXpref('generatingHelpMode',false);
setMTEXpref('screenSize',[]);
setMTEXpref('showRefFrame','on');
mtex_progress = 1;

end

function pages = dirtyImagePages
% doc names whose images differ from the committed version
%
% The same predicate as tools/revert-unchanged-images.py, so that what that
% script leaves modified is exactly what gets republished next time. git runs
% against the parent directory because makeDoc runs from matlab/.
%
% --no-pager is essential, not tidiness: MATLAB's system() leaves a terminal
% attached to the child, so `git diff` starts `less` and then waits for it
% forever - the build hangs with no output at all. The python script does not
% need this because subprocess gives git a pipe instead.

pages = {};
[status,out] = system('git --no-pager -C .. diff --name-only --diff-filter=M -- "images/*.png"');
if status ~= 0
  warning('MTEX:makeDoc','could not determine which images are modified');
  return
end

files = strsplit(strtrim(out),newline);
files = files(~cellfun('isempty',files));
if isempty(files), return; end

% publish names every figure <docName>_NN.png, so the prefix is the doc name:
% images/GND_04.png -> GND, images/EBSD.plot_02.png -> EBSD.plot. Anything the
% pattern leaves unchanged is not a published figure and is dropped.
pages = regexprep(files,'^images/(.*)_\d+\.png$','$1');
pages = unique(pages(~strcmp(pages,files)));

end

