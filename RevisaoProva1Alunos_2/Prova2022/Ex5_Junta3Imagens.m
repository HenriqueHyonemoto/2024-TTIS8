pkg load image;
clc;

imgA = imread("ImagemA.bmp");
imgB = imread("ImagemB.bmp");
imgC = imread("ImagemC.bmp");

imgFinal=imgA;

[Bx,By]=size(imgB);
[Cx,Cy]=size(imgC);

for i = 1:Bx
  for j = 1:By
    imgFinal(end-Bx+i,j)=imgB(i,j);
  endfor
end

for i = 1:Cx
  for j = 1:Cy
    imgFinal(end-Cx+i,end-Cy+j)=imgC(i,j);
  endfor
end

figure(1),subplot(1,4,1),imshow(imgA);
figure(1),subplot(1,4,2),imshow(imgB);
figure(1),subplot(1,4,3),imshow(imgC);
figure(1),subplot(1,4,4),imshow(imgFinal);
