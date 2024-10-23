clear all;
clc;
pkg load image;

img = imread('lenaRGB128.png');

imgR = img(:,:,1);
imgG = img(:,:,2);
imgB = img(:,:,3);

mensagem1 = imread('128mensagem1.bmp');
mensagem2 = imread('128mensagem2.bmp');
mensagem3 = imread('128mensagem3.bmp');

#mensagem1=uint8(mens);
[M N] = size (imgR);

#pode-se inserir em somente um canal, se preferir

imgR_Mensagem=imgR;
for i=1:M
  for j=1:N
    imgR_Mensagem(i,j)=bitset (imgR (i,j), 1, mensagem1 (i,j));
  end
end

imgG_Mensagem = imgG;
for i = 1:M
    for j = 1:N
        imgG_Mensagem(i,j) = bitset(imgG(i,j), 1, mensagem2(i,j));
    end
end

imgB_Mensagem = imgB;
for i = 1:M
    for j = 1:N
        imgB_Mensagem(i,j) = bitset(imgB(i,j), 1, mensagem3(i,j));
    end
end


imgJunto = cat(3, imgR_Mensagem, imgG_Mensagem, imgB_Mensagem);

imwrite (imgJunto, 'marcadaAulaColorida2024.bmp');
subplot (3,3,2), imshow(img), title('Imagem Original');
subplot (3,3,4), imshow (mensagem1), title ('Mensagem1');
subplot (3,3,5), imshow (mensagem2), title ('Mensagem2');
subplot (3,3,6), imshow (mensagem3), title ('Mensagem3');
subplot (3,3,8), imshow (imgJunto), title ('Imagem com Mensagem');
