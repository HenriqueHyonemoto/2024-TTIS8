clc;
clear all;
pkg load image;

function imagem_binaria = converter_para_binario(imagem)
  % Verificar se a imagem é colorida (RGB)
  if size(imagem, 3) == 3
    % Converter para escala de cinza antes de binarizar
    imagem = rgb2gray(imagem);
  end

  % Aplicar a função im2bw para converter a imagem em binário
  imagem_binaria = im2bw(imagem);

  % Exibir a imagem binária
  imshow(imagem_binaria);
end

converter_para_binario(imread("moeda6.bmp");  % Chamar a função

