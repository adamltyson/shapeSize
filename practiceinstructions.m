function  practiceinstructions(screen1, fs, width, height)
%practiceinstructions.m
%displays instructions to the subject for the practice block


Screen('TextFont',screen1, 'Courier New'); %Choose font 
Screen('TextSize',screen1, fs ); %Choose font size
Screen('DrawText', screen1, ('The practice block is about to begin,'), width/10, height/10, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Please read the instructions carefully.'), width/10, (height/10)+50, [240 248 255]);%Draw text 
Screen('DrawText', screen1, ('Press any key to continue.'), width/10, (height/10)+100, [240 248 255]);%Draw text  
Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %Flip onto screen


KbWait;
pause(0.5);
Screen('TextFont',screen1, 'Courier New'); %Choose font 
Screen('TextSize',screen1, fs ); %Choose font size
Screen('DrawText', screen1, ('Instructions:'), width/100, height/100, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Please look at the centre circle,'), width/100, height/100+40, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Press up or down when you see the red circle around it'), width/100, (height/100)+60, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Please press up, if the red circle is larger,'), width/100, (height/100)+90, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Press down if the red circle is smaller'), width/100, (height/100)+110, [240 248 255]);%Draw text  
Screen('DrawText', screen1, ('Press any key when ready'), width/100, (height/100)+180, [240 248 255]);%Draw text 

Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %Flip onto screen

KbWait;
pause(1);

end

