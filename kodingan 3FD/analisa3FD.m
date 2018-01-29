clear all; close all; clc;

% dataTrain = imread('gambar train baju lewat (8).png');
dataTrain = imread('gambar train -Black_smoke_517.png');
% dataTrain = imread('gambar train -street.png');
% dataTrain = imread('gambar train -jalan toko.png');
% dataTrain = imread('gambar train -jalan tol.png');

dataTrain = rgb2gray(dataTrain);
dataTrain = dataTrain>200;
% dataTrain2 = dataTrain == 0;


% v = VideoReader('baju lewat (8).avi');
% frameCount = 40;
v = VideoReader('Black_smoke_517.avi');
frameCount = 400;
% v = VideoReader('street.mp4');
% frameCount = 222;
% v = VideoReader('jalan toko.mp4');
% frameCount = 195;
% v = VideoReader('jalan tol.mp4');
% frameCount = 140;

info = get(v);
dataKe = 1;
%%
% hasilAkhir = zeros(1,10);
for i  = 5:5:30
        frameMove = train3FD(v,frameCount,i);
        TP = nnz(frameMove & dataTrain);
    %     TN = nnz(~frameMove & ~dataTrain);
        FN = nnz(~frameMove & dataTrain);
        FP = nnz(frameMove & ~dataTrain);
        recall = TP/(TP + FN);
        precision = TP/(TP + FP);
        F1 = 2*((precision*recall)/(precision + recall));
    %     ACC = (TP + TN)/(size(dataTrain,1)*size(dataTrain,2));
        hasilTrain(:,dataKe) =[i ; F1]; 
        dataKe = dataKe + 1;

end
xlswrite(strcat('hasil 3FD -',info.Name,'.xlsx'),hasilTrain);
