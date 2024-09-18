pkg load image;
clc;



imgLena = imread('C:\Users\Veterano\Documents\H_Topicos\Aula1\lena512.bmp');
imgIf = imread('C:\Users\Veterano\Documents\H_Topicos\Aula1\if30.bmp');

[M,N]= size(imgIf);
imgEdt = imgLena;

for i=1:M
  for j = 1:N
    imgEdt(i,j)=(imgIf(i,j));
end
end


figure(1),subplot(1,3,1),imshow(imgLena);
figure(1),subplot(1,3,2),imshow(imgIf);
figure(1),subplot(1,3,3),imshow(imgEdt);
imwrite(imgEdt, 'lenaif.bmp');



