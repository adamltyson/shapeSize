function [crrct, avtime] = displaystim(numoftrials, bkgrndshapecol, shapecolour, shape, fs, lw, screen1, rect, width, height)
%displaystim
%displays stimulus block depending on input arguements supplied



z=[0 0 0 0 0 0 0 1]; % set all but the last element of z to 0, the 8th to 1, to randomly select one shape to be coloured
crrct=0; %inialise crrct
shapspac=height/(3*(2^0.5)); %assigns shapespacing value to ensure shapes at 45,135,225 degrees etc are the same distance from the centre as the orthogonal shapes

for trials=1:numoftrials;    % sets up loop for each trial
    
a=((randperm(9))*2)+10; %assign random permutation of shape sizes from 12 to 28 to a 
%also makes sure that the test shape is a different size than the centre
%shape, as they are both selected from the same selection of sizes

b=randperm(8);%assigns random permutation of numbers 1 to 8 to b
%use the z array and b to select a random shape to be the test shape

%%%%%%%%%%%%%%%%%%%%%%%%%%%% CIRCLE  %%%%%%%%%%%%%%%%%%%%%%%%%
if shape==1;
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-a(1)) (height/2-a(1)) (width/2+a(1)) (height/2+a(1))], lw ); %draws random size square in the centre of the screen
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-a(2)) (height/6-a(2)) (width/2+a(2)) (height/6+a(2))], lw ); %0 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2+shapspac-a(3)) (height/2-shapspac-a(3)) (width/2+shapspac+a(3)) (height/2-shapspac+a(3))], lw ); %45 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2+ height/3-a(4)) (height/2-a(4)) ((width/2)+height/3+a(4)) (height/2+a(4))], lw ); %90 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2+shapspac-a(5)) (height/2+shapspac-a(5)) (width/2+shapspac+a(5)) (height/2+shapspac+a(5))], lw ); %135 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-a(6)) ((5*height)/6-a(6)) (width/2+a(6)) ((5*height)/6+a(6))], lw ); %180 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-shapspac-a(7)) (height/2+shapspac-a(7)) (width/2-shapspac+a(7)) (height/2+shapspac+a(7))], lw ); %225 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2- height/3-a(8)) (height/2-a(8)) (width/2-height/3+a(8)) (height/2+a(8))], lw ); % 270 degrees 
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-shapspac-a(9)) (height/2-shapspac-a(9)) (width/2-shapspac+a(9)) (height/2-shapspac+a(9))], lw ); % 315 degrees

Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %flip to screen
pause(0.5)
%%%%%%%%%
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-a(1)) (height/2-a(1)) (width/2+a(1)) (height/2+a(1))], lw ); %draws random size square in the centre of the screen
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-a(2)) (height/6-a(2)) (width/2+a(2)) (height/6+a(2))], lw ); %0 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2+shapspac-a(3)) (height/2-shapspac-a(3)) (width/2+shapspac+a(3)) (height/2-shapspac+a(3))], lw ); %45 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2+ height/3-a(4)) (height/2-a(4)) ((width/2)+height/3+a(4)) (height/2+a(4))], lw ); %90 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2+shapspac-a(5)) (height/2+shapspac-a(5)) (width/2+shapspac+a(5)) (height/2+shapspac+a(5))], lw ); %135 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-a(6)) ((5*height)/6-a(6)) (width/2+a(6)) ((5*height)/6+a(6))], lw ); %180 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-shapspac-a(7)) (height/2+shapspac-a(7)) (width/2-shapspac+a(7)) (height/2+shapspac+a(7))], lw ); %225 degrees
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2- height/3-a(8)) (height/2-a(8)) (width/2-height/3+a(8)) (height/2+a(8))], lw ); % 270 degrees 
Screen('FrameOval',screen1,bkgrndshapecol, [(width/2-shapspac-a(9)) (height/2-shapspac-a(9)) (width/2-shapspac+a(9)) (height/2-shapspac+a(9))], lw ); % 315 degrees

