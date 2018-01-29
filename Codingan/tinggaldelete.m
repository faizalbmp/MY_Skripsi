v = VideoReader('video Tes.mp4');

% info = get(v);
i = 1;
mov = struct('cdata',zeros(info.Height,info.Width,3,'uint8'),...
    'colormap',[]);
while hasFrame(v)
%     mov(i).cdata = f;
%     grayframe = rgb2gray(frame);
%     hd(:,:,i) = grayframe;
    mov(i).cdata = readFrame(v)
    i = i+1;
%     figure;imshow(frame);
end
