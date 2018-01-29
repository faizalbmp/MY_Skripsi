clc;clear;
% videoread = vision.VideoFileReader('Example.MP4');
% videoplay = vision.VideoPlayer

a = VideoReader('Example.MP4');

% v.CurrentTime  = 1.18;
% % video = readFrame(v);
% while hasFrame(v)
%     video = readFrame(v);
% end
% whos video

% for i = 2:6; 
%     filename=strcat('frame',num2str(img),'.jpg'); 
    i=300;
    
    frame1 = read(a,i-60);
    frame1 = rgb2gray(frame1);
    frame2 = read(a,i);
    frame2 = rgb2gray(frame2);
    frame3 = read(a,i+60);
    frame3 = rgb2gray(frame3);
    
    framea = frame2-frame1;
    frameb = frame3-frame2;
    framea = (framea>10 | framea<-10);
    frameb = (frameb>10 | frameb<-10);
    frameloc = framea & frameb;
    
    
figure;imshow(frame1);
figure;imshow(frame2);
figure;imshow(frame3);
    x = find(frameloc=1)
    
    imwrite(b,filename);
end

xyloObj = VideoReader('Example.mp4');

vidWidth = xyloObj.Width;
vidHeight = xyloObj.Height;

mov = struct('cdata',zeros(vidHeight,vidWidth,3,'uint8'),...
    'colormap',[]);

k = 1;
while hasFrame(xyloObj)
    mov(k).cdata = readFrame(xyloObj);
    k = k+1;
end

hf = figure;
set(hf,'position',[150 150 vidWidth vidHeight]);

movie(hf,mov,1,xyloObj.FrameRate);