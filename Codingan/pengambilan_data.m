clear all; close all; clc;
% if exist('data4fiturLBPTOPnonasaprentang10.mat', 'file') ==2
%     load data4fiturLBPTOPnonasaprentang10.mat;
% 
% end
% exist jumlah
% if ans == 0
%     jumlah = 0;
% end
% 
% jumlah = 0;

% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 1.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 1'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 2.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 2'};
% 
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 3.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 3'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 4.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 4'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 5.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 5'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 6.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 6'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 7.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 7'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 8.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 8'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 9.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 9'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 11.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 11'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 1 Video 12.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 1 Video 12'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 1.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 1'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 2.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 2'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 3.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 3'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 4.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 4'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 5.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 5'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 6.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 6'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 7.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 7'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 8.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 8'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 9.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 9'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 11.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 11'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 2 Video 12.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 2 Video 12'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 3 Video 2.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 3 Video 2'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 3 Video 4.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 3 Video 4'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 3 Video 5.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 3 Video 5'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 3 Video 6.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 3 Video 6'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 3 Video 7.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 3 Video 7'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 3 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 3 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 3 Video 11.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 3 Video 11'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 3 Video 12.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 3 Video 12'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 4 Video 2.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 4 Video 2'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 4 Video 4.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 4 Video 4'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 4 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 4 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 4 Video 11.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 4 Video 11'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 4 Video 12.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 4 Video 12'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 5 Video 2.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 5 Video 2'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 5 Video 4.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 5 Video 4'};
% jumlah = jumlah + 1;
% 
% v = VideoReader('Clip 5 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 5 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 5 Video 11.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 5 Video 11'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 5 Video 12.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 5 Video 12'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 6 Video 4.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 6 Video 4'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 6 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 6 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 6 Video 12.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 6 Video 12'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 7 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 7 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 7 Video 12.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 7 Video 12'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 8 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 8 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 8 Video 12.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 8 Video 12'};
% 
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 9 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 9 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 10 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 10 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 11 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 11 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 12 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 12 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 13 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 13 Video 10'};
% 
% jumlah = jumlah + 1;
% v = VideoReader('Clip 14 Video 10.mp4');
% clip(jumlah) = {v};
% namaClip(jumlah) = {'Clip 14 Video 10'};


% load data4fiturLBPTOPneigbor2nonasap namaClip
% namaAcuan = namaClip;
% clear namaClip;

% load dataNonAsap 
% 
% for i = 1 : size(namaClip,2)
%     clipTemp(i) = clip(find(strcmp(namaAcuan{i},namaClip)));
% end
load dataNonAsap.mat
waktuFrame = 30;
m=1;
% frameCount = 50;
%%
% for m = 1 : size(clip,2)
% for m =1 : jumlah
    frameCount = frameacuan(m);
    info=get(clip{m});
%     info=get(v);

%     v.CurrentTime = 0;
    clip{m}.CurrentTime = 0;

    
    %%
    i = 1;
    hd = zeros(info.Height, info.Width);
    while hasFrame(clip{m});
%      while hasFrame(v);
%         figure;imshow(frame);
%         frame = readFrame(v);
        grayframe = rgb2gray(readFrame(clip{m}));
        hd(:,:,i) = grayframe;
        i = i+1;  
    end
    
    if frameCount - waktuFrame < 1
        initFrame = 1;
    else
        initFrame = frameCount - waktuFrame;
    end
    if frameCount + waktuFrame >= size(hd,3)
        endFrame = size(hd,3);
    else
        endFrame = frameCount + waktuFrame;
    end
    %%    
    xy = lbp(hd(:,:,frameCount));
    f = figure;
    subplot(2,2,1);
    imshow(uint8(hd(:,:,frameCount)));
    subplot(2,2,2);
    imshow(xy);

    subplot(2,2,3);
    histogram(hd(:,:,frameCount));
    subplot(2,2,4);
    histogram(xy);
    mytitle = strcat(namaClip{m},'(1).png');
%     mytitle = strcat(namaClip{jumlah},'(1).png');
    saveas(f,mytitle);

    %%
    yt = uint8(squeeze(hd(:,ceil(size(hd,2)/2),initFrame : endFrame)).');
    ytlbp = lbp(yt);
    f = figure;
    subplot(2,2,1);
    imshow(uint8(yt));
    subplot(2,2,2);
    imshow(ytlbp);

    subplot(2,2,3);
    histogram(yt);
    subplot(2,2,4);
    histogram(ytlbp);
    
    mytitle = strcat(namaClip{m},'(2).png');
%     mytitle = strcat(namaClip{jumlah},'(2).png');

    saveas(f,mytitle);
    %%
    xt = uint8(squeeze(hd(ceil(size(hd,1)/2),:,initFrame : endFrame)).');
    xtlbp = lbp(xt);
    f = figure;
    subplot(2,2,1);
    imshow(xt);
    subplot(2,2,2);
    imshow(xtlbp);

    subplot(2,2,3);
    histogram(xt);
    subplot(2,2,4);
    histogram(xtlbp);
    
    mytitle = strcat(namaClip{m},'(3).png');
%     mytitle = strcat(namaClip{jumlah},'(3).png');

    saveas(f,mytitle);
    
    tempxyhist = uint16(xy);
    tempxthist = uint16(xtlbp);
    tempythist = uint16(ytlbp);
    lbphistogram = cat(2,reshape(tempxyhist,1,[]),reshape(tempxthist,1,[])+256,reshape(tempythist,1,[])+512);
    [meanImage,stdImage,skewnessImage,kurtosisImage] = colorMoment(lbphistogram);
    fiturlbpTop(m,:)= [meanImage,stdImage,skewnessImage,kurtosisImage];
%     fiturlbpTop(jumlah,:)= [meanImage,stdImage,skewnessImage,kurtosisImage];

%     [Nbins(jumlah,:),edges] = histcounts(lbphistogram(:,:,1),768);
    
    f = figure;
    histogram(lbphistogram);
    mytitle = strcat(namaClip{m},'(4).png');
%     mytitle = strcat(namaClip{jumlah},'(4).png');

    saveas(f,mytitle);
    
    
% end
%     frameacuan(m) = frameCount; 
% save data4fiturLBPTOPrentang10.mat Nbins edges namaClip jumlah
save data4fiturLBPTOPnegihbor2rentang30.mat fiturlbpTop namaClip