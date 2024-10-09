pkg load image;
clc;

imgLena = imread('Clena512.bmp');
imgIf = imread('if30.bmp');

[M,N]= size(imgIf);
imgEdt = imgLena;

for i=1:M
  for j = 1:N
    imgEdt(i,j)=(imgIf(i,j));
end
end


figure(1),subplot(1,3,1),imshow(imgLena); #dentro dele subplot(1,3,1), significa que tem 1 LINHA dividida em 3 COLUNAS, o ultimo numero é a posição do quadrado (1º POSIÇÃO)
figure(1),subplot(1,3,2),imshow(imgIf);
figure(1),subplot(1,3,3),imshow(imgEdt);
imwrite(imgEdt, 'lenaif.bmp'); #função pra salvar imagem no PC



