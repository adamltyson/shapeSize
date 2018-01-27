function writeresults(subject_info,exp_info, results_correct, results_avtime)
%writeresults.m

% writes subject data and results to an xls file named after the subject
  
  [subject_titles, exp_titles] = title_names; %calls function to get titles for the subject and experiment information for excel
  [resultsx, resultsy] = results_titles; %calls function to get titles for the experimental data for excel
  
  xlswrite([subject_info{2} num2str(subject_info{6})],subject_titles,1,'A1'); %write subject titles information to excel
  xlswrite([subject_info{2} num2str(subject_info{6})],subject_info,1,'A2'); %write subject information to excel sheet 1
  
  xlswrite([subject_info{2} num2str(subject_info{6})],exp_titles,1,'A4'); %write experimental titles information to excel
  xlswrite([subject_info{2} num2str(subject_info{6})],exp_info,1,'A5'); %write experimental information to the same sheet in excel sheet 2
  
  xlswrite([subject_info{2} num2str(subject_info{6})],resultsx,2,'A1'); %write results titles for each block to excel
  xlswrite([subject_info{2} num2str(subject_info{6})],resultsy,2,'A2'); %write results titles for each block to excel
  xlswrite([subject_info{2} num2str(subject_info{6})],results_correct,2,'B2'); %write number of correct results for each block to excel sheet 3
  
  
  xlswrite([subject_info{2} num2str(subject_info{6})],resultsx,3,'A1'); %write results titles for each block to excel
  xlswrite([subject_info{2} num2str(subject_info{6})],resultsy,3,'A2'); %write results titles for each block to excel
  xlswrite([subject_info{2} num2str(subject_info{6})],results_avtime,3,'B2'); %write reaction times for each block to excel

end

