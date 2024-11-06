pkg load image;
clc;

a=ones(300,300);
a=uint8(a);
a=a*120;
a=imnoise(a,'salt and pepper');

pa_filter=[-1,-1,-1;2,2,2;-1,-1,-1]

imgBorda=conv2(pa_filter,a);
imgBorda=uint8(imgBorda);

figure(1),subplot(1,2,1),imshow(a);
figure(1),subplot(1,2,2),imshow(imgBorda);
