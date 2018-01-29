clc;
clear;

load('pohon.mat');
% load dataUjidanTraining4Fitur;
Data = xlsread('dataUjiCART.xlsx');
[num,txt,raw] = xlsread('labelUjiCART.xlsx');
label_aktual = txt;

% label = dataUji(:,5);
test = eval(t,Data);
[baris,kolom] = size(test);
labelasli = (strcmp('asap',label_aktual(: ,1)));
labelprediksi = (strcmp('asap',test(: ,1)));

TN = 0;
TP = 0;
FP = 0;
FN = 0;
for i = 1:baris
    if labelasli(i) & labelprediksi(i)
       TN = TN + 1;
    elseif labelasli(i)
       FN = FN + 1;
    elseif labelprediksi(i)
       FP = FP + 1;
    else
       TP = TP + 1;
    end
end

DR = TP/(TP+FP);
FPR = FP/(FP+TN);
ACC = (TP+TN)/(TP+TN+FP+FN);
