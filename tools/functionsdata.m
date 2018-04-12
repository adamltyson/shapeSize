function [sizeofscreen, numoftrials, bkgrndshapecol, fs, lw, screen] = functionsdata(exp_info)
%functionsdata.m
%assigns variables for later functions

sizeofscreen=[];  % sets default screen size to fill screen with window, [] for max dimensions
numoftrials=exp_info(2); %number of trials per block
bkgrndshapecol=128; % set colour of background (non tested) and centre shapes to grey
fs=15; %set font size to 15
lw=4; %set shape line width to 4
screen=0; %set main screen to 0, (can be changed to use screen other than main monitor)
end

