pkg load image;
clc;

imgA = imread("Lena512.bmp");
imgB = imread("ImagemB.bmp");
imgC = imread("ImagemC.bmp");

imgFinal=imgA;

[Bx,By] = size(imgB);

for i = 1:Bx
  for j = 1:By
    imgFinal(end-Bx+i,j) = imgC(i,j);
  end
end

[Cx,Cy] = size(imgC);

for i = 1:Cx
  for j = 1:Cy
    imgFinal(i,end-Cy+j) = imgC(i,j);
  end
end

figure(1),subplot(2,3,1),imshow(imgA);
figure(1),subplot(2,3,2),imshow(imgB);
figure(1),subplot(2,3,3),imshow(imgC);
figure(1),subplot(2,3,5),imshow(imgFinal);

