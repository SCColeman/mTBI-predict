function ansr = inputPrompt
%ansr = InputPrompt
%  returns the details of subject and data collection in ansr struct
%Sub #,MEG PC subjects code, MEG PC date format, training or test, on what
%computer (MEG or Win)

prompt     = {'Subject Code', 'Session','Task', 'Run', 'Train/Task/Test', 'Testing PC'}; 
dlgtitle   = 'Details';
dims       = [1, 30; 1, 30; 1, 30; 1, 30; 1, 30; 1, 30];
defaultans = {'B101', '01', 'spatt', '01', 'test', 'win'};
answer = inputdlg(prompt, dlgtitle, dims, defaultans);
ansr = cell2struct(answer, {'sub', 'ses', 'task', 'run', 'test', 'pc'},1);

end

