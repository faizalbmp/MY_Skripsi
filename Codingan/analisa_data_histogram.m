clear all; close all; clc;
load fileVideoOrangLewat2.mat
Nbinstemp = Nbins;
namaCliptemp = namaClip;

load HistogramAsap.mat
Nbins = cat(1,Nbinstemp,Nbins);
namaClip = cat(2,namaCliptemp,namaClip);

intersect = zeros(size(Nbins,1),size(Nbins,1));
%%
for i = 1 : size(Nbins,1)
    for j = 1 : size(Nbins,1)
        intersect(j,1) = histogramIntersection(Nbins(i,:),Nbins(j,:));
        
    end
    Nintersect(i) = {intersect};
    clear intersect;
end
%%
T = table(Nintersect{:},'RowNames',namaClip);
T.Properties.VariableNames = genvarname(namaClip);

writetable(T,'data analisis histogram intersection Asap dengan video orang lewat Revisi.xls','WriteRowNames',true);