%%%%%%

if z(b(1))==1
    Screen('FrameOval',screen1,shapecolour, [(width/2-a(2)) (height/6-a(2)) (width/2+a(2)) (height/6+a(2))], lw ); %0 degrees
elseif z(b(2))==1
    Screen('FrameOval',screen1,shapecolour, [(width/2+shapspac-a(3)) (height/2-shapspac-a(3)) (width/2+shapspac+a(3)) (height/2-shapspac+a(3))], lw ); %45 degrees
elseif z(b(3))==1
    Screen('FrameOval',screen1,shapecolour, [(width/2+ height/3-a(4)) (height/2-a(4)) ((width/2)+height/3+a(4)) (height/2+a(4))], lw ); %90 degrees
elseif z(b(4))==1
    Screen('FrameOval',screen1,shapecolour, [(width/2+shapspac-a(5)) (height/2+shapspac-a(5)) (width/2+shapspac+a(5)) (height/2+shapspac+a(5))], lw ); %135 degrees
elseif z(b(5))==1
    Screen('FrameOval',screen1,shapecolour, [(width/2-a(6)) ((5*height)/6-a(6)) (width/2+a(6)) ((5*height)/6+a(6))], lw ); %180 degrees
elseif z(b(6))==1
    Screen('FrameOval',screen1,shapecolour, [(width/2-shapspac-a(7)) (height/2+shapspac-a(7)) (width/2-shapspac+a(7)) (height/2+shapspac+a(7))], lw ); %225 degrees
elseif z(b(7))==1
    Screen('FrameOval',screen1,shapecolour, [(width/2- height/3-a(8)) (height/2-a(8)) (width/2-height/3+a(8)) (height/2+a(8))], lw ); % 270 degrees 
elseif z(b(8))==1
    Screen('FrameOval',screen1,shapecolour, [(width/2-shapspac-a(9)) (height/2-shapspac-a(9)) (width/2-shapspac+a(9)) (height/2-shapspac+a(9))], lw ); % 315 degrees

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


elseif shape==2
%%%%%%%%%%%%%%%%%%%%%%%%%%%% SQUARE  %%%%%%%%%%%%%%%%%%%%%%%%%
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-a(1)) (height/2-a(1)) (width/2+a(1)) (height/2+a(1))], lw ); %draws random size square in the centre of the screen
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-a(2)) (height/6-a(2)) (width/2+a(2)) (height/6+a(2))], lw ); %0 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2+shapspac-a(3)) (height/2-shapspac-a(3)) (width/2+shapspac+a(3)) (height/2-shapspac+a(3))], lw ); %45 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2+ height/3-a(4)) (height/2-a(4)) ((width/2)+height/3+a(4)) (height/2+a(4))], lw ); %90 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2+shapspac-a(5)) (height/2+shapspac-a(5)) (width/2+shapspac+a(5)) (height/2+shapspac+a(5))], lw ); %135 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-a(6)) ((5*height)/6-a(6)) (width/2+a(6)) ((5*height)/6+a(6))], lw ); %180 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-shapspac-a(7)) (height/2+shapspac-a(7)) (width/2-shapspac+a(7)) (height/2+shapspac+a(7))], lw ); %225 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2- height/3-a(8)) (height/2-a(8)) (width/2-height/3+a(8)) (height/2+a(8))], lw ); % 270 degrees 
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-shapspac-a(9)) (height/2-shapspac-a(9)) (width/2-shapspac+a(9)) (height/2-shapspac+a(9))], lw ); % 315 degrees

Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %flip to screen
pause(0.5)
%%%%%%
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-a(1)) (height/2-a(1)) (width/2+a(1)) (height/2+a(1))], lw ); %draws random size square in the centre of the screen
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-a(2)) (height/6-a(2)) (width/2+a(2)) (height/6+a(2))], lw ); %0 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2+shapspac-a(3)) (height/2-shapspac-a(3)) (width/2+shapspac+a(3)) (height/2-shapspac+a(3))], lw ); %45 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2+ height/3-a(4)) (height/2-a(4)) ((width/2)+height/3+a(4)) (height/2+a(4))], lw ); %90 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2+shapspac-a(5)) (height/2+shapspac-a(5)) (width/2+shapspac+a(5)) (height/2+shapspac+a(5))], lw ); %135 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-a(6)) ((5*height)/6-a(6)) (width/2+a(6)) ((5*height)/6+a(6))], lw ); %180 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-shapspac-a(7)) (height/2+shapspac-a(7)) (width/2-shapspac+a(7)) (height/2+shapspac+a(7))], lw ); %225 degrees
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2- height/3-a(8)) (height/2-a(8)) (width/2-height/3+a(8)) (height/2+a(8))], lw ); % 270 degrees 
Screen('FrameRect',screen1,bkgrndshapecol, [(width/2-shapspac-a(9)) (height/2-shapspac-a(9)) (width/2-shapspac+a(9)) (height/2-shapspac+a(9))], lw ); % 315 degrees

