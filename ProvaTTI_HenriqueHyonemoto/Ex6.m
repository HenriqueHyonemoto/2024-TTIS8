a=[
191,122,98 ,174;
201,22 ,98 ,220;
200,23 ,228,23;
110,18 ,250,110
];

b=[
1,0,1,1;
0,1,1,0;
1,1,1,0;
0,0,1,1
];

[Am,An] = size(a);
[Bm,Bn] = size(b);

for i = 1:Am
  for j =1:An
    c(i,j)=bitset(a(i,j),1,b(i,j));
  endfor
end

d = bitget(c,1);

c
d
