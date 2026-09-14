% Prediksi data test
Test = xlsread('Datasetnew.xlsx','Test');
Test = Test';
hasilPrediksi = sim(network20, Test);
writetable(table(hasilPrediksi),'Predict.xlsx')