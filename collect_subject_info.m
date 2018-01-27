function [subject_info] = collect_subject_info
% collect information about the subject as a cell, for export to MS Excel,
% to go with the experimental data from each subject.

subject_info{1}=input('Enter subject number: '); %collects basic information to go with results for analysis of experimental data
subject_info{2}=input('Enter subject name: ','s');
subject_info{3}=input('Enter subject age: ','s');
subject_info{4}=input('Enter subject gender (m/f): ' , 's');
subject_info{5}=input('Enter subject handedness (r/l/a): ' , 's');
subject_info{6}=input('Enter session number: ');


end

