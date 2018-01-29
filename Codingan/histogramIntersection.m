function normalized_histogram = histogramIntersection(histogram_1, histogram_2)
    Nbins(1,:) = histogram_1;
    Nbins(2,:) = histogram_2;
    minOfBins = min(Nbins,[],1);
    sumOfBins = sum(minOfBins,2);
    sumSizeBins = sum(Nbins,2);
    minSizeBins = min(sumSizeBins,[],1);
    normalized_histogram = sumOfBins/minSizeBins;
end