%%%%%%

if z(b(1))==1
    Screen('FrameRect',screen1,shapecolour, [(width/2-a(2)) (height/6-a(2)) (width/2+a(2)) (height/6+a(2))], lw ); %0 degrees
elseif z(b(2))==1
    Screen('FrameRect',screen1,shapecolour, [(width/2+shapspac-a(3)) (height/2-shapspac-a(3)) (width/2+shapspac+a(3)) (height/2-shapspac+a(3))], lw ); %45 degrees
elseif z(b(3))==1
    Screen('FrameRect',screen1,shapecolour, [(width/2+ height/3-a(4)) (height/2-a(4)) ((width/2)+height/3+a(4)) (height/2+a(4))], lw ); %90 degrees
elseif z(b(4))==1
    Screen('FrameRect',screen1,shapecolour, [(width/2+shapspac-a(5)) (height/2+shapspac-a(5)) (width/2+shapspac+a(5)) (height/2+shapspac+a(5))], lw ); %135 degrees
elseif z(b(5))==1
    Screen('FrameRect',screen1,shapecolour, [(width/2-a(6)) ((5*height)/6-a(6)) (width/2+a(6)) ((5*height)/6+a(6))], lw ); %180 degrees
elseif z(b(6))==1
    Screen('FrameRect',screen1,shapecolour, [(width/2-shapspac-a(7)) (height/2+shapspac-a(7)) (width/2-shapspac+a(7)) (height/2+shapspac+a(7))], lw ); %225 degrees
elseif z(b(7))==1
    Screen('FrameRect',screen1,shapecolour, [(width/2- height/3-a(8)) (height/2-a(8)) (width/2-height/3+a(8)) (height/2+a(8))], lw ); % 270 degrees 
elseif z(b(8))==1
    Screen('FrameRect',screen1,shapecolour, [(width/2-shapspac-a(9)) (height/2-shapspac-a(9)) (width/2-shapspac+a(9)) (height/2-shapspac+a(9))], lw ); % 315 degrees



