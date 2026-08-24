function makeDoc(varargin)
% build the MTEX homepage documentation with the DocHelp toolbox
%
% Syntax
%
%   makeDoc                        % everything: function reference, doc, examples
%   makeDoc('doc')                 % only the documentation pages
%   makeDoc('ref','force')         % only the function reference, rebuild all pages
%   makeDoc('doc','file','Plotting')  % only pages matching 'Plotting'
%
% Options
%  file - restrict the build to the pages matching this pattern
%
% Flags
%  ref             - publish the function reference
%  doc             - publish the documentation pages
%  examples        - publish the examples
%  force           - republish also pages whose source did not change
%  markPublished   - do not publish, only record the pages as built from the
%                    sources as they are now (asks back), see DocFile/markPublished
%  clear           - remove all published pages and cached data first (asks back)
%  skipDirtyImages - do not republish pages with uncommitted images
%  keepImages      - do not revert images that were only re-rendered
%  checkLinks      - report dead links in the published html
%
% Description
%
% Without any of the flags |ref|, |doc|, |examples| all three parts are
% published. Naming a page with |file| implies |force| and leaves the
% sidebars untouched, as those can only be generated from the complete file
% list. The pattern is matched against the full source path, so a page name,
% a folder or a full path all work.
%
% Before anything is published the run is announced: how many pages each part
% has selected, how many of them are actually going to be rebuilt, and a
% summary of the options in effect. More than 10 pages to publish asks back
% before starting.
%
% After publishing, images that were re-rendered but did not really change
% are restored from git, see ../CLAUDE.md.
%

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

% the figures pop up on screen while they are being published and there is no
% way around it: MATLAB's publish snapshots only figures whose Visible is 'on'
% (see the comment in ../../makeDoc/@DocFile/publish.m), so a build with hidden
% figures produces pages without images. Publishing on a machine or in a
% MATLAB session that has no display is the only way to keep them away.

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
end

options.xml.toolbox.versionName.Text = getMTEXpref('version');
options.xml.toolbox.name.Text = 'MTEX';
options.xml.toolbox.fullname.Text = '<b>MTEX</b> - A MATLAB Toolbox for Quantitative Texture Analysis';
options.xml.toolbox.lastUpdated.Text = date;

doAll = ~check_option(varargin,{'ref','doc','examples'});
doRef = doAll || check_option(varargin,'ref');
doDoc = doAll || check_option(varargin,'doc');
doExamples = doAll || check_option(varargin,'examples');

% restricting the build to single pages implies 'force' - the point of naming
% a page is to rebuild it, and it would otherwise be skipped whenever its
% source has not changed. The sidebars are left untouched, since they can
% only be regenerated from the complete file list.
restrictTo = ensurecell(get_option(varargin,'file',{}));
doSidebars = isempty(restrictTo);
options.force = options.force || ~doSidebars;

%% collect the files to be published

% the file lists are put together before anything is published, so that the
% run can be announced up front - collecting them is only a directory scan,
% all the time goes into publish further down. Every part keeps both lists:
% the complete one, from which the sidebar has to be built, and the one the
% 'file' option restricts the publishing to.

parts = struct('name',{},'files',{},'toPublish',{},'outDir',{});

