pkg load image;
clc;

a=ones(300,300);
a=uint8(a);
a=a*120;
a=imnoise(a,'salt and pepper');

pb_filter=[1,1,1;1,0,1;1,1,1]
pb_filter=pb_filter/8;

imgSuave=conv2(pb_filter,a);
imgSuave=uint8(imgSuave);

figure(1),subplot(1,2,1),imshow(a);
figure(1),subplot(1,2,2),imshow(imgSuave);
