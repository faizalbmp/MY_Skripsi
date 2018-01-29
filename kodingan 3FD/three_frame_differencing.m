function frameloc = three_frame_differencing(video,frame)     
frameSkip = 10;
threshold = 7;

%%

frame1 = video(frame-frameSkip).cdata;

frame1 = rgb2gray(frame1);
frame1 = double(frame1);
%%
frame2 = video(frame).cdata;
frame2 = rgb2gray(frame2);
frame2 = double(frame2);

%%

frame3 = video(frame+frameSkip).cdata;

frame3 = rgb2gray(frame3);
frame3 = double(frame3);

%%
framea = frame2-frame1;
frameb = frame3-frame2;
framec = (framea>threshold | framea<-threshold);
framed = (frameb>threshold | frameb<-threshold);
frameloc = framec & framed;