clear all; close all; clc;

% dataTrain = imread('gambar train -backyard06.png')
% dataTrain = rgb2gray(dataTrain);

% v = VideoReader('backyard06.mp4');
% frameCount = 200;
% v = VideoReader('Black_smoke_517.avi');
% frameCount = 400;
% v = VideoReader('baju lewat (8).avi');
% frameCount = 40;
% v = VideoReader('street.mp4');
% frameCount = 222;
% v = VideoReader('jalan toko.mp4');
% frameCount = 195;
% v = VideoReader('63031067.mp4');
% frameCount = 85;
% v = VideoReader('Bakar bakar.mp4');
% frameCount = 165;
% v = VideoReader('burning_leaves3.mp4');
% frameCount = 900;
% v = VideoReader('jalan tol.mp4');
% frameCount = 140;
v = VideoReader('visor05.avi');
frameCount = 1500;


info = get(v)

%%
framevideo = frameIndex(v,frameCount);
f = figure;
imshow(framevideo);
% mytitle = ('Frame image.png');
% saveas(f,mytitle);
imwrite(framevideo,strcat('gambar - ',info.Name,'.png'))
