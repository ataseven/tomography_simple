function [dummy]=dene(input,adimsayi,tsample)

A=double(input);
C=uint8(input);

[row,column]=size(A);
tsize=max([row column]);
tsize=tsize*1.415;
tsize=ceil(tsize);

a=pi/adimsayi;
theta=a;
t=-tsize/2;
b=tsize/tsample;
k=1;
y=zeros(tsample,column,adimsayi);
while theta<pi
   i=1;
   t=tsize/tsample;
   while t<=tsize
      x=(-column+1)/2;
      j=1;
      while x<=(column+1)/2  
         y(i,j,k)=-x*cot(theta)+t/sin(theta)-tsize/2/cos(pi/2-theta);
         j=j+1;
         x=x+1;
      end
      i=i+1;
      t=t+b;
   end
   k=k+1;
   theta=theta+a;
end

sonuc=zeros(adimsayi,tsample);

for k=1:(adimsayi-1)
   for i=1:tsample
      toplam=0;
      for j=1:column
         if abs(y(i,j,k))<=(row-1)/2
            toplam=toplam+A(ceil((row+1)/2-y(i,j,k)),j);
         end
      end
      sonuc(k,i)=toplam;
   end
end

m=max(sonuc);
mm=max(m);
for k=1:adimsayi
  for i=1:tsample
     sonuc(k,i)=sonuc(k,i)*255/mm;
  end
end
im=zeros(row,column);
for k=1:adimsayi
  for i=1:tsample
      for j=1:column
         if abs(y(i,j,k))<=(row-1)/2
            im(ceil((row+1)/2-y(i,j,k)),j)=im(ceil((row+1)/2-y(i,j,k)),j)+sonuc(k,i);
         end
      end
   end
end
m=max(im);
mm=max(m);
for k=1:row
   for i=1:column
     im(k,i)=im(k,i)*255/mm;
  end
end
im=uint8(im);
subplot(1,2,1),imshow(im),title('Back Projected image');
grid on;
subplot(1,2,2),imshow(C),title('Original image');
zoom on;