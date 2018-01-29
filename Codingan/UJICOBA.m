clear all; close all; clc;

%%
v = VideoReader('video Tes non-Asap.mp4');
v.CurrentTime = 0;
waktuFrame = 20;
info=get(v);
areaThres = 500;
initFrame = 215;
endFrame = 870;
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
for i = initFrame : 40 : endFrame
    frameMove = three_frame_differencing(mov,i)
    
    %%
    bboxestemp = regionprops(frameMove,'Area','BoundingBox');
%     bboxes = struct;
    bboxes = zeros(1,4);
    l = 1;
    for j=1 : size(bboxestemp)
        if bboxestemp(j).Area >= areaThres
%             bboxes(l).Area = bboxestemp(j).Area;
            bboxes(l,:) = bboxestemp(j).BoundingBox;
            l = l + 1;
        end
    end
% end    
    %%
    framevideo = mov(i).cdata;
    f = figure;
    imshow(framevideo);
    mytitle = strcat('Frame image ke-',int2str(i),'.png');
%     imwrite(framevideo,mytitle);
    hold on;
    axis on;
    if bboxes(1,1) ~= 0 
    for k=1 : size(bboxes,1)

        CurrBB = bboxes(k,:)
        j = 1;
        for l = i-20 : i+20
            boxFrame(:,:,j) = uint8(rgb2gray(mov(l).cdata(CurrBB(2):CurrBB(4)+CurrBB(2)-1,CurrBB(1):CurrBB(3)+CurrBB(1)-1,:)));
            j= j+1;
        end
        
        %%
        xy = lbp(boxFrame(:,:,20));

        %%
        yt = uint8(squeeze(boxFrame(:,ceil(size(boxFrame,2)/2),1:size(boxFrame,3))).');
        ytlbp = lbp(yt);

        %%
        xt = uint8(squeeze(boxFrame(ceil(size(boxFrame,1)/2),:,1:size(boxFrame,3))).');
        xtlbp = lbp(xt);

        tempxyhist = uint16(xy);

        tempxthist = uint16(xtlbp);
        tempythist = uint16(ytlbp);
        lbphistogram = cat(2,reshape(tempxyhist,1,[]),reshape(tempxthist,1,[])+256,reshape(tempythist,1,[])+512);

        [meanImage,stdImage,skewnessImage,kurtosisImage] = colorMoment(lbphistogram);
        fiturlbpTop = [meanImage,stdImage,skewnessImage,kurtosisImage];
        if klasifikasiKNN(fiturlbpTop) == 1
            rectangle('Position',[CurrBB(1),CurrBB(2),CurrBB(3),CurrBB(4),],...
                'EdgeColor' , 'r',...
                'LineWidth', 3);
            output = 1;
        end
        clear boxFrame;

        
        
    end
    end
    hold off;
    mytitle = strcat('Boxing Frame ke -',int2str(i),'.png');
    saveas(f,mytitle);
    
%     boxFrame = zeros(CurrBB(4),CurrBB(3),endFrame - initFrame+1)
    hasilakhir = hasilakhir+output;
    output = 0;
end
