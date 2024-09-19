pkg load image;
clc;

imgLena = imread('lena512.bmp');
imgIf = imread('if.jpg');

imgIfG = rgb2gray(imgIf);

[M, N] = size(imgIfG);  # pega o numero de linhas ecolunas do if
[nLinhas, nColunas] = size(imgLena);  # pega o numero de linhas ecolunas da lena

imgEdt = imgLena;  # copia da img da lena

#calcula a posição inicial para inserir a imagem do if na lena
sLinha = nLinhas - M + 1;  # posição de início na linha (canto inferior)
sColuna = nColunas - N + 1;  # posição de início na coluna (canto direito)

for i = 1:M  # percorre as linhas do if
  for j = 1:N # percorre as colunas do if
    imgEdt(sLinha + i - 1, sColuna + j - 1) = imgIfG(i, j);  % Copia o if e coloca na lena
  end
end


figure;
subplot(2, 3, 2), imshow(imgLena);
subplot(2, 3, 4), imshow(imgIf);
subplot(2, 3, 6), imshow(imgEdt);

