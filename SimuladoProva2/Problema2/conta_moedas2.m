pkg load image;  % Carregar o pacote de imagem no Octave

% Carregar a imagem
img = imread('moeda4.bmp');

if size(img, 3) == 3
    img = rgb2gray(img);
end

[M, N] = size(img);

for i = 1:M
  for j = 1:N
    if img(i,j) <= 50
      img(i,j) = 0;
    else
      img(i,j) = 255;
    endif
  endfor
endfor

% Definir um elemento estrutural para a operação morfológica
se = strel('disk', 35,0);  % Elemento estrutural de disco com raio de 5 pixels

% Realizar o fechamento morfológico (dilatação seguida de erosão)
img_aberta = imerode(img, se);  % Erosão
img_aberta = imdilate(img_aberta, se);  % Dilatação

img = img_aberta;

% Detectar objetos e rotulá-los
[labeled_img, num_objects] = bwlabel(img);

% Medir as propriedades dos objetos detectados
stats = regionprops(labeled_img, 'Area', 'Centroid', 'BoundingBox');

% Raio mínimo dos objetos para serem considerados grandes (em pixels)
min_radius = 20;  % Defina o raio mínimo desejado

% Contar objetos grandes
large_objects_count = 0;

for k = 1:num_objects
  % Calcular o raio do objeto como a raiz quadrada da área do círculo equivalente
  radius = sqrt(stats(k).Area / pi);

  % Verificar se o raio do objeto é maior ou igual ao raio mínimo
  if radius >= min_radius
    large_objects_count = large_objects_count + 1;
  endif
endfor

% Exibir o número de objetos grandes na imagem
figure;
imshow(labeled_img);
title('Imagem com Objetos Detectados');

% Adicionar o número de objetos grandes na imagem
text(10, 10, sprintf('Número de Moedas: %d', large_objects_count), ...
     'Color', 'yellow', 'FontSize', 12, 'FontWeight', 'bold');




