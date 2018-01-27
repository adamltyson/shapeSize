function [subject_titles, exp_titles] = title_names
%writes cells that contain the titles for the excel sheets

subject_titles{1}='subject number'; %sets the titles of the subjects info 
subject_titles{2}='subject name';
subject_titles{3}='subject age';
subject_titles{4}='subject gender';
subject_titles{5}='subject handedness';
subject_titles{6}='session number';

exp_titles{1}='number of blocks'; % sets the titles of the experiment info
exp_titles{2}='number of trials';
exp_titles{3}='colours';
exp_titles{4}='shapes';
exp_titles{5}='practice y/n';
exp_titles{6}='full screen y/n';
end

