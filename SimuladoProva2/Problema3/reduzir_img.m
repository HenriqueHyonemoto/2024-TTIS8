pkg load image;
clc;
clear all;


  % Nome da imagem de entrada
function comprime_img(placa, numero)
  % Lê a imagem da placa
  img = imread(placa);

  % Converte a imagem para escala de cinza
  if size(img, 3) == 3
    % Se a imagem estiver em RGB, converta para escala de cinza
    img = rgb2gray(img);
  end

  img = im2bw(img);

  % Gera um nome de arquivo dinâmico com a numeração
  nome_arquivo = sprintf('img%d_comprimida.jpg', numero);

  % Salva a imagem comprimida com o nome gerado
  imwrite(img, nome_arquivo, 'quality', 1);

  % Exibe a imagem comprimida
  imshow(img);
end

% Chama a função para várias placas, passando o número para o nome do arquivo
comprime_img("placa1.bmp", 1);
comprime_img("placa2.bmp", 2);
comprime_img("placa3.bmp", 3);
comprime_img("placa4.bmp", 4);
comprime_img("placa5.bmp", 5);