if doRef

  mtexFunctionFiles = [...
    DocFile( fullfile(mtex_path,'S1Fun')) ...
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

  funOut = fullfile(pwd,'..','pages','function_reference_matlab');
  refFiles = select(mtexFunctionFiles,restrictTo{:});

  parts = addPart(parts,'function reference',mtexFunctionFiles,refFiles,funOut);

end

if doDoc

  mtexDocFiles = DocFile( fullfile(mtex_path,'doc'));
  mtexDocFiles = exclude(mtexDocFiles,'makeDoc','html','FunctionReference');

  docOut = fullfile(pwd,'..','pages','documentation_matlab');
  docFiles = select(mtexDocFiles,restrictTo{:});

  parts = addPart(parts,'documentation',mtexDocFiles,docFiles,docOut);

end

if doExamples

  mtexExFiles = DocFile( fullfile(mtex_path,'..','examples'));
  mtexExFiles = exclude(mtexExFiles,'JAC-Creuziger');

  exOut = fullfile(pwd,'..','pages','examples_matlab');
  exFiles = select(mtexExFiles,restrictTo{:});

  parts = addPart(parts,'examples',mtexExFiles,exFiles,exOut);

end

%% announce what is going to happen

nPages = dispPlan(parts,options,restrictTo,doSidebars,varargin{:});

%% declare the pages as published instead of publishing them

% for a working copy whose timestamps have been scrambled by branch switches:
% the manifest of published content is empty at first, so the numbers above
% come from the timestamp fallback and ask for a rebuild of nearly everything.
% See DocFile/markPublished - this takes the html on disk to be current.
if check_option(varargin,'markPublished')

  if ~strcmpi(input(sprintf(['Really declare %d page(s) as published ' ...
      'from the sources as they are? Y/N [N]:'],sum(cellfun(@numel,{parts.toPublish}))),'s'),'Y')
    dispPerm('nothing marked')
    return
  end

  for k = 1:numel(parts)
    dispPerm(['  ' parts(k).name]);
    opt = options; opt.outDir = parts(k).outDir;
    markPublished(parts(k).toPublish,opt);
  end
  return

end

% anything beyond a handful of pages is a run of hours - long enough that a
% mistyped 'file' or a forgotten 'force' should be caught here and not when
% the rebuilt pages show up in git status
if nPages > 10 && ...
    ~strcmpi(input(sprintf('Really publish %d pages? Y/N [N]:',nPages),'s'),'Y')
  dispPerm('nothing published')
  return
end

%% Publish Function Reference

if doRef

  % make sidebar
  if doSidebars
    makeHelpToc(mtexFunctionFiles,'FunctionReference','funcRef.xml');
    xml2yml('funcRef.xml','../_data/sidebars/function_reference_sidebar.yml','Functions')
  end

  % publish files
  options.outDir = funOut;
  options.xml.toolbox.folder.Text = 'function_reference';

  publish(refFiles,options);

end

%% Publish Doc

if doDoc

  % make sidebar
  if doSidebars
    makeHelpToc(mtexDocFiles,'Documentation','doc.xml');
    xml2yml('doc.xml','../_data/sidebars/documentation_sidebar.yml','Topics')
  end

  % publish files
  options.outDir = docOut;
  options.xml.toolbox.folder.Text = 'documentation';

  publish(docFiles,options);
end

%% make examples

if doExamples

  % make sidebar
  if doSidebars
    makeHelpToc(mtexExFiles,'Examples','examples.xml');
    xml2yml('examples.xml','../_data/sidebars/examples_sidebar.yml','Examples')
  end

  % publish files
  options.outDir = exOut;
  options.xml.toolbox.folder.Text = 'examples';
  options.publishSettings.stylesheet = fullfile(pwd,'examples.xsl');

  publish(exFiles,options);
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

% only over the parts that were actually built - naming just 'doc' used to run
% into an undefined mtexFunctionFiles here
if check_option(varargin,'checkLinks')
  deadlink([parts.files], {parts.outDir});
end

%% set back mtex options

end

function parts = addPart(parts,name,files,toPublish,outDir)
% one part of the build: all its files, those selected for publishing, target

parts(end+1) = struct('name',name,'files',{files}, ...
  'toPublish',{toPublish},'outDir',outDir);

end

function total = dispPlan(parts,options,restrictTo,doSidebars,varargin)
% announce what the run is going to do before it starts
%
% A full build takes hours, so it is worth seeing up front how many pages are
% about to be rebuilt and under which settings - a typo in 'file' or a
% forgotten 'force' shows up in these numbers and nowhere else. Returns the
% number of pages that are going to be published.

dispPerm(' ');
dispPerm(repmat('-',1,64));

total = 0;
for k = 1:numel(parts)

  % the same question publish asks per file, asked here for all of them
  opt = options; opt.outDir = parts(k).outDir;
  n = nnz(needsPublish(parts(k).toPublish,opt));
  total = total + n;

  dispPerm(sprintf('  %-20s %5d page(s) selected, %5d to publish', ...
    parts(k).name,numel(parts(k).toPublish),n));

end

if numel(parts) > 1
  dispPerm(sprintf('%47s%5d in total','',total));
end

if total == 0
  dispPerm('  nothing to publish - everything is up to date');
end

info = cell(0,2);
if options.force
  info(end+1,:) = {'pages','all selected ones (force)'};
else
  info(end+1,:) = {'pages','only those whose source changed since publishing'};
end

if ~isempty(restrictTo)
  info(end+1,:) = {'restricted to',strjoin(restrictTo,', ')};
end

if check_option(varargin,'skipDirtyImages')
  info(end+1,:) = {'dirty images','left alone (skipDirtyImages)'};
elseif isempty(options.forceDoc)
  info(end+1,:) = {'dirty images','none'};
else
  info(end+1,:) = {'dirty images', ...
    sprintf('%d page(s) republished for them',numel(options.forceDoc))};
end

if doSidebars
  info(end+1,:) = {'sidebars','rebuilt'};
else
  info(end+1,:) = {'sidebars','left untouched'};
end

if check_option(varargin,'keepImages')
  info(end+1,:) = {'images','all kept as rendered (keepImages)'};
else
  info(end+1,:) = {'images','unchanged ones reverted afterwards'};
end

if check_option(varargin,'checkLinks')
  info(end+1,:) = {'dead links','checked afterwards'};
end

info(end+1,:) = {'log file',options.logFile};

dispPerm(' ');
for k = 1:size(info,1)
  dispPerm(sprintf('  %-16s %s',info{k,1},info{k,2}));
end

dispPerm(repmat('-',1,64));
dispPerm(' ');

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

