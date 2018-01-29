clc;

%%
v = VideoReader('street.mp4');
v.CurrentTime = 0;
waktuFrame = 20;
info=get(v);
areaThres = 500;
initFrame = 200;
endFrame = 300;
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
%     frameMove = three_frame_differencing(mov,i)
    
    %%
% end    
    %%
    framevideo = mov(i).cdata;
    f = figure;
    imshow(framevideo);
    mytitle = strcat('Frame image ke-',int2str(i),'.png');
%     imwrite(framevideo,mytitle);
    hold on;
    axis on;
    for k = 1 : info.Height/10-1 :info.Height - info.Height/10-1
        for l = 1 :info.Width/10-1:info.Width -info.Width/10-1
            disp(l);
            m = 1;
            for j= i-20 : i+20
                boxFrame(:,:,m) = uint8(rgb2gray(mov(j).cdata(k : k+info.Height/10-1 ,l:l+info.Width/10-1,:)));
                m = m+1;
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
                rectangle('Position',[l,k,info.Width/10-1,info.Height/10-1],...
                    'EdgeColor' , 'r',...
                    'LineWidth', 3);
                output = 1+output;
            end
            clear boxFrame;

        end
    end
        
        
    hold off;
    mytitle = strcat('Boxing Frame ke -',int2str(i),'.png');
    saveas(f,mytitle);
    
%     boxFrame = zeros(CurrBB(4),CurrBB(3),endFrame - initFrame+1)
%     hasilakhir = hasilakhir+output;
%     output = 0;
end
