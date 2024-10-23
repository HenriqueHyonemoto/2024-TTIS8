clear all;
clc;

imgMsg = imread('informacao.bmp');

[M, N] = size(imgMsg);

msg1 = zeros(M, N);

for i = 1:M
    for j = 1:N
        msg1(i,j) = bitget(imgMsg(i,j), 1);
    end
end

msg1 = uint8(255 * msg1);

subplot(1,2,1), imshow(imgMsg), title('Imagem com Mensagem');
subplot(1,2,2), imshow(msg1), title('Mensagem 1');

