pkg load image;
clc;

img = imread ('Lena512MSG.bmp');
[M N] = size(img);

imgMsg = img;
for i=1:M
  for j = 1:N
    msg(i,j)=bitget(imgMsg(i,j),1);
  end
end

msg = 255*msg;

figure(1),subplot(2,1,1),imshow(imgMsg), title('Imagem com mensagem escondida');
figure(1),subplot(2,1,2),imshow(msg), title('Mensagem Recuperada');

