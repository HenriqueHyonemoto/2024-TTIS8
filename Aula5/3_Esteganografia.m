pkg load image;
clc;

img = imread ('lenaRGB.png');
imgR = img(:,:,1);
imgG = img(:,:,2);
imgB = img(:,:,3);

mensagem = imread('mensagem512.bmp');
#mensagem=uint8(mens);
[M N] = size(imgR);

imgMensagem = imgR;
for i=1:M
  for j = 1:N
    imgMensagem(i,j)=bitset(imgR(i,j),1,mensagem(i,j));
  end
end

imgJunto = cat(3, imgMensagem, imgG, imgB);

imwrite(imgJunto, 'marcadaAulaColorida2024.bmp');

figure(1),subplot(2,2,1),imshow(img); #dentro dele subplot(1,3,1), significa que tem 1 LINHA dividida em 3 COLUNAS, o ultimo numero é a posição do quadrado (1º POSIÇÃO)
figure(1),subplot(2,2,3),imshow(mensagem);
figure(1),subplot(2,2,4),imshow(imgJunto);
