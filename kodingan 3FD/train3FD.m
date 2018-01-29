function frameloc = train3FD(video,frame,frameSkip)    
threshold = 7;
info=get(video)
%%
    if (frame-frameSkip >=1)
        frame1 = frameIndex(video,frame-frameSkip); 
    else
        frame1 = frameIndex(video,2);
    end
    frame1 = rgb2gray(frame1);
    frame1 = double(frame1);
%%    
    frame2 = frameIndex(video,frame);
    frame2 = rgb2gray(frame2);
    frame2 = double(frame2);

%%
    if (frame+frameSkip <=floor(video.Duration*info.FrameRate))
        frame3 = frameIndex(video,frame+frameSkip);
    else
        frame3 = frameIndex(video,floor(video.Duration*info.FrameRate));
    end
    frame3 = rgb2gray(frame3);
    frame3 = double(frame3);

%%    
    framea = frame2-frame1;
    frameb = frame3-frame2;
    framec = (framea>threshold | framea<-threshold);
    framed = (frameb>threshold | frameb<-threshold);
    frameloc = framec & framed;