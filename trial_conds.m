function [trialconds] = trial_conds(exp_info)

%work out which stimulus needs to be displayed
%add 1 when stimulus condtion is required. Eventually in the main script, 
%only conditions of value 2 will be displayed to the subject


trialconds=zeros(1, 9);  %inialises all 9 possible stimulus conditions to 0

if       exp_info(3)==114  % if response is r, add 1 to the red stimulus conditions
    trialconds(1:3)=trialconds(1:3)+1;
elseif    exp_info(3)==103 % if response is g, add 1 to the green stimulus conditions
   trialconds(4:6)=trialconds(4:6)+1;    
elseif exp_info(3)==98 % if response is b, add 1 to the blue stimulus conditions
    trialconds(7:9)=trialconds(7:9)+1;    
elseif exp_info(3)==97 % if response is a, add 1 to all stimulus conditions
   trialconds=trialconds+1; 
  
end


if      exp_info(4)==99 % if response is c, add 1 to the circle stimulus conditions
    trialconds(1:3:7)=trialconds(1:3:7)+1;
elseif    exp_info(4)==115 % if response is s, add 1 to the square stimulus conditions
    trialconds(2:3:8)=trialconds(2:3:8)+1;    
elseif exp_info(4)==116 % if response is t, add 1 to the triangle stimulus conditions
    trialconds(3:3:9)=trialconds(3:3:9)+1;    
elseif exp_info(4)==97  % if response is a, add 1 to all stimulus conditions
     trialconds=trialconds+1; 

end

