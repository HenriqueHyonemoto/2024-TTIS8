pkg load image;
clc;

imgA = imread('ImagemA.bmp');
imgB = imread('ImagemB.bmp');
imgC = imread('ImagemC.bmp');

imgEdt = imgA;

[Xb,Xn]= size(imgB);

for i=1:Xb
  for j = 1:Xn
    imgEdt(end-Xb+i, j) = imgB(i, j); #também pode se verificar o tamanho das imagens e realizar o calculo com os valores.
end
end

[Xc,Yc]= size(imgC);

for i=1:Xc
  for j = 1:Yc
    imgEdt(end-Xc+i, end-Yc+j) = imgC(i, j); % Ajusta a posição para o canto inferior
end
end


figure(1),subplot(1,4,1),imshow(imgA), title ("Imagem A"); #dentro dele subplot(1,3,1), significa que tem 1 LINHA dividida em 3 COLUNAS, o ultimo numero é a posição do quadrado (1º POSIÇÃO)
figure(1),subplot(1,4,2),imshow(imgB), title ("Imagem B");
figure(1),subplot(1,4,3),imshow(imgC), title ("Imagem C");
figure(1),subplot(1,4,4),imshow(imgEdt), title ("Imagem Resultante");
imwrite(imgEdt, 'lenaif.bmp'); #função pra salvar imagem no PC
