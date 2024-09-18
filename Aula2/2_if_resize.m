pkg load image;
clc;

imgIF = imread('C:\Users\Veterano\Documents\H_Topicos\Aula2\if.jpg');
imgIFG = rgb2gray(imgIf);
imgMenor = imresize(imgIFG, 0.7);

figure(1),imshow(imgIF);
figure(2),imshow(imgIFG);
figure(3),imshow(imgMenor);





