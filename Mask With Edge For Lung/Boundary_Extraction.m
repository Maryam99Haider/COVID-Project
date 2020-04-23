A=imread('1.png'); 

C=rgb2gray(A);

C(C<225)=0;

s=strel('disk',5,0);%Structuring element

D=~im2bw(C);%binary Image

F=imerode(D,s);%Erode the image by structuring element


%subplot(2,1,1),imshow(A);title('Original Image');
subplot(1,2,1),imshow(A);title('Original Image');

subplot(1,2,2 ),imshow(D-F);title('Boundary extracted Image');
