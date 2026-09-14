clear all;clc;
Dataset = xlsread('Datasetnew.xlsx','Train');
Data = Dataset';
target = xlsread('Datasetnew.xlsx','target');
target = target';
nntool