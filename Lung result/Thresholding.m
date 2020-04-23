clear all;
close all;
clc;



I = imread('20.jpg');
T = graythresh(I)               % find the threshold for input image
S = im2bw(I,T);                 % Segment the image using thresholding

subplot(1,2,1),imshow(I),title('Original Image');
subplot(1,2,2),imshow(imcomplement(S)),title('Thresholded Image');