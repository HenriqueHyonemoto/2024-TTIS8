pkg load image;
clc;

imgRGB = imread('lenaRGB.jpg');

imgR = imgRGB(:,:,1);
imgG = imgRGB(:,:,2);
imgB = imgRGB(:,:,3);

figure(1), subplot(2,3,2), imshow(imgRGB),title('Imagem Original');
figure(1), subplot(2,3,4), imshow(imgR),title('Imagem Banda R');
figure(1), subplot(2,3,5), imshow(imgG),title('Imagem Banda G');
figure(1), subplot(2,3,6), imshow(imgB),title('Imagem Banda B');
