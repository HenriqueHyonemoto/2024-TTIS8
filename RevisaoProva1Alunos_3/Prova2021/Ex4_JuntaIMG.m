pkg load image;
clc;

imgA = imread("ImagemA.bmp");
imgB = imread("ImagemB.bmp");
imgC = imread("ImagemC.bmp");

imgResultante = imgA;

[Bx,By]=size(imgB);
[Cx,Cy]=size(imgC);

for i = 1:Bx
  for j = 1:By
    imgResultante(i,end-By+j)=imgB(i,j);
  end
end

for i = 1:Cx
  for j = 1:Cy
    imgResultante(end-Cx+i,end-Cy+j)=imgC(i,j);
  end
end

figure(1),subplot(1,4,1),imshow(imgA),title('Imagem A');
figure(1),subplot(1,4,2),imshow(imgB),title('Imagem B');
figure(1),subplot(1,4,3),imshow(imgC),title('Imagem C');
figure(1),subplot(1,4,4),imshow(imgResultante),title('Imagem Resultante');
