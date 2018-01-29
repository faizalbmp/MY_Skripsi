function  [meanImage,stdImage,skewnessImage,kurtosisImage] = colorMoment(gambarlbp)
    meanImage = mean(gambarlbp);
    stdImage = std(double(gambarlbp));
    skewnessImage = skewness(double(gambarlbp));
    kurtosisImage = kurtosis(double(gambarlbp));
end