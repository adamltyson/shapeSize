%shape_size_main_program.m

%Requires the user to input the subject and experimental information,
%displays the stimulus for each stimulus condition to the subject, then
%records and exports response data along with the subject information to
%Excel


clear all; % clear workspace
close all; % closes all figures
clc; % clears command window

subject_info=collect_subject_info;   % calls function to collect subject information
clc %clears command window for next set of inputs
exp_info=collect_exp_info; % calls function to collect experiment information
clc %clears command window again


trialconds=trial_conds(exp_info); %calls function to set a value (0, 1 or 2) corresponding to each possible stimulus type, to determine whether or not they are displayed
[colours, shapes] =set_cols_shapes;  % calls function to set the colour and shape data for each possible stimulus type
[sizeofscreen, numoftrials, bkgrndshapecol, fs, lw, screen] = functionsdata(exp_info); %calls function to set certain variables
try  %run script as long as no errors occur
    

    if exp_info(6)==121;  %if response is y (for development mode)
    Screen('Preference', 'SkipSyncTests', 1); %skip sync tests for development
    Screen('Preference', 'SuppressAllWarnings', 1); %suppress warnings for development (enable to monitor PTB problems)
    sizeofscreen=[20 20 820 620]; % sets Psychtoolbox screen size to small window for development
    end
 
    [screen1,rect]=Screen('OpenWindow',screen, 0, sizeofscreen); %open screen of set dimensions on screen 0, (outside displaystim function to keep window open between blocks)
    HideCursor; %hide mouse cursor for experiment
    ListenChar(2); %suppress keyboard output to command window
    width=rect(3);  % assigns width (in pixels) of the screen to width
    height=rect(4);  % assigns height (in pixels) of the screen to height

if exp_info(5)==121; %if practice block required
    practiceinstructions(screen1, fs, width, height) % call function to display information about the practice block to the subject
    displaystim(5, bkgrndshapecol, [255 0 0], 1, fs, lw, screen1, rect, width, height); %calls function to display stimuli, for one practice block of 5 red circles
end

      stim_counter=0; % initalises variable
      
    for a=1:9;   %loop for 1 to 9 (number of possible stimuli)
        if trialconds(a)==2;  %if both colour and shape required
            shape=shapes(a);  %sets required shape for function
            colour=colours(a); %sets required colour for function
        stim_counter=stim_counter+1; % counts how many different stimulus have been displayed (to allow correct text to be shown in displaystim function
            
       for blox=1:exp_info(1); %sets loop to repeat for number of blocks
           
           [shapetype, shapecolour, colourtext] = displayinfo(shape, colour); %call function to assign display variables
            displayinstructions(blox, stim_counter, screen1, fs, width, height, shapetype, colourtext); %call function to display information to the subject
          [num_correct, avtime] = displaystim(numoftrials, bkgrndshapecol, shapecolour, shape, fs, lw, screen1, rect, width, height); %calls function to display stimuli, and returns results
   
        blk_res_correct(blox)=num_correct; % sets the blox'th element of the variable as the number of correct responses from the block
        blk_res_avtime(blox)=avtime;  % sets the blox'th element of the variable as the average response time from the block
        pause(0.5) %pause before next stimulus condition
       
       end
       
       results_correct(a,:)=blk_res_correct; %sets the ath row of the matrix, as the vector of the number of correct responses
       results_avtime(a,:)=blk_res_avtime; %sets the ath row of the matrix, as the vector of the average response time
      
        end
        
    end
    ListenChar(0); %Reset back to default setting, allows keyboard input to the command window

ShowCursor; % show mouse cursor again
Screen('Close', screen1); %close screen


writeresults(subject_info,exp_info, results_correct, results_avtime) %calls function to write results to excel
  
catch % if error occurs
    Screen('CloseAll'); % close screen
    Priority(0); % reset priority back to lowest
    ShowCursor
end
