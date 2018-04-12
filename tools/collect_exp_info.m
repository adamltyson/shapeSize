function [exp_info] = collect_exp_info

%collect information about the experiment as a 1D array
exp_info(1)=input('Enter number of blocks per colour: '); % how many blocks per colour should be presented?
exp_info(2)=input('Enter number of trials per block: '); %how many trials should be presented in each block?
exp_info(3)=input('Which colours should be displayed? red(r), green(g), blue(b), or all(a)? ' , 's'); %which colours of shapes should be presented? 
exp_info(4)=input('Which shapes should be displayed? circles(c), squares(s), triangles(t), or all(a)? ', 's'); %which shapes should be presented? 
exp_info(5)=input('Practice sessions? (y/n) ','s'); % should practice sessions be displayed before each set of blocks?
exp_info(6)=input('Development mode? (y/n) ','s'); % If y, then runs in development mode (display in small window, and skips sync tests in PTB)

end

