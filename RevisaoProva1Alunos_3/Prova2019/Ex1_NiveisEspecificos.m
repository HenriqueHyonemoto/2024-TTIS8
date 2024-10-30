pkg load image;
clc;

imgDefault = imread("foto.jpg");

img = rgb2gray(imgDefault);
[M,N]=size(img);

for i = 1:M
  for j = 1:N
    if img(i,j)<=64
      img(i,j)=25;
    elseif img(i,j)<=128
      img(i,j)=100;
    elseif img(i,j)<=192
      img(i,j)=180;
    else
      img(i,j)=250;
    end
  end
end

figure(1),subplot(1,2,1),imshow(imgDefault);
figure(1),subplot(1,2,2),imshow(img);





