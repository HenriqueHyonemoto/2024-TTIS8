pkg load image;
clc;

imgA = imread("ImagemA.bmp");
imgB = imread("ImagemB.bmp");
imgC = imread("ImagemC.bmp");



[Bx,By]=size(imgB);
imagemFinal = imgA;
for i = 1:Bx
  for j = 1:By
    imgFinal(end-Bx+i,j)=imgB(i,j);
  endfor
end

[Cx,Cy]=size(imgC);

for i = 1:Cx
  for j = 1:Cy
    imgFinal(end-Bx+i,end-By+j)=imgC(i,j);
  endfor
end

figure(1),subplot(2,3,1),imshow(imgA);
figure(1),subplot(2,3,2),imshow(imgB);
figure(1),subplot(2,3,3),imshow(imgC);

figure(1),subplot(2,3,5),imshow(imgFinal);




