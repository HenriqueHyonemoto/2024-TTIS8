pkg load image;
clc;

imgA = ones(120,120);
imgA = uint8(imgA);
imgA = imgA*0;

imgB = ones(60,60);
imgB = uint8(imgB);
imgB = imgB*120;

imgC = ones(20,20);
imgC = uint8(imgC);
imgC = imgC*220;


imgFinal = imgA;

[Bx,By]=size(imgB);
[Cx,Cy]=size(imgC);

for i = 1:60
  for j = 1:60
    imgFinal(end-60+i,j)=imgB(i,j);
  endfor
end

for i = 1:20
  for j = 1:20
    imgFinal(i,end-20+j)=imgC(i,j);
  endfor
end


figure(1),subplot(1,4,1),imshow(imgA),title('Imagem A');
figure(1),subplot(1,4,2),imshow(imgB),title('Imagem B');
figure(1),subplot(1,4,3),imshow(imgC),title('Imagem C');
figure(1),subplot(1,4,4),imshow(imgFinal),title('Imagem Junta');