end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%% TRIANGLE %%%%%%%%%%%%%%%%%%
elseif shape==3;
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(1) (height/2)+a(1); (width/2) (height/2)-a(1); (width/2)+a(1) (height/2)+a(1) ], lw ); %draws random size square in the centre of the screen
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(2) (height/6)+a(2); (width/2) (height/6)-a(2); (width/2)+a(2) (height/6)+a(2); ], lw ); %0 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(3)+shapspac (height/2)+a(3)-shapspac; (width/2)+shapspac (height/2)-shapspac-a(3); (width/2)+shapspac+a(3) (height/2)+a(3)-shapspac; ], lw ); % 45 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(4)+height/3 (height/2)+a(4); (width/2)+height/3 (height/2)-a(4); (width/2)+(height/3)+a(4) (height/2)+a(4)], lw ); % 90 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)+shapspac-a(5) (height/2)+shapspac+a(5); (width/2)+shapspac (height/2)+shapspac-a(5); (width/2)+shapspac+a(5) (height/2)+shapspac+a(5) ], lw ); % 135 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(6) (5*height/6)+a(6); (width/2) (5*height/6)-a(6); (width/2)+a(6) (5*height/6)+a(6); ], lw ); % 180 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-shapspac-a(7) (height/2)+shapspac+a(7); (width/2)-shapspac (height/2)+shapspac-a(7); (width/2)-shapspac+a(7) (height/2)+shapspac+a(7) ], lw ); % 225 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(8)-height/3 (height/2)+a(8); (width/2)-height/3 (height/2)-a(8); (width/2)-(height/3)+a(8) (height/2)+a(8) ], lw ); % 270 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-shapspac-a(9) (height/2)-shapspac+a(9); (width/2)-shapspac (height/2)-shapspac-a(9); (width/2)-shapspac+a(9) (height/2)-shapspac+a(9); ], lw ); % 315 degrees
Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %flip to screen
pause(0.5)
%%%%%%
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(1) (height/2)+a(1); (width/2) (height/2)-a(1); (width/2)+a(1) (height/2)+a(1) ], lw ); %draws random size square in the centre of the screen
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(2) (height/6)+a(2); (width/2) (height/6)-a(2); (width/2)+a(2) (height/6)+a(2); ], lw ); %0 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(3)+shapspac (height/2)+a(3)-shapspac; (width/2)+shapspac (height/2)-shapspac-a(3); (width/2)+shapspac+a(3) (height/2)+a(3)-shapspac; ], lw ); % 45 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(4)+height/3 (height/2)+a(4); (width/2)+height/3 (height/2)-a(4); (width/2)+(height/3)+a(4) (height/2)+a(4)], lw ); % 90 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)+shapspac-a(5) (height/2)+shapspac+a(5); (width/2)+shapspac (height/2)+shapspac-a(5); (width/2)+shapspac+a(5) (height/2)+shapspac+a(5) ], lw ); % 135 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(6) (5*height/6)+a(6); (width/2) (5*height/6)-a(6); (width/2)+a(6) (5*height/6)+a(6); ], lw ); % 180 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-shapspac-a(7) (height/2)+shapspac+a(7); (width/2)-shapspac (height/2)+shapspac-a(7); (width/2)-shapspac+a(7) (height/2)+shapspac+a(7) ], lw ); % 225 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-a(8)-height/3 (height/2)+a(8); (width/2)-height/3 (height/2)-a(8); (width/2)-(height/3)+a(8) (height/2)+a(8) ], lw ); % 270 degrees
Screen('FramePoly',screen1,bkgrndshapecol, [(width/2)-shapspac-a(9) (height/2)-shapspac+a(9); (width/2)-shapspac (height/2)-shapspac-a(9); (width/2)-shapspac+a(9) (height/2)-shapspac+a(9); ], lw ); % 315 degrees


 %%%%%%

