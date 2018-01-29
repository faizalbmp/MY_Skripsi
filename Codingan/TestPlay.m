clear all ;close all;clc
v = VideoReader('Asap Pembakaran dari dekat.mp4');
info = get(v);
for frameCount = 1:floor(v.Duration)*info.FrameRate
    frame = frameIndex(v,frameCount);
    imshow(frame);
    drawnow;
    pause(1.30/v.FrameRate);
%     handles.frameCount = frameCount;
%     guidata(hObject,handles);
end