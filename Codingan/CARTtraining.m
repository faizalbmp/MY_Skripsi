clc;
clear;
% load dataUjidanTraining4Fitur;
% label = logical(dataUji(:,5));
% lab = num2cell(label);
Data = xlsread('dataTrainingCART.xlsx');
[num,txt,raw] = xlsread('labelTrainCART.xlsx');
label = txt;
% for i=1 :size(label,1)
%     i
%     labelasli = (strcmp('0',lab(:,1)));
% end
t = classregtree(Data,label);
view(t);
