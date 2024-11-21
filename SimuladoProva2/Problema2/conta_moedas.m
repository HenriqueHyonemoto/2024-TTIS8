clc;
clear all;
pkg load image;

function conta_moedas = processarImagem(caminho_imagem)
    % Processa uma imagem para identificar objetos grandes (ex: moedas).
    % Args:
    %     caminho_imagem (str): Caminho para a imagem a ser processada.
    % Returns:
    %     conta_moedas (int): Número de objetos grandes detectados.

    % Carregar a imagem
    imgOriginal = imread(caminho_imagem);
    img = imgOriginal;

    % Converter para escala de cinza, se necessário
    if size(img, 3) == 3
        img = rgb2gray(img);
    end

    % Aplicar limiar binário na imagem
    [M, N] = size(img);
    for i = 1:M
        for j = 1:N
            if img(i, j) <= 50
                img(i, j) = 0;
            else
                img(i, j) = 255;
            end
        end
    end

    % Operação morfológica de fechamento
    se = strel('disk', 30, 0); % Elemento estrutural de disco com raio 35
    img_aberta = imerode(img, se);  % Erosão
    img_aberta = imdilate(img_aberta, se);  % Dilatação
    img = img_aberta;

    % Erosão adicional com um novo elemento estrutural
    se2 = strel('disk', 10, 0);
    img = imerode(img, se2);

    % Detectar objetos e rotulá-los
    [labeled_img, num_objects] = bwlabel(img);

    % Medir as propriedades dos objetos detectados
    stats = regionprops(labeled_img, 'Area', 'Centroid', 'BoundingBox');

    % Definir o raio mínimo para objetos grandes
    min_radius = 20; % Ajuste conforme necessário

    % Contar objetos grandes
    conta_moedas = 0;
    for k = 1:num_objects
        % Calcular o raio equivalente
        radius = sqrt(stats(k).Area / pi);

        % Verificar se o raio é suficiente
        if radius >= min_radius
            conta_moedas = conta_moedas + 1;
        end
    end

    % Exibir imagem com objetos detectados
    figure;
    imshow(labeled_img);
    title('Imagem com Objetos Detectados');

    % Adicionar o número de objetos grandes na imagem
    text(10, 10, sprintf('Número de Objetos: %d', conta_moedas), ...
        'Color', 'yellow', 'FontSize', 12, 'FontWeight', 'bold');
end

% Lista de imagens a serem processadas
imagens = {'moeda1.bmp', 'moeda2.bmp', 'moeda3.bmp', 'moeda4.bmp', 'moeda5.bmp', 'moeda6.bmp'};

% Processar cada imagem e exibir o resultado no prompt
for i = 1:length(imagens)
    imagem_atual = imagens{i};
    numero_de_objetos = processarImagem(imagem_atual);
    fprintf('Imagem "%s" -> %d moedas\n', imagem_atual, numero_de_objetos);
end

