pkg load image;
clc;

imgRGB = imread('Beethoven.jpg');

imgR = imgRGB(:,:,1);
imgG = imgRGB(:,:,2);
imgB = imgRGB(:,:,3);

imgRclara = imgR + 100;
imgGclara = imgG + 100;
imgBclara = imgB + 100;
imgRGBclara = cat(3, imgRclara, imgGclara, imgBclara);

imgRGB1 = cat(3, imgR, imgG, imgB);

figure(1), subplot(3,4,1), imshow(imgRGB), title('imgRGB');
figure(1), subplot(3,4,2), imshow(imgR), title('imgR');
figure(1), subplot(3,4,3), imshow(imgG), title('imgG');
figure(1), subplot(3,4,4), imshow(imgB), title('imgB');


figure(1), subplot(3,4,5), imshow(imgRclara), title('imgRclara');
figure(1), subplot(3,4,6), imshow(imgGclara), title('imgGclara');
figure(1), subplot(3,4,7), imshow(imgBclara), title('imgbclara');
figure(1), subplot(3,4,8), imshow(imgRGBclara), title('imgRGBclara');

imgRGBr = cat(3, imgRclara, imgG, imgB);
imgRGBg = cat(3, imgR, imgGclara, imgB);
imgRGBb = cat(3, imgR, imgG, imgBclara);

figure(1), subplot(3,4,9), imshow(imgRGBr), title('imgRGBr');
figure(1), subplot(3,4,10), imshow(imgRGBg), title('imgRGBg');
figure(1), subplot(3,4,11), imshow(imgRGBb), title('imgRGBb');


figure(2), title('Imagem RGB Nova'), imshow(imgRGB1);

