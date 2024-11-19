pkg load image;  % Carregar o pacote de imagem no Octave

% Carregar a imagem
img = imread('moeda6.bmp');

% Converter para escala de cinza, se necessário
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Aplicar limiarização para binarizar a imagem
img_bin = im2bw(img);

% Definir elemento estruturante para a abertura
se = strel('disk', 8,0);  % Elemento estruturante circular com raio 5

% Aplicar a operação de abertura
img_closed = imclose(img_bin, se);

% Definir elemento estruturante para a abertura
se2 = strel('disk', 34,0);  % Elemento estruturante circular com raio 5

% Aplicar a operação de abertura
img_opened = imopen(img_closed, se2);


% Identificar os componentes conectados na imagem processada
[labels, num_objects] = bwlabel(img_opened);

% Inicializar contador de objetos redondos
circular_objects = 0;

% Medir propriedades dos objetos
stats = regionprops(labels, 'Area', 'Perimeter', 'Eccentricity');

% Determinar circularidade
for i = 1:num_objects
    area = stats(i).Area;
    perimeter = stats(i).Perimeter;
    eccentricity = stats(i).Eccentricity;

    % Circularidade: (4 * pi * Area) / Perimeter^2
    circularity = (4 * pi * area) / (perimeter^2);

    % Considerar objetos como "redondos" se a circularidade for alta e a excentricidade for baixa
    if circularity >= 0.6
        circular_objects += 1;
    end
end

% Mostrar resultados
figure;
imshow(img_opened);
title(['Objetos redondos detectados após abertura: ', num2str(circular_objects)]);
disp(['Número total de objetos redondos após abertura: ', num2str(circular_objects)]);

