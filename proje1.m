function fig = proje1()

k = MENU('Choose your option for the object to be projected and enter the parameters from the command line;  ','Circle','Square','Elipse','Rectangle','Ring','<- Back');

if k==1
   daire=imread('daire.jpg');
   daire=rgb2gray(daire);
   tsayi=input('Number of samples for t:  ');
   adimsay=input('Number of steps for theta:  ');
   proj1(daire,adimsay,tsayi)
end

if k==2
   square=imread('square.jpg');
   square=rgb2gray(square);   
   tsayi=input('Number of samples for t:  ');
   adimsay=input('Number of steps for theta:  ');
   proj1(square,adimsay,tsayi)
end

if k==3
   elipse=imread('elipse.jpg');
   elipse=rgb2gray(elipse);   
   tsayi=input('Number of samples for t:  ');
   adimsay=input('Number of steps for theta:  ');
   proj1(elipse,adimsay,tsayi)
end

if k==4
   rectangle=imread('rectangle.jpg');
   rectangle=rgb2gray(rectangle);   
   tsayi=input('Number of samples for t:  ');
   adimsay=input('Number of steps for theta:  ');
   proj1(rectangle,adimsay,tsayi)
end
if k==5
   ring=imread('ring.jpg');
   ring=rgb2gray(ring);   
   tsayi=input('Number of samples for t:  ');
   adimsay=input('Number of steps for theta:  ');
   proj1(ring,adimsay,tsayi)
end
if k==6
    proje
end