pkg load image;
clc;

img = imread ('marcadaAulaColorida2024.bmp'); #executar esteganografia1
[M N] = size(imgMsg(:,:,1));

#mensagem=uint8(mens);


imgMensagem = imgR;
for i=1:M
  for j = 1:N
    msg(i,j)=bitget(imgMsg(i,j),1);
  end
end

msg = 255*msg;

figure(1),subplot(2,2,1),imshow(imgMsg), title('Imagem com mensagem');
figure(1),subplot(2,2,3),imshow(msg), title('Mensagem');

