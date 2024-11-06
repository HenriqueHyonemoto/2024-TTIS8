clear all;
clc;

pkg load image;
pkg load signal;

img = imread("Lena512.bmp");

#imgMat = rand(8,8);
#imgMat = img*255;
#imgMat = uint8(img);

#transformada cosseno
imgDct = dct2(img);
imgDctAlt = imgDct;

#alteração 4 pixeis canto superior esquerdo
for i=1:2
  for j=1:2
    imgDctAlt(i,j)=imgDctAlt(i,j)*2.5;
  endfor
endfor

#alteração 4 pixeis canto inferior direito
#for i=1:2
#  for j=1:2
#    imgDctAlt(end-2+i,end-2+j)=imgDctAlt(end-2+i,end-2+j)*2.5;
# endfor
# endfor

#inversa da transformada
imgAlt = idct2(imgDctAlt);
imgAlt = uint8(imgAlt);

#img original
figure(1),subplot(2,3,1),imshow(img);
#img original dominio da frequencia
figure(1),subplot(2,3,2),imshow(imgDct);
#img dctalt
figure(1),subplot(2,3,3),colormap(gray),image(imgDctAlt);
#img original dominio da frequencia
figure(1),subplot(2,3,4),imshow(imgAlt);

# digitar na janela de comandos para comparar a diferença entre as imagens: corr2(img, imgAlt)
