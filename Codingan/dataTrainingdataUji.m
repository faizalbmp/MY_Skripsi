clear all; close all; clc;
%%

% load data4fiturLBPTOPnegihbor1rentang30.mat;
% dataAsap = fiturlbpTop;
% namaAsap = namaClip.';
% % load data4fiturLBPTOPVideo10.mat;
% % dataAsap = [dataAsap;fiturlbpTop];
% % namaAsap = [namaAsap;namaClip.'];
% % load data4fiturLBPTOPVideo11.mat;
% % dataAsap = [dataAsap;fiturlbpTop];
% % namaAsap = [namaAsap;namaClip.'];
% % load data4fiturLBPTOPVideo12.mat;
% % dataAsap = [dataAsap;fiturlbpTop];
% % namaAsap = [namaAsap;namaClip.'];
% [dataTrainAsap,dataUjiAsap,namaTrainAsap,namaUjiAsap] = PemisahanDataTrain(0.6,dataAsap,namaAsap,1);
% %%
% 
% load data4fiturLBPTOPnegihbor1nonasaprentang30.mat;
% dataNon = fiturlbpTop;
% namaNon = namaClip.';

% load data4fiturLBPTOPnonasapBurung.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapMobilAtas.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapMobilLewat.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapMobilLewatMalam.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapMobilLewatMalam2.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapMobilLewatPelan.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapMobilTaksiKuning.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapOrangBukaPintu.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapOrangLewat.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapOrangLewatLampu.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapOrangLewatPelan.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapPesawatTerbang.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapSepedaLewat.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% load data4fiturLBPTOPnonasapSepedaLewat2.mat;
% dataNon = [dataNon;fiturlbpTop];
% namaNon = [namaNon ;namaClip.'];
% [dataTrainNon,dataUjiNon,namaTrainNon,namaUjiNon] = PemisahanDataTrain(0.6,dataNon,namaNon,0);

% dataTraining = [dataTrainAsap;dataTrainNon];
% dataUji = [dataUjiAsap;dataUjiNon];
% 
% namaTraining = [namaTrainAsap;namaTrainNon];
% namaUji = [namaUjiAsap;namaUjiNon];
% save dataTrainUjiNeighbor1rentangT30.mat dataTraining dataUji namaTraining namaUji
% clear all;
%%
load data4fiturLBPTOPrentang40.mat;
dataAsap = fiturlbpTop;
namaAsap = namaClip.';

load data4fiturLBPTOPnonasaprentang40.mat;
dataNon = fiturlbpTop;
namaNon = namaClip.';

labelData = ones(size(dataAsap,1),1);
dataAsap = [dataAsap,labelData];
labelData = zeros(size(dataNon,1),1);
dataNon = [dataNon,labelData];
semuaData = [dataAsap;dataNon];
semuaNama = [namaAsap ; namaNon];

% %%
load dataTrainUjiNeighbor1rentangT30.mat namaTraining namaUji
for i = 1 : size(namaTraining)
    dataTraining(i,:) = semuaData(find(strcmp(namaTraining{i},semuaNama)),:)
end
for i = 1 : size(namaUji)
    dataUji(i,:) = semuaData(find(strcmp(namaUji{i},semuaNama)),:)
end
%%


save dataTrainUjilbpNeighbor2rentangT40.mat dataTraining dataUji namaTraining namaUji
