function [dataTrain,dataUji,namaTrain,namaUji] = PemisahanDataTrain(persen,data,nama,label)
barisAcak = randperm(size(data,1));
if label == 1
    labelData = ones(size(data,1),1);
else
    labelData = zeros(size(data,1),1);
end
data = [data,labelData];
dataTrain = data(barisAcak(1:ceil(size(barisAcak,2)*persen)),:);
namaTrain = nama(barisAcak(1:ceil(size(barisAcak,2)*persen)),:);
dataUji = data(barisAcak(ceil(size(barisAcak,2)*0.6)+1:size(barisAcak,2)),:);
namaUji = nama(barisAcak(ceil(size(barisAcak,2)*0.6)+1:size(barisAcak,2)),:);
end