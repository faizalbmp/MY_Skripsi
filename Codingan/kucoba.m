v = VideoReader('Black_smoke_517.avi');
vidWidth = v.Width;
vidHeight = v.Height;

%% video player
% currAxes = axes;
% while hasFrame(v)
%     vidFrame = readFrame(v);
%     image(vidFrame, 'Parent', currAxes);
%     currAxes.Visible = 'off';
%     pause(1/v.FrameRate);
% end
%%
mov = struct('cdata',zeros(vidHeight,vidWidth,3,'uint8'),...
    'colormap',[]);
mov3fd = struct('cdata',zeros(vidHeight,vidWidth,3,'uint8'));
% mov = struct('cdata',zeros(vidHeight,vidWidth,3,'uint8'));
k = 1;
while hasFrame(v)
    mov(k).cdata = readFrame(v);
    mov(k).cdata = rgb2gray(mov(k).cdata);
    k = k+1;
end
%%3FD
frameSkip = 3;
threshold = 2;
j=1;
for currFrame = frameSkip+1 : k-(frameSkip+1)
%     if (frame-frameSkip >=1)
%         frame1 = read(video,frame-frameSkip); 
%     else
%         frame1 = read(video,1);
%     end
    frame1 = mov(currFrame-frameSkip).cdata;
    frame2 = mov(currFrame).cdata;
    frame3 = mov(currFrame+frameSkip).cdata;

%     frame2 = read(video,frame);
%     frame2 = rgb2gray(frame2);
%     if (frame+frameSkip <=video.NumberOfFrames)
%         frame3 = read(video,frame+frameSkip);
%     else
%         frame3 = read(video,video.NumberOfFrames);
%     end
%     frame3 = rgb2gray(frame3);

    framea = frame2-frame1;
    frameb = frame3-frame2;
    framea = (framea>threshold | framea<-threshold);
    frameb = (frameb>threshold | frameb<-threshold);
    mov3fd(j).cdata = framea & frameb;
    j=j+1;
end
%%
% hf = figure;
% set(hf,'position',[150 150 vidWidth vidHeight]);
% 
% movie(hf,mov,1,v.FrameRate);
for i = 2:k-1
    imshow(mov3fd(i).cdata);
%     bboxes = regionprops(frameMove,'BoundingBox');
%     imshow(framevideo);
%     hold on;
%     for k=1 : length(bboxes)
% 
%         CurrBB = bboxes(k).BoundingBox;
%         rectangle('Position',[CurrBB(1),CurrBB(2),CurrBB(3),CurrBB(4),],...
%         'EdgeColor' , 'r',...
%         'LineWidth', 3)
%     end
%         hold off;
        drawnow;
        pause(0.1/30);
end