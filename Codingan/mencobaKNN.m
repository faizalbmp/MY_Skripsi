clear all; close all; clc;
load dataTrainUjilbpNeighbor2rentangT20.mat;
k= 9;

jumlahbenar = 0;
for i = 1:size(dataUji,1)
    for j = 1:size(dataTraining,1)
        distance(j)=(dataUji(i,1)-dataTraining(j,1))^2+...
            (dataUji(i,2)-dataTraining(j,2))^2+...
            (dataUji(i,3)-dataTraining(j,3))^2+...
            (dataUji(i,4)-dataTraining(j,4))^2;
        label(j)=dataTraining(j,5);
        
    end
    distance = [distance;label];
    distanceTranspose = distance.';
    sortedDist = sortrows(distanceTranspose,1);
%     jrkMin= zeros(1,k);
    jrkMin = sortedDist(1:k,2);
    OutputPrediksi(i) = mode(jrkMin);
    TP(i) = OutputPrediksi(i) & dataUji(i,5)
    FN(i) = ~OutputPrediksi(i) & dataUji(i,5);
    FP(i) = OutputPrediksi(i) & ~dataUji(i,5);
        
    clear distance;
end
recall = nnz(TP)/(nnz(TP) + nnz(FN));
precision = nnz(TP)/(nnz(TP) + nnz(FP));
F1 = 2*((precision*recall)/(precision + recall));

% akurasi = jumlahbenar/size(dataUji,1);