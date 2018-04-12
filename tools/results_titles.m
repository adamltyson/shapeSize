function [resultsx, resultsy] = results_titles
%writes titles for the excel information for reaction times

resultsx{1}='block';  % information accross the top of the results sheet
resultsx{2}=1;
resultsx{3}=2;
resultsx{4}='etc';

resultsy1{1}='red circles'; %information for down the side of the results sheet
resultsy1{2}='red squares';
resultsy1{3}='red triangles';
resultsy1{4}='green circles';
resultsy1{5}='green squares';
resultsy1{6}='green triangles';
resultsy1{7}='blue circles';
resultsy1{8}='blue squares';
resultsy1{9}='blue triangles';

resultsy=resultsy1'; %transposes resultsy (to make column vector)

end

