clear all;
clc;

imgMsg = imread('marcadaAulaColorida2024Modificada.bmp');

imgR = imgMsg(:,:,1);
imgG = imgMsg(:,:,2);
imgB = imgMsg(:,:,3);

[M, N] = size(imgR);

msg1 = zeros(M, N);


for i = 1:M
    for j = 1:N
        msg1(i,j) = bitget(imgR(i,j), 1);
    end
end

for i = 1:M
    for j = 1:N
        msg2(i,j) = bitget(imgG(i,j), 1);
    end
end

for i = 1:M
    for j = 1:N
        msg3(i,j) = bitget(imgB(i,j), 1);
    end
end

msg1 = uint8(255 * msg1);

subplot(2,3,2), imshow(imgMsg), title('Imagem com Mensagem');
subplot(2,3,4), imshow(msg1), title('Mensagem 1');
subplot(2,3,5), imshow(msg2), title('Mensagem 2');
subplot(2,3,6), imshow(msg3), title('Mensagem 3');

