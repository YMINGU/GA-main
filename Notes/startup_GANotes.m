function startup_GANotes
% init LAMP-Solar session
%
% This is the startup file for LAMP-Solar. In general it is not necessary to 
% edit this file. The startup options of LAMP-Solar can be edited in the file
% LAMPsolar_settings.m in this directory.
%
% clc

if  MATLABverLessThan('7.1')
  
  error(['LAMP-Solar cannot be installed because your MATLAB version ',version,...
    ' is outdated and not longer supported by LAMP-Solar. The oldest MATLAB ',...
    'version LAMP-Solar has been tested on is 7.1.']);
end

local_path = fileparts(mfilename('fullpath'));

%% setup search path 

setLAMPsolarPath(local_path);
p();

end

%% set LAMP-Solar search path
function setLAMPsolarPath(local_path)

% obligatory paths
  %{'solar_input' 'test'},...
  
toadd = { {''}, ... 
  {'Rectangle'}};

for k=1:length(toadd)
  addpath(fullfile(local_path,toadd{k}{:}),0);
end

% compatibility path
comp = dir(fullfile(local_path,'tools','compatibility','ver*'));

for k=1:length(comp)
  if MATLABverLessThan(comp(k).name(4:end))
    addpath(genpath(fullfile(local_path,'tools','compatibility',comp(k).name)),0);
  end
end

if MATLABverLessThan('7.3'), make_bsx_mex;end

%addpath_recurse(fullfile(local_path,'help','UsersGuide'));

end

%% check MATLAB version 
function result = MATLABverLessThan(verstr)

MATLABver = ver('MATLAB');

toolboxParts = getParts(MATLABver(1).Version);
verParts = getParts(verstr);

result = (sign(toolboxParts - verParts) * [1; .1; .01]) < 0;

end

function parts = getParts(V)
parts = sscanf(V, '%d.%d.%d')';
if length(parts) < 3
  parts(3) = 0; % zero-fills to 3 elements
end
end

function p()
  fprintf('\b.\r');
end


function hline(st)
if nargin < 1, st = '*'; end
disp(repmat(st,1,80));
end
