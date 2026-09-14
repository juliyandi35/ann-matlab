% Menghitung MSE
MSE1 = mean(network1_errors.^2);
MSE5 = mean(network5_errors.^2);
MSE10 = mean(network10_errors.^2);
MSE15 = mean(network15_errors.^2);
MSE20 = mean(network20_errors.^2);
MSE30 = mean(network30_errors.^2);
MSE40 = mean(network40_errors.^2);
MSE50 = mean(network50_errors.^2);
MSE60 = mean(network60_errors.^2);
MSE = table(MSE1,MSE5,MSE10,MSE15,MSE20,MSE30,MSE40,MSE50,MSE60)
writetable(MSE,'MSE.xlsx')

% Menghitung R Square
% Menghitung koefisien determinasi (R^2)
SStot = sum((target - mean(target)).^2);
SSres1 = sum(network1_errors.^2);
SSres5 = sum(network5_errors.^2);
SSres10 = sum(network10_errors.^2);
SSres15 = sum(network15_errors.^2);
SSres20 = sum(network20_errors.^2);
SSres30 = sum(network30_errors.^2);
SSres40 = sum(network40_errors.^2);
SSres50 = sum(network50_errors.^2);
SSres60 = sum(network60_errors.^2);

R_squared1 = 1 - SSres1/SStot;
R_squared5 = 1 - SSres5/SStot;
R_squared10 = 1 - SSres10/SStot;
R_squared15 = 1 - SSres15/SStot;
R_squared20 = 1 - SSres20/SStot;
R_squared30 = 1 - SSres30/SStot;
R_squared40 = 1 - SSres40/SStot;
R_squared50 = 1 - SSres50/SStot;
R_squared60 = 1 - SSres60/SStot;

R_squared = table(R_squared1,R_squared5,R_squared10,R_squared15,R_squared20,R_squared30,R_squared40,R_squared50,R_squared60)
writetable(R_squared,'R Squared.xlsx')

% Export output
Outputs = table(network1_outputs',network5_outputs',network10_outputs',network15_outputs',network20_outputs',network30_outputs',network40_outputs',network50_outputs',network60_outputs')
writetable(Outputs,'Outputs.xlsx')