function [output] = klasifikasiKNN(dataUji)
load dataTrainUjilbpNeighbor2rentangT20 dataTraining;
k= 9;

for j = 1:size(dataTraining,1)
    distance(j)=(dataUji(1)-dataTraining(j,1))^2+...
        (dataUji(2)-dataTraining(j,2))^2+...
        (dataUji(3)-dataTraining(j,3))^2+...
        (dataUji(4)-dataTraining(j,4))^2;
    label(j)=dataTraining(j,5);
    
end
distance = [distance;label];
distanceTranspose = distance.';
sortedDist = sortrows(distanceTranspose,1);

jrkMin = sortedDist(1:k,2);
output = mode(jrkMin);
