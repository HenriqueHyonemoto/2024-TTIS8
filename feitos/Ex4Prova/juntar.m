pkg load image;
clc;

imgA = imread("ImgA.bmp");
imgB = imread("ImgB.bmp");
imgC = imread("ImgC.bmp");

imgResultante = imgA;

[Bx,By]=size(imgB);
[Cx,Cy]=size(imgC);

for i = 1:Bx
  for j = 1:By
    imgResultante(end-By+i,j)=imgB(i,j);
  end
end

for i = 1:Cx
  for j = 1:Cy
    imgResultante(i,end-Cy+j)=imgC(i,j);
  end
end

figure(1),subplot(1,4,1),imshow(imgA),title('ImgA');
figure(1),subplot(1,4,2),imshow(imgB),title('ImgB');
figure(1),subplot(1,4,3),imshow(imgC),title('ImgC');
figure(1),subplot(1,4,4),imshow(imgResultante),title('Imagem Soma');
