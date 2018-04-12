function displayinstructions(blox, stim_counter, screen1, fs, width, height, shapetype, colourtext)
%displayinstructions.m
%   displays information to the subject


if blox==1&&stim_counter==1; %if first block, display text

Screen('TextFont',screen1, 'Courier New'); %Choose font 
Screen('TextSize',screen1, fs ); %Choose font size
Screen('DrawText', screen1, ('The main experiment is about to begin'), width/100, height/100, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Please read the instructions carefully.'), width/100, height/100+40, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Press any key to continue'), width/100, height/100+100, [240 248 255]);%Draw text  

Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %Flip onto screen

elseif blox==1&&stim_counter~=1; %if first block of a new stimulus type, display text

Screen('TextFont',screen1, 'Courier New'); %Choose font 
Screen('TextSize',screen1, fs ); %Choose font size
Screen('DrawText', screen1, ('Thankyou, please take a break'), width/100, height/100, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('The stimulus will now change,'), width/100, height/100+40, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('please read the instructions carefully.'), width/100, height/100+60, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Press any key to continue'), width/100, height/100+100, [240 248 255]);%Draw text  

Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %Flip onto screen
end

KbWait;%wait for subject response
pause(0.3);


if blox>1; %if not the first block, display text

Screen('TextFont',screen1, 'Courier New'); %Choose font 
Screen('TextSize',screen1, fs ); %Choose font size
Screen('DrawText', screen1, ('Thankyou, please take a short break before the next block.'), width/100, height/100, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Press any key when ready'), width/100, height/100+40, [240 248 255]);%Draw text  
Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %Flip onto screen

KbWait;
pause(0.3);
end


Screen('TextFont',screen1, 'Courier New'); %Choose font 
Screen('TextSize',screen1, fs ); %Choose font size
Screen('DrawText', screen1, ('Instructions:'), width/100, height/100, [240 248 255]);%Draw text  
Screen('DrawText', screen1, (['Please look at the centre ' shapetype ',']), width/100, height/100+40, [240 248 255]);%Draw text  
Screen('DrawText', screen1, (['Press up or down when you see the ' colourtext ' ' shapetype ' around it']), width/100, (height/100)+60, [240 248 255]);%Draw text  
Screen('DrawText', screen1, (['Please press up, if the ' colourtext ' ' shapetype ' is larger,']), width/100, (height/100)+90, [240 248 255]);%Draw text  
Screen('DrawText', screen1, (['Press down if the ' colourtext ' ' shapetype ' is smaller']), width/100, (height/100)+110, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Press any key when ready'), width/100, (height/100)+180, [240 248 255]);%Draw text 

Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %Flip onto screen

KbWait;
pause(0.5);

Screen('TextFont',screen1, 'Courier New'); %Choose font 
Screen('TextSize',screen1, fs ); %Choose font size
Screen('DrawText', screen1, ('Get Ready'), width/10, height/3, [240 248 255]);%Draw text  

Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %Flip onto screen
pause(1);
end

