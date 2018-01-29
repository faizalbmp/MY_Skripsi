clear all; close all; clc;

%%
v = VideoReader('video tes3.mp4');
v.CurrentTime = 0;
waktuFrame = 20;
info=get(v);
areaThres = 200;
initFrame = 180
endFrame = 330
output = 0;
hasilakhir = 0;
%%

mov = struct('cdata',zeros(info.Height,info.Width,3,'uint8'),...
    'colormap',[]);

i=1;
while hasFrame(v)
    
    mov(i).cdata = readFrame(v)
    i = i+1;
    
end
%%
for i = initFrame : endFrame
    frameMove = three_frame_differencing(mov,i)
    
    %%
    bboxestemp = regionprops(frameMove,'Area','BoundingBox');
    bboxes = struct;
    l = 1;
    for j=1 : size(bboxestemp)
        if bboxestemp(j).Area >= areaThres
            bboxes(l).Area = bboxestemp(j).Area
            bboxes(l).BoundingBox = bboxestemp(j).BoundingBox
            l = l + 1;
        end
    end
    
    framevideo = mov(i).cdata;
    f = figure;
    imshow(framevideo);
    mytitle = strcat('Frame image ke-',int2str(i),'.png');
    imwrite(framevideo,mytitle);
    hold on;
    axis on;
    for k=1 : length(bboxes)
        
        CurrBB = bboxes(k).BoundingBox;
        rectangle('Position',[CurrBB(1),CurrBB(2),CurrBB(3),CurrBB(4),],...
            'EdgeColor' , 'r',...
            'LineWidth', 3)
    end
    hold off;
    mytitle = strcat('Boxing Frame ke -',int2str(i),'.png');
    saveas(f,mytitle);
    
end    
    %%
    
    
    boxFrame = zeros(CurrBB(4),CurrBB(3),endFrame - initFrame+1)
    for l = initFrame : endFrame
        boxFrame(:,:,l) = uint8(rgb2gray(mov(i).cdata(CurrBB(2):CurrBB(4)+CurrBB(2)-1,CurrBB(1):CurrBB(3)+CurrBB(1)-1,:)));
    end
    
    %%
    xy = lbp(boxFrame(:,:,((endFrame - initFrame)/2) + 1));
  
    %%
    yt = uint8(squeeze(boxFrame(:,ceil(size(boxFrame,2)/2),:)).');
    ytlbp = lbp(yt);
    
    %%
    xt = uint8(squeeze(boxFrame(ceil(size(boxFrame,1)/2),:,:)).');
    xtlbp = lbp(xt);
    
    tempxyhist = uint16(xy);
    
    tempxthist = uint16(xtlbp);
    tempythist = uint16(ytlbp);
    lbphistogram = cat(2,reshape(tempxyhist,1,[]),reshape(tempxthist,1,[])+256,reshape(tempythist,1,[])+512);
    
    [meanImage,stdImage,skewnessImage,kurtosisImage] = colorMoment(lbphistogram);
    fiturlbpTop = [meanImage,stdImage,skewnessImage,kurtosisImage];
    output = output & klasifikasiKNN(fiturlbpTop);
    
% end
hasilakhir = hasilakhir+output;