if z(b(1))==1
Screen('FramePoly',screen1,shapecolour, [(width/2)-a(2) (height/6)+a(2); (width/2) (height/6)-a(2); (width/2)+a(2) (height/6)+a(2); ], lw ); %0 degrees
elseif z(b(2))==1
Screen('FramePoly',screen1,shapecolour, [(width/2)-a(3)+shapspac (height/2)+a(3)-shapspac; (width/2)+shapspac (height/2)-shapspac-a(3); (width/2)+shapspac+a(3) (height/2)+a(3)-shapspac], lw ); % 45 degrees
elseif z(b(3))==1
Screen('FramePoly',screen1,shapecolour, [(width/2)-a(4)+height/3 (height/2)+a(4); (width/2)+height/3 (height/2)-a(4); (width/2)+(height/3)+a(4) (height/2)+a(4)], lw ); % 90 degrees
elseif z(b(4))==1
Screen('FramePoly',screen1,shapecolour, [(width/2)+shapspac-a(5) (height/2)+shapspac+a(5); (width/2)+shapspac (height/2)+shapspac-a(5); (width/2)+shapspac+a(5) (height/2)+shapspac+a(5) ], lw ); % 135 degrees
elseif z(b(5))==1
Screen('FramePoly',screen1,shapecolour, [(width/2)-a(6) (5*height/6)+a(6); (width/2) (5*height/6)-a(6); (width/2)+a(6) (5*height/6)+a(6); ], lw ); % 180 degrees
elseif z(b(6))==1
Screen('FramePoly',screen1,shapecolour, [(width/2)-shapspac-a(7) (height/2)+shapspac+a(7); (width/2)-shapspac (height/2)+shapspac-a(7); (width/2)-shapspac+a(7) (height/2)+shapspac+a(7) ], lw ); % 225 degrees
elseif z(b(7))==1
Screen('FramePoly',screen1,shapecolour, [(width/2)-a(8)-height/3 (height/2)+a(8); (width/2)-height/3 (height/2)-a(8); (width/2)-(height/3)+a(8) (height/2)+a(8) ], lw ); % 270 degrees
elseif z(b(8))==1
Screen('FramePoly',screen1,shapecolour, [(width/2)-shapspac-a(9) (height/2)-shapspac+a(9); (width/2)-shapspac (height/2)-shapspac-a(9); (width/2)-shapspac+a(9) (height/2)-shapspac+a(9); ], lw ); % 315 degrees

end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FlushEvents('keyDown');

Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %flip to screen

KbName('UnifyKeyNames'); %Used To Unify keyboard keys across computers
startSecs  = GetSecs;  %read time (absolute)
 
 
 
while ~KbCheck; 
end % wait for a key press
  
[~, Time, keyCode ] = KbCheck;  %Store details about the keypressed
RelTime = Time -startSecs; % Compute time difference
Screen('PutImage', screen1, 0, rect); % clear screen to black
Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %flip to screen

for i=1:8    %for 1 to 8 (each surrounding square)
    
    if z(b(i))==1;  %if square is the coloured one
        halfwidthcol=a(i+1);  %then assign size of coloured square to halfwidthcol (i+1, to ignore first, centre square)
    end
end


if halfwidthcol>a(1)&&keyCode(38)==1; %if larger and correct, increase score by one
    crrct=crrct+1;
elseif halfwidthcol<a(1)&&keyCode(40)==1; % if smaller and correct, increase score by one
   crrct=crrct+1;  
end

totaltime(trials)=RelTime;   %assign each reaction time to different element of the array, totaltime
pause(1); %pause for one second (change to waitsecs????)
end


avtime=mean(totaltime); %assign the average time taken to a label

Screen('TextFont',screen1, 'Courier New'); %Choose font 
Screen('TextSize',screen1, fs ); %Choose font size
Screen('DrawText', screen1, (['you got ' num2str(crrct) ' out of ' num2str(numoftrials) ' correct']), width/10, height/10, [240 248 255]);%Draw text  eg(you got 4 out of 5 correct)
Screen('DrawText', screen1, (['your average reaction time was ' num2str(avtime) ' seconds']), width/10, (height/10)+100, [240 248 255]);%Draw text eg( your average reaction tme was 2 seconds)
Screen('DrawText', screen1, ('Press any key'), width/10, (height/10)+300, [240 248 255]);%Draw text eg( your average reaction tme was 2 seconds)
Screen('DrawingFinished', screen1); %tell PTB that no further drawing commands fill follow before flip
Screen(screen1, 'Flip'); %Flip onto screen
KbWait; %wait for keypress
pause(0.5)


end

